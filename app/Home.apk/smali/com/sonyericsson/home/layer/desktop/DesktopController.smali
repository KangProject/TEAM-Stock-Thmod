.class public Lcom/sonyericsson/home/layer/desktop/DesktopController;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/Controller;
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
.field private static final CLOSE_ENOUGH_FOR_REPORTING_CORNERS:F = 0.1f

.field private static final CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri; = null

.field private static final DESKTOP_PREFERENCES:Ljava/lang/String; = "desktop_preferences"

.field private static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field private static final INVALID_TIME:J = -0x1L

.field private static final PREFERENCE_DESKTOP_WIDGET_CUSTOMIZATION_DONE:Ljava/lang/String; = "preference_desktop_widget_customization_done"

.field private static final PRODUCT_DEFAULT_SETTINGS_FILE:Ljava/lang/String; = "/etc/customization/settings/com/sonyericsson/home/default_settings_desktop.xml"

.field private static final REGISTER_WIDGET_DELAY_MILLIS:J = 0x3e8L

.field private static final SMART_SLIDER_TAG:Ljava/lang/String; = "com.sonyerisson.home.SMART_SLIDER_ENABLED"

.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "desktop"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1

.field static final TAG:Ljava/lang/String; = "DesktopController"

.field private static final VELOCITY_THRESHOLD:I = 0x258


# instance fields
.field private hideAnim:Landroid/view/animation/Animation;

.field private mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

.field private mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBindSyncCompletedCallback:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCreatingFolder:Z

.field private final mDesktopHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

.field private mDesktopView:Landroid/view/ViewGroup;

.field private mDroppedAtItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

.field private mFirstHint:Z

.field private mFirstPaneSwitchWaitDuration:I

.field private mFreeCorners:[Z

.field private mGrid:Lcom/sonyericsson/grid/Grid;

.field private final mGridSize:Lcom/sonyericsson/grid/GridSize;

.field private mHandler:Landroid/os/Handler;

.field private mHintDesktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

.field private mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

.field private mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field private mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

.field private mIsWidgetLoadCompleted:Z

.field private final mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

.field private mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

.field private mMinPaneSwitchDuration:I

.field private mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

.field private mNudgeShow:Landroid/view/animation/Animation;

.field private mNumberOfPanes:I

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

.field private final mOnWidgetsLoadedCallbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOwner:Landroid/app/Activity;

.field private final mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

.field private mPaneSwitchMarginLeft:I

.field private mPaneSwitchMarginRight:I

.field private mPaneSwitchNudgeOffset:I

.field private mPaneView:Lcom/sonyericsson/paneview/PaneView;

.field private mPaneViewInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

.field private mPaneViewItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

.field private mPaneViewScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

.field private mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

.field protected mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

.field private mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

.field private mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

.field private mRightNudge:Lcom/sonyericsson/home/layer/HintView;

.field private mSavedHintRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

.field private mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

.field private mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

.field private mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

.field private mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

.field private final mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

.field private final mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

.field private mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

.field private mViewInTransfer:Landroid/view/View;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private final mWidgetLoadHandler:Lcom/sonyericsson/util/DeferredHandler;

.field private mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

.field private showAnim:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    const-string v0, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.home/custom_settings_desktop.xml"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/layer/InfoGroupManager;)V
    .locals 3
    .parameter "context"
    .parameter "packageLoader"
    .parameter "infoGroupManager"

    .prologue
    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    sget-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    .line 222
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    .line 234
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHandler:Landroid/os/Handler;

    .line 237
    new-instance v0, Lcom/sonyericsson/util/DeferredHandler;

    invoke-direct {v0}, Lcom/sonyericsson/util/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetLoadHandler:Lcom/sonyericsson/util/DeferredHandler;

    .line 240
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnWidgetsLoadedCallbacks:Ljava/util/LinkedList;

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mIsWidgetLoadCompleted:Z

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstHint:Z

    .line 286
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$1;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    .line 766
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$2;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    .line 1497
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 1568
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1588
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 1610
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 1925
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    .line 1966
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    .line 1990
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    .line 2009
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    .line 2030
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$15;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$15;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    .line 792
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    .line 793
    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 794
    iput-object p3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 795
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 797
    new-instance v0, Lcom/sonyericsson/home/layer/HintInfo;

    invoke-direct {v0, p1}, Lcom/sonyericsson/home/layer/HintInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    .line 799
    new-instance v0, Lcom/sonyericsson/grid/GridSize;

    invoke-direct {v0}, Lcom/sonyericsson/grid/GridSize;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    .line 800
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    .line 801
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/grid/GridSize;->cols:I

    .line 803
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    .line 805
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 808
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const-string v1, "desktop"

    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)Ljava/lang/Object;

    .line 895
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->writeToStorage(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/PaneIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/layer/desktop/DesktopController;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->reportFreeCorners(IZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/grid/GridSize;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/appwidget/AppWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/appwidget/AppWidgetManager;)Landroid/appwidget/AppWidgetManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/appwidget/AppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/appwidget/AppWidgetHost;)Landroid/appwidget/AppWidgetHost;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/InfoGroupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$2600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/WidgetInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->performRegister(Lcom/sonyericsson/home/data/WidgetInfo;)V

    return-void
.end method

.method static synthetic access$2802(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopController$State;)Lcom/sonyericsson/home/layer/desktop/DesktopController$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onHideFinished(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onShowFinished()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->customizeWidgets()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/ResourceLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/WidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/AdvWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/grid/Grid;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView$ScrollListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/util/Collection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->preCacheWidgets(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView$ItemViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/transfer/TransferSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/transfer/TransferHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mViewInTransfer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mViewInTransfer:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mMinPaneSwitchDuration:I

    return v0
.end method

.method static synthetic access$4900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstHint:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstHint:Z

    return p1
.end method

.method static synthetic access$5000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHintDesktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHintDesktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/sonyericsson/home/layer/desktop/DesktopController;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showNudgeIfNeeded(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideNudge()V

    return-void
.end method

.method static synthetic access$5300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/HintInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginLeft:I

    return v0
.end method

.method static synthetic access$5500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginRight:I

    return v0
.end method

.method static synthetic access$5600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstPaneSwitchWaitDuration:I

    return v0
.end method

.method static synthetic access$5700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDroppedAtItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDroppedAtItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mCreatingFolder:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/app/WallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedHintRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->finishCreateFolder()V

    return-void
.end method

.method static synthetic access$6500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->runOnWidgetsLoadedCallbacks()V

    return-void
.end method

.method static synthetic access$6600(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/WidgetInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->registerWidget(Lcom/sonyericsson/home/data/WidgetInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    return-object v0
.end method

.method private addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z
    .locals 13
    .parameter "info"
    .parameter "location"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2116
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v10, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-eq v9, v10, :cond_0

    .line 2117
    const-string v9, "DesktopController"

    const-string v10, "Add info called before controller initialized."

    invoke-static {v9, v10}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v11

    .line 2167
    :goto_0
    return v9

    .line 2123
    :cond_0
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v9}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v5

    .line 2125
    .local v5, pane:I
    instance-of v9, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v9, :cond_4

    .line 2126
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/WidgetInfo;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v1

    .line 2127
    .local v1, appWidgetId:I
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v10, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetWidth(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/grid/Grid;->getColSpan(I)I

    move-result v7

    .line 2128
    .local v7, spanX:I
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v10, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetHeight(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/grid/Grid;->getRowSpan(I)I

    move-result v8

    .line 2138
    .end local v1           #appWidgetId:I
    .local v8, spanY:I
    :goto_1
    const/4 v4, 0x0

    .line 2141
    .local v4, itemAdded:Z
    if-nez v4, :cond_1

    if-eqz p2, :cond_1

    .line 2142
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 2143
    .local v2, desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    new-instance v3, Lcom/sonyericsson/grid/GridRect;

    invoke-direct {v3}, Lcom/sonyericsson/grid/GridRect;-><init>()V

    .line 2144
    .local v3, gridRect:Lcom/sonyericsson/grid/GridRect;
    iput v7, v3, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    .line 2145
    iput v8, v3, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    .line 2146
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget v10, p2, Lcom/sonyericsson/grid/GridLocation;->col:I

    iget v11, p2, Lcom/sonyericsson/grid/GridLocation;->row:I

    invoke-virtual {v9, v10, v11, v3}, Lcom/sonyericsson/grid/Grid;->centerGridRect(IILcom/sonyericsson/grid/GridRect;)V

    .line 2147
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v9, v3, v5, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getClosestEmptyLocation(Lcom/sonyericsson/grid/GridRect;ILcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2148
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    new-instance v10, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v10, p1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    invoke-virtual {v9, v10}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z

    move-result v4

    .line 2155
    .end local v2           #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .end local v3           #gridRect:Lcom/sonyericsson/grid/GridRect;
    :cond_1
    if-nez v4, :cond_2

    .line 2156
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 2157
    .restart local v2       #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v9, v7, v8, v5, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getFirstEmptyLocation(IIILcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2158
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    new-instance v10, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v10, p1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    invoke-virtual {v9, v10}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z

    move-result v4

    .line 2162
    .end local v2           #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    :cond_2
    if-eqz v4, :cond_3

    .line 2163
    invoke-direct {p0, v12}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->writeToStorage(Z)V

    .line 2164
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v9}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    :cond_3
    move v9, v4

    .line 2167
    goto :goto_0

    .line 2129
    .end local v4           #itemAdded:Z
    .end local v7           #spanX:I
    .end local v8           #spanY:I
    :cond_4
    instance-of v9, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v9, :cond_5

    .line 2130
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    move-object v9, v0

    invoke-virtual {v10, v9}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getSpanXY(Lcom/sonyericsson/home/data/AdvWidgetInfo;)[I

    move-result-object v6

    .line 2131
    .local v6, span:[I
    aget v7, v6, v11

    .line 2132
    .restart local v7       #spanX:I
    aget v8, v6, v12

    .line 2133
    .restart local v8       #spanY:I
    goto :goto_1

    .line 2134
    .end local v6           #span:[I
    .end local v7           #spanX:I
    .end local v8           #spanY:I
    :cond_5
    const/4 v7, 0x1

    .line 2135
    .restart local v7       #spanX:I
    const/4 v8, 0x1

    .restart local v8       #spanY:I
    goto :goto_1
.end method

.method private createDynamics()Lcom/sonyericsson/util/SpringDynamics;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2051
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2052
    .local v2, stiffness:Landroid/util/TypedValue;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2053
    .local v0, damping:Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0b

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2054
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2055
    new-instance v1, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v1}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    .line 2056
    .local v1, dynamics:Lcom/sonyericsson/util/SpringDynamics;
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 2057
    return-object v1
.end method

.method private customizeWidgets()V
    .locals 13

    .prologue
    .line 969
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    if-nez v10, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v10}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v8

    .line 974
    .local v8, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/Info;>;"
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/home/data/Info;

    .line 975
    .local v7, info:Lcom/sonyericsson/home/data/Info;
    instance-of v10, v7, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v10, :cond_2

    .line 976
    move-object v0, v7

    check-cast v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->getCustomization()Ljava/util/HashMap;

    move-result-object v2

    .line 977
    .local v2, custMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 978
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 979
    .local v1, bundle:Landroid/os/Bundle;
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 980
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 982
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    check-cast v7, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .end local v7           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v10, v7, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->customize(Lcom/sonyericsson/home/data/AdvWidgetInfo;Landroid/os/Bundle;)Z

    goto :goto_1

    .line 986
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #custMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const-string v11, "desktop_preferences"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 988
    .local v9, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 989
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "preference_desktop_widget_customization_done"

    const/4 v11, 0x1

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 990
    invoke-static {v3}, Lcom/sonyericsson/util/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method private findSmartSliderViewRec(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "viewGroup"

    .prologue
    .line 2543
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 2544
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2545
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2547
    .local v0, child:Landroid/view/View;
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 2548
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->findSmartSliderViewRec(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2549
    .local v3, smartSliderView:Landroid/view/View;
    if-eqz v3, :cond_1

    move-object v4, v3

    .line 2557
    .end local v3           #smartSliderView:Landroid/view/View;
    :goto_1
    return-object v4

    .line 2552
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.sonyerisson.home.SMART_SLIDER_ENABLED"

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    .line 2553
    goto :goto_1

    .line 2544
    .end local v0           #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2557
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private finishCreateFolder()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2403
    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDroppedAtItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 2404
    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 2405
    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedHintRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 2406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mCreatingFolder:Z

    .line 2407
    return-void
.end method

.method private hideNudge()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2102
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 2103
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintView;->clearAnimation()V

    .line 2104
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 2105
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintView;->clearAnimation()V

    .line 2106
    return-void
.end method

.method private onHideFinished(Z)V
    .locals 1
    .parameter "animating"

    .prologue
    .line 898
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onDesktopHidden(Z)V

    .line 901
    :cond_0
    return-void
.end method

.method private onShowFinished()V
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 905
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onDesktopShown()V

    .line 908
    :cond_0
    return-void
.end method

.method private performRegister(Lcom/sonyericsson/home/data/WidgetInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 2478
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$20;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$20;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/WidgetInfo;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2483
    return-void
.end method

.method private preCacheWidgets(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2441
    .local p1, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/Info;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/Info;

    .line 2442
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    instance-of v2, v1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v2, :cond_1

    .line 2446
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetLoadHandler:Lcom/sonyericsson/util/DeferredHandler;

    new-instance v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$18;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$18;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/Info;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/util/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2454
    :cond_1
    instance-of v2, v1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v2, :cond_0

    .line 2458
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetLoadHandler:Lcom/sonyericsson/util/DeferredHandler;

    new-instance v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$19;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$19;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/Info;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/util/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2468
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_2
    return-void
.end method

.method private registerAppWidget(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "name"
    .parameter "packageName"

    .prologue
    .line 1562
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    .local v0, cmp:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 1564
    .local v1, id:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 1565
    return v1
.end method

.method private registerWidget(Lcom/sonyericsson/home/data/WidgetInfo;)V
    .locals 10
    .parameter "info"

    .prologue
    .line 2492
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v7, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    .line 2493
    .local v0, desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-eqz v0, :cond_2

    .line 2494
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/WidgetInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2495
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/WidgetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2497
    .local v5, packageName:Ljava/lang/String;
    const/4 v6, 0x1

    .line 2500
    .local v6, removeModelItem:Z
    :try_start_0
    invoke-direct {p0, v3, v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->registerAppWidget(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2506
    .local v2, id:I
    :goto_0
    if-eqz v2, :cond_0

    .line 2508
    new-instance v4, Lcom/sonyericsson/home/data/WidgetInfo;

    invoke-direct {v4, v2, v3, v5}, Lcom/sonyericsson/home/data/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2509
    .local v4, newWidgetInfo:Lcom/sonyericsson/home/data/WidgetInfo;
    invoke-virtual {v0, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->setInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 2510
    const/4 v6, 0x0

    .line 2511
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    if-eqz v7, :cond_0

    .line 2512
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v7}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 2517
    .end local v4           #newWidgetInfo:Lcom/sonyericsson/home/data/WidgetInfo;
    :cond_0
    if-eqz v6, :cond_1

    .line 2518
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v7, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->remove(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z

    .line 2519
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    if-eqz v7, :cond_1

    .line 2520
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v7}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 2523
    :cond_1
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->writeToStorage(Z)V

    .line 2526
    .end local v2           #id:I
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #removeModelItem:Z
    :cond_2
    return-void

    .line 2501
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #packageName:Ljava/lang/String;
    .restart local v6       #removeModelItem:Z
    :catch_0
    move-exception v1

    .line 2502
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v7, "DesktopController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem adding pending widget: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/WidgetInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2503
    const/4 v2, 0x0

    .restart local v2       #id:I
    goto :goto_0
.end method

.method private removeOnSyncCompletedCallback(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1193
    :cond_0
    return-void
.end method

.method private reportFreeCorners(IZ)V
    .locals 8
    .parameter "pane"
    .parameter "force"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2179
    const/4 v0, 0x0

    .line 2180
    .local v0, changed:Z
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    if-nez v3, :cond_0

    .line 2181
    const/4 v3, 0x4

    new-array v3, v3, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    .line 2184
    const/4 p2, 0x1

    .line 2186
    :cond_0
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 2187
    .local v2, rect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    iput v5, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 2188
    iput v5, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 2189
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 2190
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 2191
    iput p1, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 2192
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->isLocationEmpty(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v1

    .line 2193
    .local v1, free:Z
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aget-boolean v3, v3, v5

    if-eq v1, v3, :cond_1

    .line 2194
    const/4 v0, 0x1

    .line 2195
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aput-boolean v1, v3, v5

    .line 2197
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v3, v3, Lcom/sonyericsson/grid/GridSize;->cols:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 2198
    iput v5, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 2199
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 2200
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 2201
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->isLocationEmpty(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v1

    .line 2202
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aget-boolean v3, v3, v4

    if-eq v1, v3, :cond_2

    .line 2203
    const/4 v0, 0x1

    .line 2204
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aput-boolean v1, v3, v4

    .line 2206
    :cond_2
    iput v5, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 2207
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v3, v3, Lcom/sonyericsson/grid/GridSize;->rows:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 2208
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 2209
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 2210
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->isLocationEmpty(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v1

    .line 2211
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aget-boolean v3, v3, v6

    if-eq v1, v3, :cond_3

    .line 2212
    const/4 v0, 0x1

    .line 2213
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aput-boolean v1, v3, v6

    .line 2215
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v3, v3, Lcom/sonyericsson/grid/GridSize;->cols:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 2216
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v3, v3, Lcom/sonyericsson/grid/GridSize;->rows:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 2217
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 2218
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 2219
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->isLocationEmpty(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v1

    .line 2220
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aget-boolean v3, v3, v7

    if-eq v1, v3, :cond_4

    .line 2221
    const/4 v0, 0x1

    .line 2222
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aput-boolean v1, v3, v7

    .line 2224
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    if-eqz v3, :cond_6

    if-nez v0, :cond_5

    if-eqz p2, :cond_6

    .line 2225
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    invoke-interface {v3, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onFreeCornersChanged([Z)V

    .line 2227
    :cond_6
    return-void

    .line 2181
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private resumeWidgets()V
    .locals 7

    .prologue
    .line 2341
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v5}, Lcom/sonyericsson/paneview/PaneView;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2342
    .local v4, position:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    .line 2343
    .local v3, info:Lcom/sonyericsson/home/data/Info;
    instance-of v5, v3, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v5, :cond_0

    .line 2344
    move-object v0, v3

    check-cast v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    move-object v1, v0

    .line 2345
    .local v1, advInfo:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->start(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    .line 2346
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->resume(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    .line 2347
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v5}, Lcom/sonyericsson/paneview/PaneView;->isInteracting()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2348
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->focus(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    goto :goto_0

    .line 2352
    .end local v1           #advInfo:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    .end local v3           #info:Lcom/sonyericsson/home/data/Info;
    .end local v4           #position:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private runOnWidgetsLoadedCallbacks()V
    .locals 3

    .prologue
    .line 2426
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetLoadHandler:Lcom/sonyericsson/util/DeferredHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/util/DeferredHandler;->isQueueEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2427
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnWidgetsLoadedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 2428
    .local v0, callback:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2430
    .end local v0           #callback:Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnWidgetsLoadedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 2431
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mIsWidgetLoadCompleted:Z

    .line 2433
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private setContextDependentData()V
    .locals 4

    .prologue
    const/high16 v3, 0x4020

    .line 911
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginLeft:I

    .line 913
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginRight:I

    .line 915
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchNudgeOffset:I

    .line 917
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mMinPaneSwitchDuration:I

    .line 919
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstPaneSwitchWaitDuration:I

    .line 922
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const v1, 0x7f04000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNudgeShow:Landroid/view/animation/Animation;

    .line 925
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNudgeShow:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 927
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    .line 928
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/grid/GridSize;->cols:I

    .line 930
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    .line 932
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideAnim:Landroid/view/animation/Animation;

    .line 933
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 934
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$4;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 948
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showAnim:Landroid/view/animation/Animation;

    .line 949
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 950
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 963
    return-void
.end method

.method private setupPaneIndicator(Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "desktopView"

    .prologue
    const/4 v5, 0x0

    .line 2061
    const v2, 0x7f0e001d

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/layer/PaneIndicator;

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    .line 2062
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2063
    .local v1, indicatorSize:Landroid/util/TypedValue;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0004

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2064
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    invoke-virtual {v2, v3, v5, v5}, Lcom/sonyericsson/home/layer/PaneIndicator;->setAppearance(FLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 2065
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2067
    .local v0, fadeOnTimeout:Z
    if-eqz v0, :cond_0

    .line 2068
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    new-instance v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$16;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$16;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/PaneIndicator;->setOnInactiveTimeoutListener(Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;)V

    .line 2074
    :cond_0
    return-void
.end method

.method private showNudgeIfNeeded(I)Z
    .locals 7
    .parameter "x"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2077
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    .line 2078
    .local v0, currentPane:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getNumberOfPanes()I

    move-result v1

    .line 2079
    .local v1, maxPane:I
    iget v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginLeft:I

    iget v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchNudgeOffset:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_1

    .line 2080
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 2081
    if-lez v0, :cond_3

    .line 2082
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/HintView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2083
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 2084
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNudgeShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/HintView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    move v2, v6

    .line 2098
    :goto_0
    return v2

    .line 2088
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getRight()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginRight:I

    iget v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchNudgeOffset:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_3

    .line 2089
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 2090
    sub-int v2, v1, v6

    if-ge v0, v2, :cond_3

    .line 2091
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/HintView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 2092
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 2093
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNudgeShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/HintView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    move v2, v6

    .line 2095
    goto :goto_0

    :cond_3
    move v2, v5

    .line 2098
    goto :goto_0
.end method

.method private writeToStorage(Z)V
    .locals 4
    .parameter "async"

    .prologue
    .line 2171
    new-instance v1, Lcom/sonyericsson/storage/Root;

    const-string v2, "desktop"

    invoke-direct {v1, v2}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 2172
    .local v1, root:Lcom/sonyericsson/storage/Root;
    const-string v2, "version"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 2173
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getStorableModel()Ljava/util/ArrayList;

    move-result-object v0

    .line 2174
    .local v0, model:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 2175
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, p1}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V

    .line 2176
    return-void
.end method


# virtual methods
.method public addActivity(Lcom/sonyericsson/grid/GridLocation;Lcom/sonyericsson/home/data/ActivityInfo;)Z
    .locals 1
    .parameter "location"
    .parameter "activityInfo"

    .prologue
    .line 1341
    new-instance v0, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v0, p2}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Lcom/sonyericsson/home/data/ActivityInfo;)V

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v0

    return v0
.end method

.method public addAdvWidget(Ljava/lang/String;Lcom/sonyericsson/grid/GridLocation;)Z
    .locals 3
    .parameter "packageName"
    .parameter "location"

    .prologue
    .line 1259
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v2, p1, p2, p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->addNewWidget(Ljava/lang/String;Lcom/sonyericsson/grid/GridLocation;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)Lcom/sonyericsson/home/data/AdvWidgetInfo;

    move-result-object v0

    .line 1260
    .local v0, info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    if-eqz v0, :cond_1

    .line 1261
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v1

    .line 1262
    .local v1, ret:Z
    if-nez v1, :cond_0

    .line 1264
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanup(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    :cond_0
    move v2, v1

    .line 1271
    .end local v1           #ret:Z
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public addFolder(Lcom/sonyericsson/grid/GridLocation;Ljava/lang/String;)Z
    .locals 1
    .parameter "location"
    .parameter "folderName"

    .prologue
    .line 1326
    new-instance v0, Lcom/sonyericsson/home/data/InfoGroup;

    invoke-direct {v0, p2}, Lcom/sonyericsson/home/data/InfoGroup;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v0

    return v0
.end method

.method public addOnSyncCompletedCallback(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-eq v0, v1, :cond_0

    .line 1183
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1187
    :goto_0
    return-void

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addOnWidgetsLoadedCallback(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 2415
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mIsWidgetLoadCompleted:Z

    if-eqz v0, :cond_0

    .line 2416
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2420
    :goto_0
    return-void

    .line 2418
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnWidgetsLoadedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addShortcut(Landroid/os/Bundle;Lcom/sonyericsson/grid/GridLocation;)Z
    .locals 5
    .parameter "shortcutData"
    .parameter "location"

    .prologue
    const/4 v4, 0x1

    .line 1353
    invoke-static {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->create(Landroid/os/Bundle;)Lcom/sonyericsson/home/data/ShortcutInfo;

    move-result-object v1

    .line 1355
    .local v1, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    if-eqz v1, :cond_1

    .line 1356
    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1357
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getShortcutBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1358
    .local v0, shortcutBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1359
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v4}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 1362
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->add(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/graphics/Bitmap;)V

    move v2, v4

    .line 1367
    .end local v0           #shortcutBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addShortcutSync(Landroid/os/Bundle;)Z
    .locals 14
    .parameter "shortcutData"

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 1379
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v11, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-ne v10, v11, :cond_0

    .line 1380
    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10}, Ljava/lang/IllegalStateException;-><init>()V

    throw v10

    .line 1383
    :cond_0
    const/4 v6, 0x0

    .line 1384
    .local v6, shortcutAdded:Z
    const-string v10, "duplicate"

    invoke-virtual {p1, v10, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1386
    .local v4, duplicatesAllowed:Z
    invoke-static {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->create(Landroid/os/Bundle;)Lcom/sonyericsson/home/data/ShortcutInfo;

    move-result-object v8

    .line 1388
    .local v8, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    if-eqz v8, :cond_5

    .line 1389
    if-nez v4, :cond_1

    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v10, v8}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v10

    if-nez v10, :cond_7

    .line 1390
    :cond_1
    new-instance v3, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 1391
    .local v3, desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v2, v8, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 1392
    .local v2, desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCenterPane()I

    move-result v1

    .line 1393
    .local v1, currentPane:I
    const/4 v5, 0x0

    .line 1394
    .local v5, panesChecked:I
    const/4 v9, -0x1

    .line 1406
    .local v9, sign:I
    :goto_0
    iget v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    if-ge v5, v10, :cond_4

    .line 1407
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v11

    invoke-virtual {v10, v12, v12, v1, v11}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getFirstEmptyLocation(IIILcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1409
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v10, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z

    .line 1412
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getShortcutBitmap(Landroid/content/Context;Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1414
    .local v7, shortcutBitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    .line 1415
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7, v13}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 1418
    :cond_2
    invoke-direct {p0, v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->writeToStorage(Z)V

    .line 1421
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v11, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-ne v10, v11, :cond_3

    .line 1422
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v10, v8, v7}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->add(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/graphics/Bitmap;)V

    .line 1423
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v10}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1426
    :cond_3
    const/4 v6, 0x1

    .line 1427
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sonyericsson/home/bidi/Utils;->getBidiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 1428
    .local v0, ctx:Landroid/content/Context;
    const v10, 0x7f07001e

    new-array v11, v12, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1439
    .end local v0           #ctx:Landroid/content/Context;
    .end local v7           #shortcutBitmap:Landroid/graphics/Bitmap;
    :cond_4
    if-nez v6, :cond_5

    .line 1440
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sonyericsson/home/bidi/Utils;->getBidiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 1441
    .restart local v0       #ctx:Landroid/content/Context;
    const v10, 0x7f070018

    invoke-static {v0, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1453
    .end local v0           #ctx:Landroid/content/Context;
    .end local v1           #currentPane:I
    .end local v2           #desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v3           #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .end local v5           #panesChecked:I
    .end local v9           #sign:I
    :cond_5
    :goto_1
    return v6

    .line 1434
    .restart local v1       #currentPane:I
    .restart local v2       #desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .restart local v3       #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .restart local v5       #panesChecked:I
    .restart local v9       #sign:I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 1435
    mul-int v10, v9, v5

    add-int/2addr v1, v10

    .line 1436
    neg-int v9, v9

    goto :goto_0

    .line 1445
    .end local v1           #currentPane:I
    .end local v2           #desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v3           #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .end local v5           #panesChecked:I
    .end local v9           #sign:I
    :cond_7
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sonyericsson/home/bidi/Utils;->getBidiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 1446
    .restart local v0       #ctx:Landroid/content/Context;
    const v10, 0x7f070020

    new-array v11, v12, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public addWidget(ILcom/sonyericsson/grid/GridLocation;)Z
    .locals 2
    .parameter "id"
    .parameter "location"

    .prologue
    .line 1247
    new-instance v0, Lcom/sonyericsson/home/data/WidgetInfo;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/home/data/WidgetInfo;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v0

    return v0
.end method

.method public bind(Landroid/app/Activity;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/widget/AdvWidgetManager;F)V
    .locals 13
    .parameter "owner"
    .parameter "desktopView"
    .parameter "transferHandler"
    .parameter "resourceLoader"
    .parameter "adapterHelper"
    .parameter "widgetManager"
    .parameter "advWidgetManager"
    .parameter "densityScaleFactor"

    .prologue
    .line 1023
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOwner:Landroid/app/Activity;

    if-eqz v8, :cond_0

    .line 1024
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOwner:Landroid/app/Activity;

    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->unbind(Landroid/app/Activity;)V

    .line 1026
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOwner:Landroid/app/Activity;

    .line 1028
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setContextDependentData()V

    .line 1030
    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 1031
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 1032
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 1033
    move-object/from16 v0, p7

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    .line 1034
    const v8, 0x7f0e0040

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    .line 1036
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    const v9, 0x7f0e0018

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    .line 1037
    new-instance v8, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    move-object v0, v8

    move-object v1, p0

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;F)V

    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    .line 1039
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1040
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->setOnInterceptTouchListener(Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout$OnInterceptTouchListener;)V

    .line 1042
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-direct {p0, v8}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setupPaneIndicator(Landroid/view/ViewGroup;)V

    .line 1044
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const v9, 0x7f0e0019

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/layer/HintView;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 1045
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const v9, 0x7f0e001a

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/layer/HintView;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 1046
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 1047
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 1050
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->createDynamics()Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v5

    .line 1053
    .local v5, dynamics:Lcom/sonyericsson/util/SpringDynamics;
    new-instance v8, Lcom/sonyericsson/home/layer/desktop/DesktopRendererFactory;

    invoke-direct {v8}, Lcom/sonyericsson/home/layer/desktop/DesktopRendererFactory;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    .line 1056
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1057
    .local v7, res:Landroid/content/res/Resources;
    const v8, 0x7f090009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c8

    div-float v6, v8, v9

    .line 1058
    .local v6, paneMargin:F
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const v9, 0x7f0e001b

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/paneview/PaneView;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    .line 1059
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v8, v5}, Lcom/sonyericsson/paneview/PaneView;->setPaneDynamics(Lcom/sonyericsson/util/Dynamics;)V

    .line 1060
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v8, v6}, Lcom/sonyericsson/paneview/PaneView;->setPaneMargin(F)V

    .line 1061
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0a001c

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v12, 0x7f0a001d

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sonyericsson/paneview/PaneView;->setFocusPadding(IIII)V

    .line 1064
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 1065
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setPreferExternalFocus(Z)V

    .line 1067
    :cond_1
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 1068
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1069
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1070
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    sget v9, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    new-instance v10, Ljava/lang/ref/WeakReference;

    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    invoke-direct {v10, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9, v10}, Lcom/sonyericsson/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 1072
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCenterPane()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    .line 1073
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setInteractionListener(Lcom/sonyericsson/paneview/PaneView$InteractionListener;)V

    .line 1074
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setItemViewListener(Lcom/sonyericsson/paneview/PaneView$ItemViewListener;)V

    .line 1075
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V

    .line 1076
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const v9, 0x7f02004b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1077
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const v9, 0x7f02000b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setFocusedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1078
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/16 v9, 0x258

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setVelocityThreshold(I)V

    .line 1081
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setSrcBlit(Z)V

    .line 1084
    const v8, 0x7f0a000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1085
    .local v4, cellWidth:I
    const v8, 0x7f0a000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1086
    .local v3, cellHeight:I
    new-instance v8, Lcom/sonyericsson/grid/Grid;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    invoke-direct {v8, v4, v3, v9}, Lcom/sonyericsson/grid/Grid;-><init>(IILcom/sonyericsson/grid/GridSize;)V

    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 1088
    new-instance v8, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;

    move-object v0, v8

    move-object v1, p0

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/AdapterHelper;)V

    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mBindSyncCompletedCallback:Ljava/lang/Runnable;

    .line 1116
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mBindSyncCompletedCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addOnSyncCompletedCallback(Ljava/lang/Runnable;)V

    .line 1117
    return-void
.end method

.method public calculateRect(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "location"
    .parameter "outRect"

    .prologue
    .line 2276
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    check-cast p1, Lcom/sonyericsson/grid/GridRect;

    .end local p1
    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/grid/Grid;->calculateRect(Lcom/sonyericsson/grid/GridRect;Landroid/graphics/Rect;)V

    .line 2277
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 2280
    .local v0, paneViewLocationOnScreen:[I
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/paneview/PaneView;->getLocationOnScreen([I)V

    .line 2281
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2282
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2283
    return-void

    .line 2277
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public exitOverview()V
    .locals 1

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->leaveTransform()V

    .line 2235
    return-void
.end method

.method public findSmartSliderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2532
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->findSmartSliderViewRec(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCellRect(IILandroid/graphics/Rect;)V
    .locals 3
    .parameter "col"
    .parameter "row"
    .parameter "outRect"

    .prologue
    const/4 v1, 0x1

    .line 2312
    new-instance v0, Lcom/sonyericsson/grid/GridRect;

    invoke-direct {v0}, Lcom/sonyericsson/grid/GridRect;-><init>()V

    .line 2313
    .local v0, gridRect:Lcom/sonyericsson/grid/GridRect;
    iput p1, v0, Lcom/sonyericsson/grid/GridRect;->col:I

    .line 2314
    iput p2, v0, Lcom/sonyericsson/grid/GridRect;->row:I

    .line 2315
    iput v1, v0, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    .line 2316
    iput v1, v0, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    .line 2317
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v1, v0, p3}, Lcom/sonyericsson/grid/Grid;->calculateRect(Lcom/sonyericsson/grid/GridRect;Landroid/graphics/Rect;)V

    .line 2318
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2319
    return-void
.end method

.method public getCenterPane()I
    .locals 1

    .prologue
    .line 2246
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getCurrentPane()I
    .locals 1

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    return v0
.end method

.method public getFreeCorners()[Z
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    return-object v0
.end method

.method public getOverviewProgress()F
    .locals 1

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->getTransform()F

    move-result v0

    return v0
.end method

.method public hide(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1198
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 1200
    if-eqz p1, :cond_1

    .line 1201
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1206
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setTouchLocked(Z)V

    .line 1208
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideOpenGLAdvWidgets()V

    .line 1210
    :cond_0
    return-void

    .line 1203
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onHideFinished(Z)V

    goto :goto_0
.end method

.method protected hideOpenGLAdvWidgets()V
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->hideOpenGLAdvWidgets()V

    .line 1005
    return-void
.end method

.method public isInOverview()Z
    .locals 1

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->isTransformed()Z

    move-result v0

    return v0
.end method

.method public itemAddedTo(Lcom/sonyericsson/home/data/InfoGroup;)V
    .locals 4
    .parameter "infoGroup"

    .prologue
    .line 1307
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    .line 1308
    .local v0, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-eqz v0, :cond_0

    .line 1309
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->setNewUniqueID()V

    .line 1310
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 1311
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    new-instance v2, Lcom/sonyericsson/animation/JumpRenderer;

    invoke-direct {v2}, Lcom/sonyericsson/animation/JumpRenderer;-><init>()V

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getPositionOfItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 1313
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1315
    :cond_0
    return-void
.end method

.method public moveToLeftPane()V
    .locals 1

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToLeftPane()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2260
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 2262
    :cond_0
    return-void
.end method

.method public moveToPane(IZ)V
    .locals 2
    .parameter "pane"
    .parameter "animate"

    .prologue
    .line 2250
    if-eqz p2, :cond_0

    .line 2251
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    .line 2255
    :goto_0
    return-void

    .line 2253
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    goto :goto_0
.end method

.method public moveToRightPane()V
    .locals 1

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToRightPane()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2267
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 2269
    :cond_0
    return-void
.end method

.method public notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->contains(Lcom/sonyericsson/home/data/Info;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2288
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    if-eqz v0, :cond_0

    .line 2289
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 2292
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->onPause()V

    .line 2327
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mCreatingFolder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-nez v0, :cond_0

    .line 2328
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 2329
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHintDesktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedHintRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 2333
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setItemViewListener(Lcom/sonyericsson/paneview/PaneView$ItemViewListener;)V

    .line 2334
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->stop()V

    .line 2335
    return-void
.end method

.method public onResume(Z)V
    .locals 3
    .parameter "dueToHomeButtonPressed"

    .prologue
    .line 2361
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->onResume()V

    .line 2363
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->resumeWidgets()V

    .line 2364
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setItemViewListener(Lcom/sonyericsson/paneview/PaneView$ItemViewListener;)V

    .line 2366
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mCreatingFolder:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 2367
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    if-eqz v0, :cond_0

    .line 2368
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$17;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$17;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onCreateFolder(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;Z)V

    .line 2397
    :cond_0
    :goto_0
    return-void

    .line 2395
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->finishCreateFolder()V

    goto :goto_0
.end method

.method public onWidgetConfigured(Lcom/sonyericsson/home/data/AdvWidgetInfo;Lcom/sonyericsson/grid/GridLocation;)Z
    .locals 4
    .parameter "info"
    .parameter "location"

    .prologue
    .line 1295
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v1

    .line 1296
    .local v1, ret:Z
    if-nez v1, :cond_0

    .line 1297
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/home/bidi/Utils;->getBidiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 1298
    .local v0, ctx:Landroid/content/Context;
    const v2, 0x7f070018

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1300
    .end local v0           #ctx:Landroid/content/Context;
    :cond_0
    return v1
.end method

.method public removeAdvWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->remove(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 1283
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1284
    return-void
.end method

.method public removeShortcutSync(Landroid/os/Bundle;)Z
    .locals 10
    .parameter "shortcutData"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1464
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v6, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-ne v5, v6, :cond_0

    .line 1465
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 1468
    :cond_0
    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1469
    .local v1, label:Ljava/lang/String;
    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1470
    .local v3, shortcutIntent:Landroid/content/Intent;
    new-instance v2, Lcom/sonyericsson/home/data/ShortcutInfo;

    invoke-direct {v2, v1, v3, v9, v9}, Lcom/sonyericsson/home/data/ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V

    .line 1472
    .local v2, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v5, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->removeAll(Lcom/sonyericsson/home/data/Info;)I

    move-result v5

    if-lez v5, :cond_3

    move v4, v7

    .line 1474
    .local v4, shortcutRemoved:Z
    :goto_0
    if-eqz v4, :cond_2

    .line 1475
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonyericsson/home/bidi/Utils;->getBidiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 1476
    .local v0, ctx:Landroid/content/Context;
    const v5, 0x7f07001f

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1481
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    if-eqz v5, :cond_1

    .line 1482
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1485
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    if-eqz v5, :cond_2

    .line 1486
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v5, v2}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->remove(Lcom/sonyericsson/home/data/Info;)V

    .line 1490
    .end local v0           #ctx:Landroid/content/Context;
    :cond_2
    return v4

    .end local v4           #shortcutRemoved:Z
    :cond_3
    move v4, v8

    .line 1472
    goto :goto_0
.end method

.method public setDesktopControllerListener(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    .line 1173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    .line 1174
    return-void
.end method

.method public setOverviewProgress(F)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->setTransform(F)V

    .line 2243
    return-void
.end method

.method public setSelfFocusable(Z)V
    .locals 1
    .parameter "focusable"

    .prologue
    .line 2301
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/paneview/PaneView;->setFocusable(Z)V

    .line 2302
    return-void
.end method

.method public show(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 1216
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setTouchLocked(Z)V

    .line 1217
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 1219
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->reportFreeCorners(IZ)V

    .line 1221
    if-eqz p1, :cond_1

    .line 1222
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1227
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->resumeWidgets()V

    .line 1234
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showOpenGLAdvWidgets()V

    .line 1236
    :cond_0
    return-void

    .line 1224
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onShowFinished()V

    goto :goto_0
.end method

.method protected showOpenGLAdvWidgets()V
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->showOpenGLAdvWidgets()V

    .line 998
    return-void
.end method

.method public unbind(Landroid/app/Activity;)V
    .locals 3
    .parameter "owner"

    .prologue
    const/4 v2, 0x0

    .line 1123
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOwner:Landroid/app/Activity;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOwner:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1124
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOwner:Landroid/app/Activity;

    .line 1125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-ne v0, v1, :cond_0

    .line 1126
    sget-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->MODEL_INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mBindSyncCompletedCallback:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->removeOnSyncCompletedCallback(Ljava/lang/Runnable;)V

    .line 1130
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mBindSyncCompletedCallback:Ljava/lang/Runnable;

    .line 1132
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1133
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->setOnInterceptTouchListener(Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout$OnInterceptTouchListener;)V

    .line 1134
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    .line 1136
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->unregisterInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V

    .line 1138
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/PaneIndicator;->setOnInactiveTimeoutListener(Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;)V

    .line 1139
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks()V

    .line 1140
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    .line 1141
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setScrollListener(Lcom/sonyericsson/paneview/PaneView$ScrollListener;)V

    .line 1142
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 1143
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1144
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1145
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setInteractionListener(Lcom/sonyericsson/paneview/PaneView$InteractionListener;)V

    .line 1146
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setItemViewListener(Lcom/sonyericsson/paneview/PaneView$ItemViewListener;)V

    .line 1147
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V

    .line 1148
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    sget v1, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 1149
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V

    .line 1150
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    .line 1152
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetLoadHandler:Lcom/sonyericsson/util/DeferredHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/util/DeferredHandler;->cancel()V

    .line 1153
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnWidgetsLoadedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mIsWidgetLoadCompleted:Z

    .line 1156
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    .line 1157
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 1158
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 1159
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 1160
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    .line 1161
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    .line 1162
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    .line 1163
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    .line 1164
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 1165
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 1166
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 1167
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mViewInTransfer:Landroid/view/View;

    .line 1169
    :cond_1
    return-void
.end method
