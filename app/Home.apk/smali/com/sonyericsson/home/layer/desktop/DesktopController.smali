.class public Lcom/sonyericsson/home/layer/desktop/DesktopController;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Lcom/sonyericsson/home/widget/OnWidgetConfigured;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;,
        Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;,
        Lcom/sonyericsson/home/layer/desktop/DesktopController$State;
    }
.end annotation


# static fields
.field private static final CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri; = null

.field private static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field private static final REGISTER_WIDGET_DELAY_MILLIS:J = 0x3e8L

.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "desktop"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1

.field static final TAG:Ljava/lang/String; = "DesktopController"

.field private static final VELOCITY_THRESHOLD:I = 0x258


# instance fields
.field private closeAnim:Landroid/view/animation/Animation;

.field private mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

.field private mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAvailabilityReceiver:Lcom/sonyericsson/home/AvailabilityReceiver;

.field private mBindSyncCompletedCallback:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCreatingFolder:Z

.field private mDesktopCustomization:Lcom/sonyericsson/home/customization/DesktopCustomization;

.field private final mDesktopHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

.field private mDesktopView:Landroid/view/ViewGroup;

.field private mDroppedAtItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

.field private mFirstHint:Z

.field private mGrid:Lcom/sonyericsson/grid/Grid;

.field private final mGridSize:Lcom/sonyericsson/grid/GridSize;

.field private mHintDesktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

.field private mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

.field private mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field private mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

.field private final mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

.field private mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

.field private final mMinPaneSwitchDuration:I

.field private mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

.field private mNudgeShow:Landroid/view/animation/Animation;

.field private final mNumberOfPanes:I

.field private final mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

.field private mOnSyncCompletedCallbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

.field private final mPaneSwitchMargin:I

.field private mPaneView:Lcom/sonyericsson/paneview/PaneView;

.field private mPaneViewInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

.field private mPaneViewItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

.field private mPaneViewScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

.field private mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

.field protected mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

.field private mRegisterWidgetHandler:Landroid/os/Handler;

.field private mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

.field private mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

.field private mRightNudge:Lcom/sonyericsson/home/layer/HintView;

.field private mSavedHintRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

.field private mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

.field private mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

.field private mSyncable:Lcom/sonyericsson/home/layer/LayerController$Syncable;

.field private mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

.field private final mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

.field private final mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

.field private mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

.field private openAnim:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const-string v0, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.home/custom_settings_desktop.xml"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/AvailabilityReceiver;)V
    .locals 4
    .parameter "context"
    .parameter "packageLoader"
    .parameter "infoGroupManager"
    .parameter "availabilityReceiver"

    .prologue
    const/4 v2, 0x1

    const/high16 v3, 0x4020

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    sget-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    .line 193
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    .line 234
    iput-boolean v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstHint:Z

    .line 237
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$1;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    .line 678
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$2;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSyncable:Lcom/sonyericsson/home/layer/LayerController$Syncable;

    .line 1306
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRegisterWidgetHandler:Landroid/os/Handler;

    .line 1319
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 1390
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1412
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 1434
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 1711
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    .line 1755
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    .line 1771
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$15;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$15;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    .line 1790
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$16;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$16;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    .line 1811
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$17;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$17;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    .line 703
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    .line 704
    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 705
    iput-object p3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 706
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 707
    iput-object p4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAvailabilityReceiver:Lcom/sonyericsson/home/AvailabilityReceiver;

    .line 709
    new-instance v0, Lcom/sonyericsson/home/layer/HintInfo;

    invoke-direct {v0, p1}, Lcom/sonyericsson/home/layer/HintInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    .line 710
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMargin:I

    .line 712
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mMinPaneSwitchDuration:I

    .line 715
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNudgeShow:Landroid/view/animation/Animation;

    .line 718
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNudgeShow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 721
    new-instance v0, Lcom/sonyericsson/grid/GridSize;

    invoke-direct {v0}, Lcom/sonyericsson/grid/GridSize;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    .line 722
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    .line 723
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/grid/GridSize;->cols:I

    .line 725
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    .line 727
    const v0, 0x7f040002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->closeAnim:Landroid/view/animation/Animation;

    .line 728
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->closeAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 729
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->closeAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 745
    const v0, 0x7f040003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->openAnim:Landroid/view/animation/Animation;

    .line 746
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->openAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 747
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->openAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$4;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 762
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 765
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const-string v1, "desktop"

    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)V

    .line 825
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAvailabilityReceiver:Lcom/sonyericsson/home/AvailabilityReceiver;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/AvailabilityReceiver;->registerAvailabilityChangeListener(Lcom/sonyericsson/home/AvailabilityReceiver$AvailabilityChangeListener;)V

    .line 840
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->writeToStorage(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/PaneIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onOpenEnd()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/grid/GridSize;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/appwidget/AppWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/appwidget/AppWidgetManager;)Landroid/appwidget/AppWidgetManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/appwidget/AppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/appwidget/AppWidgetHost;)Landroid/appwidget/AppWidgetHost;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/customization/DesktopCustomization;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopCustomization:Lcom/sonyericsson/home/customization/DesktopCustomization;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/customization/DesktopCustomization;)Lcom/sonyericsson/home/customization/DesktopCustomization;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopCustomization:Lcom/sonyericsson/home/customization/DesktopCustomization;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/InfoGroupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$2700()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopController$State;)Lcom/sonyericsson/home/layer/desktop/DesktopController$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/AdvWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/ResourceLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/WidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/grid/Grid;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->doRegisterWidget(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->performRegister(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerController$Syncable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSyncable:Lcom/sonyericsson/home/layer/LayerController$Syncable;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView$ItemViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/transfer/TransferSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/transfer/TransferHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mMinPaneSwitchDuration:I

    return v0
.end method

.method static synthetic access$4500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstHint:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstHint:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHintDesktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHintDesktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/sonyericsson/home/layer/desktop/DesktopController;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showNudgeIfNeeded(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideNudge()V

    return-void
.end method

.method static synthetic access$4900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/HintInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMargin:I

    return v0
.end method

.method static synthetic access$5100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDroppedAtItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDroppedAtItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mCreatingFolder:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/app/WallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedHintRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->finishCreateFolder()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    return-object v0
.end method

.method private addInfo(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Point;)Z
    .locals 13
    .parameter "info"
    .parameter "point"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1879
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v10, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-eq v9, v10, :cond_0

    .line 1880
    const-string v9, "DesktopController"

    const-string v10, "Add info called before controller initialized."

    invoke-static {v9, v10}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v11

    .line 1930
    :goto_0
    return v9

    .line 1886
    :cond_0
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v9}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v5

    .line 1888
    .local v5, pane:I
    instance-of v9, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v9, :cond_4

    .line 1889
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/WidgetInfo;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v1

    .line 1890
    .local v1, appWidgetId:I
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v10, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetWidth(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/grid/Grid;->getColSpan(I)I

    move-result v7

    .line 1891
    .local v7, spanX:I
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v10, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetHeight(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/grid/Grid;->getRowSpan(I)I

    move-result v8

    .line 1901
    .end local v1           #appWidgetId:I
    .local v8, spanY:I
    :goto_1
    const/4 v4, 0x0

    .line 1904
    .local v4, itemAdded:Z
    if-nez v4, :cond_1

    if-eqz p2, :cond_1

    .line 1905
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 1906
    .local v2, desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    new-instance v3, Lcom/sonyericsson/grid/GridRect;

    invoke-direct {v3}, Lcom/sonyericsson/grid/GridRect;-><init>()V

    .line 1907
    .local v3, gridRect:Lcom/sonyericsson/grid/GridRect;
    iput v7, v3, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    .line 1908
    iput v8, v3, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    .line 1909
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget v10, p2, Landroid/graphics/Point;->x:I

    iget v11, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10, v11, v3}, Lcom/sonyericsson/grid/Grid;->centerGridRect(IILcom/sonyericsson/grid/GridRect;)V

    .line 1910
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v9, v3, v5, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getClosestEmptyLocation(Lcom/sonyericsson/grid/GridRect;ILcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1911
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    new-instance v10, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v10, p1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    invoke-virtual {v9, v10}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z

    move-result v4

    .line 1918
    .end local v2           #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .end local v3           #gridRect:Lcom/sonyericsson/grid/GridRect;
    :cond_1
    if-nez v4, :cond_2

    .line 1919
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 1920
    .restart local v2       #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v9, v7, v8, v5, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getFirstEmptyLocation(IIILcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1921
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    new-instance v10, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v10, p1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    invoke-virtual {v9, v10}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z

    move-result v4

    .line 1925
    .end local v2           #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    :cond_2
    if-eqz v4, :cond_3

    .line 1926
    invoke-direct {p0, v12}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->writeToStorage(Z)V

    .line 1927
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v9}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    :cond_3
    move v9, v4

    .line 1930
    goto :goto_0

    .line 1892
    .end local v4           #itemAdded:Z
    .end local v7           #spanX:I
    .end local v8           #spanY:I
    :cond_4
    instance-of v9, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v9, :cond_5

    .line 1893
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    move-object v9, v0

    invoke-virtual {v10, v9}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getSpanXY(Lcom/sonyericsson/home/data/AdvWidgetInfo;)[I

    move-result-object v6

    .line 1894
    .local v6, span:[I
    aget v7, v6, v11

    .line 1895
    .restart local v7       #spanX:I
    aget v8, v6, v12

    .line 1896
    .restart local v8       #spanY:I
    goto :goto_1

    .line 1897
    .end local v6           #span:[I
    .end local v7           #spanX:I
    .end local v8           #spanY:I
    :cond_5
    const/4 v7, 0x1

    .line 1898
    .restart local v7       #spanX:I
    const/4 v8, 0x1

    .restart local v8       #spanY:I
    goto :goto_1
.end method

.method private createDynamics()Lcom/sonyericsson/util/SpringDynamics;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1830
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1831
    .local v2, stiffness:Landroid/util/TypedValue;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1832
    .local v0, damping:Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0b

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1833
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1834
    new-instance v1, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v1}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    .line 1835
    .local v1, dynamics:Lcom/sonyericsson/util/SpringDynamics;
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 1836
    return-object v1
.end method

.method private doRegisterWidget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "name"
    .parameter "packageName"

    .prologue
    .line 2031
    iget-object v6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v6}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getStorableModel()Ljava/util/ArrayList;

    move-result-object v3

    .line 2032
    .local v3, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-direct {p0, v3, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->findWidget(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    .line 2033
    .local v0, desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-eqz v0, :cond_2

    .line 2035
    const/4 v5, 0x1

    .line 2038
    .local v5, removeModelItem:Z
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->registerAppWidget(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2043
    .local v2, id:I
    :goto_0
    if-eqz v2, :cond_0

    .line 2045
    new-instance v4, Lcom/sonyericsson/home/data/WidgetInfo;

    invoke-direct {v4, v2, p1, p2}, Lcom/sonyericsson/home/data/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2046
    .local v4, newWidgetInfo:Lcom/sonyericsson/home/data/WidgetInfo;
    invoke-virtual {v0, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->setInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 2047
    const/4 v5, 0x0

    .line 2048
    iget-object v6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    if-eqz v6, :cond_0

    .line 2049
    iget-object v6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v6}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 2054
    .end local v4           #newWidgetInfo:Lcom/sonyericsson/home/data/WidgetInfo;
    :cond_0
    if-eqz v5, :cond_1

    .line 2055
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2056
    iget-object v6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    if-eqz v6, :cond_1

    .line 2057
    iget-object v6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v6}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 2060
    :cond_1
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->writeToStorage(Z)V

    .line 2063
    .end local v2           #id:I
    .end local v5           #removeModelItem:Z
    :cond_2
    return-void

    .line 2039
    .restart local v5       #removeModelItem:Z
    :catch_0
    move-exception v1

    .line 2040
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v6, "DesktopController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem adding pending widget: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2041
    const/4 v2, 0x0

    .restart local v2       #id:I
    goto :goto_0
.end method

.method private findWidget(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 4
    .parameter
    .parameter "name"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;"
        }
    .end annotation

    .prologue
    .line 1377
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 1378
    .local v2, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    instance-of v3, v3, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v3, :cond_0

    .line 1379
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/WidgetInfo;

    .line 1380
    .local v1, info:Lcom/sonyericsson/home/data/WidgetInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/WidgetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/WidgetInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 1386
    .end local v1           #info:Lcom/sonyericsson/home/data/WidgetInfo;
    .end local v2           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private finishCreateFolder()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2018
    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDroppedAtItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 2019
    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 2020
    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedHintRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 2021
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mCreatingFolder:Z

    .line 2022
    return-void
.end method

.method private hideNudge()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1866
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 1867
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintView;->clearAnimation()V

    .line 1868
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 1869
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintView;->clearAnimation()V

    .line 1870
    return-void
.end method

.method private onOpenEnd()V
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onDesktopShown()V

    .line 847
    :cond_0
    return-void
.end method

.method private performRegister(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "packageName"

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRegisterWidgetHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1316
    return-void
.end method

.method private registerAppWidget(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "name"
    .parameter "packageName"

    .prologue
    .line 1369
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    .local v0, cmp:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 1371
    .local v1, id:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 1372
    return v1
.end method

.method private removeOnSyncCompletedCallback(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1011
    :cond_0
    return-void
.end method

.method private setupPaneIndicator(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "desktopView"

    .prologue
    const/4 v4, 0x0

    .line 1840
    const v1, 0x7f0c000a

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/PaneIndicator;

    iput-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    .line 1841
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1842
    .local v0, indicatorSize:Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1843
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    invoke-virtual {v1, v2, v4, v4}, Lcom/sonyericsson/home/layer/PaneIndicator;->setAppearance(FLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1844
    return-void
.end method

.method private showNudgeIfNeeded(I)Z
    .locals 7
    .parameter "x"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1847
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    .line 1848
    .local v0, currentPane:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getNumberOfPanes()I

    move-result v1

    .line 1849
    .local v1, maxPane:I
    iget v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMargin:I

    mul-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_1

    if-lez v0, :cond_1

    .line 1850
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/HintView;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1851
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 1852
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNudgeShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/HintView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    move v2, v5

    .line 1862
    :goto_0
    return v2

    .line 1855
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getRight()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_3

    sub-int v2, v1, v5

    if-ge v0, v2, :cond_3

    .line 1856
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/HintView;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 1857
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 1858
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNudgeShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/HintView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    move v2, v5

    .line 1860
    goto :goto_0

    :cond_3
    move v2, v4

    .line 1862
    goto :goto_0
.end method

.method private writeToStorage(Z)V
    .locals 4
    .parameter "async"

    .prologue
    .line 1934
    new-instance v1, Lcom/sonyericsson/storage/Root;

    const-string v2, "desktop"

    invoke-direct {v1, v2}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 1935
    .local v1, root:Lcom/sonyericsson/storage/Root;
    const-string v2, "version"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 1936
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getStorableModel()Ljava/util/ArrayList;

    move-result-object v0

    .line 1937
    .local v0, model:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 1938
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, p1}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V

    .line 1939
    return-void
.end method


# virtual methods
.method public addActivity(Landroid/graphics/Point;Lcom/sonyericsson/home/data/ActivityInfo;)Z
    .locals 1
    .parameter "location"
    .parameter "activityInfo"

    .prologue
    .line 1154
    new-instance v0, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v0, p2}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Lcom/sonyericsson/home/data/ActivityInfo;)V

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public addAdvWidget(Ljava/lang/String;Landroid/graphics/Point;)Z
    .locals 3
    .parameter "packageName"
    .parameter "location"

    .prologue
    .line 1075
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v2, p1, p2, p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->addNewWidget(Ljava/lang/String;Landroid/graphics/Point;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)Lcom/sonyericsson/home/data/AdvWidgetInfo;

    move-result-object v0

    .line 1076
    .local v0, info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    if-eqz v0, :cond_1

    .line 1077
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Point;)Z

    move-result v1

    .line 1078
    .local v1, ret:Z
    if-nez v1, :cond_0

    .line 1080
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanup(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    :cond_0
    move v2, v1

    .line 1087
    .end local v1           #ret:Z
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public addFolder(Landroid/graphics/Point;Ljava/lang/String;I)Z
    .locals 1
    .parameter "location"
    .parameter "folderName"
    .parameter "icon"

    .prologue
    .line 1139
    new-instance v0, Lcom/sonyericsson/home/data/InfoGroup;

    invoke-direct {v0, p2, p3}, Lcom/sonyericsson/home/data/InfoGroup;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public addOnSyncCompletedCallback(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-eq v0, v1, :cond_0

    .line 1001
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1005
    :goto_0
    return-void

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addShortcut(Landroid/os/Bundle;Landroid/graphics/Point;)Z
    .locals 5
    .parameter "shortcutData"
    .parameter "location"

    .prologue
    const/4 v4, 0x1

    .line 1166
    invoke-static {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->create(Landroid/os/Bundle;)Lcom/sonyericsson/home/data/ShortcutInfo;

    move-result-object v1

    .line 1168
    .local v1, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    if-eqz v1, :cond_1

    .line 1169
    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1170
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getShortcutBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1171
    .local v0, shortcutBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1172
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v4}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 1175
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->add(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/graphics/Bitmap;)V

    move v2, v4

    .line 1180
    .end local v0           #shortcutBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addShortcutSync(Landroid/os/Bundle;)Z
    .locals 18
    .parameter "shortcutData"

    .prologue
    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    move-object v12, v0

    sget-object v13, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-ne v12, v13, :cond_0

    .line 1193
    new-instance v12, Ljava/lang/IllegalStateException;

    invoke-direct {v12}, Ljava/lang/IllegalStateException;-><init>()V

    throw v12

    .line 1196
    :cond_0
    const/4 v8, 0x0

    .line 1197
    .local v8, shortcutAdded:Z
    const-string v12, "duplicate"

    const/4 v13, 0x1

    move-object/from16 v0, p1

    move-object v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1199
    .local v6, duplicatesAllowed:Z
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->create(Landroid/os/Bundle;)Lcom/sonyericsson/home/data/ShortcutInfo;

    move-result-object v10

    .line 1201
    .local v10, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    if-eqz v10, :cond_5

    .line 1202
    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-object v12, v0

    invoke-virtual {v12, v10}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v12

    if-nez v12, :cond_7

    .line 1203
    :cond_1
    new-instance v5, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 1204
    .local v5, desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    new-instance v4, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v4, v10, v5}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 1205
    .local v4, desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object v12, v0

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getShortcutBitmap(Landroid/content/Context;Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1208
    .local v9, shortcutBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    move v12, v0

    div-int/lit8 v3, v12, 0x2

    .line 1209
    .local v3, currentPane:I
    const/4 v7, 0x0

    .line 1210
    .local v7, panesChecked:I
    const/4 v11, -0x1

    .line 1222
    .local v11, sign:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    move v12, v0

    if-ge v7, v12, :cond_4

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-object v12, v0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v3, v15}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getFirstEmptyLocation(IIILcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-object v12, v0

    invoke-virtual {v12, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z

    .line 1228
    if-eqz v9, :cond_2

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object v12, v0

    invoke-virtual {v10}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v9, v14}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 1232
    :cond_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->writeToStorage(Z)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    move-object v12, v0

    sget-object v13, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-ne v12, v13, :cond_3

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object v12, v0

    invoke-virtual {v12, v10, v9}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->add(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/graphics/Bitmap;)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1240
    :cond_3
    const/4 v8, 0x1

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x7f07001e

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v10}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 1252
    :cond_4
    if-nez v8, :cond_5

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object v12, v0

    const v13, 0x7f070018

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 1264
    .end local v3           #currentPane:I
    .end local v4           #desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v5           #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .end local v7           #panesChecked:I
    .end local v9           #shortcutBitmap:Landroid/graphics/Bitmap;
    .end local v11           #sign:I
    :cond_5
    :goto_1
    return v8

    .line 1247
    .restart local v3       #currentPane:I
    .restart local v4       #desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .restart local v5       #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .restart local v7       #panesChecked:I
    .restart local v9       #shortcutBitmap:Landroid/graphics/Bitmap;
    .restart local v11       #sign:I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 1248
    mul-int v12, v11, v7

    add-int/2addr v3, v12

    .line 1249
    neg-int v11, v11

    goto/16 :goto_0

    .line 1257
    .end local v3           #currentPane:I
    .end local v4           #desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v5           #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .end local v7           #panesChecked:I
    .end local v9           #shortcutBitmap:Landroid/graphics/Bitmap;
    .end local v11           #sign:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x7f070020

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v10}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public addWidget(ILandroid/graphics/Point;)Z
    .locals 2
    .parameter "id"
    .parameter "location"

    .prologue
    .line 1063
    new-instance v0, Lcom/sonyericsson/home/data/WidgetInfo;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/home/data/WidgetInfo;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public bind(Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/widget/AdvWidgetManager;Landroid/util/DisplayMetrics;)V
    .locals 12
    .parameter "desktopView"
    .parameter "transferHandler"
    .parameter "resourceLoader"
    .parameter "adapterHelper"
    .parameter "widgetManager"
    .parameter "advWidgetManager"
    .parameter "displayMetrics"

    .prologue
    .line 876
    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 877
    iput-object p3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 878
    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 879
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    .line 880
    const v8, 0x7f0c0025

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    .line 882
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    const v9, 0x7f0c0009

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    .line 883
    new-instance v8, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    move-object v0, v8

    move-object v1, p0

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/util/DisplayMetrics;)V

    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    .line 885
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 886
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->setOnInterceptTouchListener(Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout$OnInterceptTouchListener;)V

    .line 888
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-direct {p0, v8}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setupPaneIndicator(Landroid/view/ViewGroup;)V

    .line 890
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const v9, 0x7f0c000b

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/layer/HintView;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 891
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const v9, 0x7f0c000c

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/layer/HintView;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 892
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 893
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 896
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->createDynamics()Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v5

    .line 899
    .local v5, dynamics:Lcom/sonyericsson/util/SpringDynamics;
    new-instance v8, Lcom/sonyericsson/home/layer/desktop/DesktopRendererFactory;

    invoke-direct {v8}, Lcom/sonyericsson/home/layer/desktop/DesktopRendererFactory;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    .line 902
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c8

    div-float v6, v8, v9

    .line 903
    .local v6, paneMargin:F
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const v9, 0x7f0c000d

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/paneview/PaneView;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    .line 904
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v8, v5}, Lcom/sonyericsson/paneview/PaneView;->setPaneDynamics(Lcom/sonyericsson/util/Dynamics;)V

    .line 905
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v8, v6}, Lcom/sonyericsson/paneview/PaneView;->setPaneMargin(F)V

    .line 906
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 907
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 908
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 909
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    sget v9, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    new-instance v10, Ljava/lang/ref/WeakReference;

    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    invoke-direct {v10, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9, v10}, Lcom/sonyericsson/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 911
    iget v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    div-int/lit8 v7, v8, 0x2

    .line 912
    .local v7, paneViewStartPosition:I
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    int-to-float v9, v7

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    .line 913
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setScrollListener(Lcom/sonyericsson/paneview/PaneView$ScrollListener;)V

    .line 914
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setInteractionListener(Lcom/sonyericsson/paneview/PaneView$InteractionListener;)V

    .line 915
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setItemViewListener(Lcom/sonyericsson/paneview/PaneView$ItemViewListener;)V

    .line 916
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V

    .line 917
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020042

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 921
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setSrcBlit(Z)V

    .line 922
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/16 v9, 0x258

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setVelocityThreshold(I)V

    .line 925
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 926
    .local v4, cellWidth:I
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 927
    .local v3, cellHeight:I
    new-instance v8, Lcom/sonyericsson/grid/Grid;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    invoke-direct {v8, v4, v3, v9}, Lcom/sonyericsson/grid/Grid;-><init>(IILcom/sonyericsson/grid/GridSize;)V

    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 929
    new-instance v8, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;

    move-object v0, v8

    move-object v1, p0

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/AdapterHelper;)V

    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mBindSyncCompletedCallback:Ljava/lang/Runnable;

    .line 951
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mBindSyncCompletedCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addOnSyncCompletedCallback(Ljava/lang/Runnable;)V

    .line 952
    return-void
.end method

.method public exitOverview()V
    .locals 1

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->leaveTransform()V

    .line 1947
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1024
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 1025
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->closeAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1027
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setTouchLocked(Z)V

    .line 1029
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideOpenGLAdvWidgets()V

    .line 1031
    :cond_0
    return-void
.end method

.method protected hideOpenGLAdvWidgets()V
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->hideOpenGLAdvWidgets()V

    .line 861
    return-void
.end method

.method public isInOverview()Z
    .locals 1

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->isTransformed()Z

    move-result v0

    return v0
.end method

.method public itemAddedTo(Lcom/sonyericsson/home/data/InfoGroup;)V
    .locals 4
    .parameter "infoGroup"

    .prologue
    .line 1119
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    .line 1120
    .local v0, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->setNewUniqueID()V

    .line 1122
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 1123
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    new-instance v2, Lcom/sonyericsson/animation/JumpRenderer;

    invoke-direct {v2}, Lcom/sonyericsson/animation/JumpRenderer;-><init>()V

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getPositionOfItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 1125
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1127
    :cond_0
    return-void
.end method

.method public moveToCenterPane(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 1014
    if-eqz p1, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)V

    .line 1019
    :goto_0
    return-void

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1963
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mCreatingFolder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-nez v0, :cond_0

    .line 1964
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 1965
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHintDesktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedHintRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 1967
    :cond_0
    return-void
.end method

.method public onResume(Z)V
    .locals 3
    .parameter "dueToHomeButtonPressed"

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->restoreViews()V

    .line 1981
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mCreatingFolder:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1982
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    if-eqz v0, :cond_0

    .line 1983
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$18;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$18;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onCreateFolder(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;Z)V

    .line 2012
    :cond_0
    :goto_0
    return-void

    .line 2010
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->finishCreateFolder()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->clearViews()V

    .line 1957
    return-void
.end method

.method public onWidgetConfigured(Lcom/sonyericsson/home/data/AdvWidgetInfo;Landroid/graphics/Point;)Z
    .locals 4
    .parameter "info"
    .parameter "location"

    .prologue
    .line 1107
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Point;)Z

    move-result v0

    .line 1108
    .local v0, ret:Z
    if-nez v0, :cond_0

    .line 1109
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const v2, 0x7f070018

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1112
    :cond_0
    return v0
.end method

.method public removeAdvWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->remove(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 1099
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1100
    return-void
.end method

.method public removeShortcutSync(Landroid/os/Bundle;)Z
    .locals 10
    .parameter "shortcutData"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1274
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v5, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-ne v4, v5, :cond_0

    .line 1275
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 1278
    :cond_0
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1279
    .local v0, label:Ljava/lang/String;
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1280
    .local v2, shortcutIntent:Landroid/content/Intent;
    new-instance v1, Lcom/sonyericsson/home/data/ShortcutInfo;

    invoke-direct {v1, v0, v2, v6, v6}, Lcom/sonyericsson/home/data/ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V

    .line 1282
    .local v1, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->removeAll(Lcom/sonyericsson/home/data/Info;)I

    move-result v4

    if-lez v4, :cond_3

    move v3, v7

    .line 1284
    .local v3, shortcutRemoved:Z
    :goto_0
    if-eqz v3, :cond_2

    .line 1285
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const v6, 0x7f07001f

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1291
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    if-eqz v4, :cond_1

    .line 1292
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1295
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    if-eqz v4, :cond_2

    .line 1296
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->remove(Lcom/sonyericsson/home/data/Info;)V

    .line 1300
    :cond_2
    return v3

    .end local v3           #shortcutRemoved:Z
    :cond_3
    move v3, v9

    .line 1282
    goto :goto_0
.end method

.method public setDesktopControllerListener(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 995
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    .line 996
    return-void
.end method

.method public show(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 1037
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setTouchLocked(Z)V

    .line 1039
    if-eqz p1, :cond_1

    .line 1040
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->openAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1050
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showOpenGLAdvWidgets()V

    .line 1052
    :cond_0
    return-void

    .line 1042
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onOpenEnd()V

    goto :goto_0
.end method

.method protected showOpenGLAdvWidgets()V
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->showOpenGLAdvWidgets()V

    .line 854
    return-void
.end method

.method public unbind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 958
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-ne v0, v1, :cond_0

    .line 959
    sget-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->MODEL_INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mBindSyncCompletedCallback:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->removeOnSyncCompletedCallback(Ljava/lang/Runnable;)V

    .line 963
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mBindSyncCompletedCallback:Ljava/lang/Runnable;

    .line 965
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 966
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->setOnInterceptTouchListener(Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout$OnInterceptTouchListener;)V

    .line 967
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    .line 969
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->unregisterInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V

    .line 971
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks()V

    .line 972
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    .line 973
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setScrollListener(Lcom/sonyericsson/paneview/PaneView$ScrollListener;)V

    .line 975
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 976
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 977
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 978
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    sget v1, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 979
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    .line 981
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    .line 982
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 983
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 984
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 985
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    .line 986
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    .line 987
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    .line 988
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    .line 989
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 990
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 991
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 992
    return-void
.end method
