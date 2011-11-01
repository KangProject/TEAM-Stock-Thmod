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

.field private final mDeferredHandler:Lcom/sonyericsson/util/DeferredHandler;

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

.field private mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

.field private showAnim:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const-string v0, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.home/custom_settings_desktop.xml"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/layer/InfoGroupManager;)V
    .locals 7
    .parameter "context"
    .parameter "packageLoader"
    .parameter "infoGroupManager"

    .prologue
    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    sget-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    .line 217
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHandler:Landroid/os/Handler;

    .line 231
    new-instance v0, Lcom/sonyericsson/util/DeferredHandler;

    invoke-direct {v0}, Lcom/sonyericsson/util/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDeferredHandler:Lcom/sonyericsson/util/DeferredHandler;

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstHint:Z

    .line 274
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$1;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    .line 755
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$2;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    .line 1467
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 1538
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1558
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 1580
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 1895
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    .line 1936
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    .line 1960
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    .line 1979
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    .line 2000
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$15;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$15;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    .line 781
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    .line 782
    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 783
    iput-object p3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 784
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 786
    new-instance v0, Lcom/sonyericsson/home/layer/HintInfo;

    invoke-direct {v0, p1}, Lcom/sonyericsson/home/layer/HintInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    .line 788
    new-instance v0, Lcom/sonyericsson/grid/GridSize;

    invoke-direct {v0}, Lcom/sonyericsson/grid/GridSize;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    .line 789
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 114
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "tweaks_home_rows"

    const/4 v4, 0x4

    invoke-static {v6, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    .line 790
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 114
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "tweaks_home_cols"

    const/4 v4, 0x4

    invoke-static {v6, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/sonyericsson/grid/GridSize;->cols:I

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "tweaks_home_screens"

    const/4 v4, 0x5

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    .line 794
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 797
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const-string v1, "desktop"

    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)Ljava/lang/Object;

    .line 883
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->writeToStorage(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/PaneIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/layer/desktop/DesktopController;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->reportFreeCorners(IZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/grid/GridSize;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/appwidget/AppWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/appwidget/AppWidgetManager;)Landroid/appwidget/AppWidgetManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/appwidget/AppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/appwidget/AppWidgetHost;)Landroid/appwidget/AppWidgetHost;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/InfoGroupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$2600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/WidgetInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->performRegister(Lcom/sonyericsson/home/data/WidgetInfo;)V

    return-void
.end method

.method static synthetic access$2802(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopController$State;)Lcom/sonyericsson/home/layer/desktop/DesktopController$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onHideFinished(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onShowFinished()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->customizeWidgets()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/ResourceLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/WidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/AdvWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/grid/Grid;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView$ScrollListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/util/Collection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->preCacheWidgets(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView$ItemViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/transfer/TransferSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/transfer/TransferHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mViewInTransfer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mViewInTransfer:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mMinPaneSwitchDuration:I

    return v0
.end method

.method static synthetic access$4900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstHint:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstHint:Z

    return p1
.end method

.method static synthetic access$5000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHintDesktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHintDesktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/sonyericsson/home/layer/desktop/DesktopController;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showNudgeIfNeeded(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideNudge()V

    return-void
.end method

.method static synthetic access$5300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/HintInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginLeft:I

    return v0
.end method

.method static synthetic access$5500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginRight:I

    return v0
.end method

.method static synthetic access$5600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstPaneSwitchWaitDuration:I

    return v0
.end method

.method static synthetic access$5700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDroppedAtItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDroppedAtItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mCreatingFolder:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/app/WallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedHintRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->finishCreateFolder()V

    return-void
.end method

.method static synthetic access$6500(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/WidgetInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->registerWidget(Lcom/sonyericsson/home/data/WidgetInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
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

    .line 2086
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v10, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-eq v9, v10, :cond_0

    .line 2087
    const-string v9, "DesktopController"

    const-string v10, "Add info called before controller initialized."

    invoke-static {v9, v10}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v11

    .line 2137
    :goto_0
    return v9

    .line 2093
    :cond_0
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v9}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v5

    .line 2095
    .local v5, pane:I
    instance-of v9, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v9, :cond_4

    .line 2096
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/WidgetInfo;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v1

    .line 2097
    .local v1, appWidgetId:I
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v10, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetWidth(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/grid/Grid;->getColSpan(I)I

    move-result v7

    .line 2098
    .local v7, spanX:I
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v10, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetHeight(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/grid/Grid;->getRowSpan(I)I

    move-result v8

    .line 2108
    .end local v1           #appWidgetId:I
    .local v8, spanY:I
    :goto_1
    const/4 v4, 0x0

    .line 2111
    .local v4, itemAdded:Z
    if-nez v4, :cond_1

    if-eqz p2, :cond_1

    .line 2112
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 2113
    .local v2, desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    new-instance v3, Lcom/sonyericsson/grid/GridRect;

    invoke-direct {v3}, Lcom/sonyericsson/grid/GridRect;-><init>()V

    .line 2114
    .local v3, gridRect:Lcom/sonyericsson/grid/GridRect;
    iput v7, v3, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    .line 2115
    iput v8, v3, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    .line 2116
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget v10, p2, Lcom/sonyericsson/grid/GridLocation;->col:I

    iget v11, p2, Lcom/sonyericsson/grid/GridLocation;->row:I

    invoke-virtual {v9, v10, v11, v3}, Lcom/sonyericsson/grid/Grid;->centerGridRect(IILcom/sonyericsson/grid/GridRect;)V

    .line 2117
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v9, v3, v5, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getClosestEmptyLocation(Lcom/sonyericsson/grid/GridRect;ILcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2118
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    new-instance v10, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v10, p1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    invoke-virtual {v9, v10}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z

    move-result v4

    .line 2125
    .end local v2           #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .end local v3           #gridRect:Lcom/sonyericsson/grid/GridRect;
    :cond_1
    if-nez v4, :cond_2

    .line 2126
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 2127
    .restart local v2       #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v9, v7, v8, v5, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getFirstEmptyLocation(IIILcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2128
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    new-instance v10, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v10, p1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    invoke-virtual {v9, v10}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z

    move-result v4

    .line 2132
    .end local v2           #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    :cond_2
    if-eqz v4, :cond_3

    .line 2133
    invoke-direct {p0, v12}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->writeToStorage(Z)V

    .line 2134
    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v9}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    :cond_3
    move v9, v4

    .line 2137
    goto :goto_0

    .line 2099
    .end local v4           #itemAdded:Z
    .end local v7           #spanX:I
    .end local v8           #spanY:I
    :cond_4
    instance-of v9, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v9, :cond_5

    .line 2100
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    move-object v9, v0

    invoke-virtual {v10, v9}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getSpanXY(Lcom/sonyericsson/home/data/AdvWidgetInfo;)[I

    move-result-object v6

    .line 2101
    .local v6, span:[I
    aget v7, v6, v11

    .line 2102
    .restart local v7       #spanX:I
    aget v8, v6, v12

    .line 2103
    .restart local v8       #spanY:I
    goto :goto_1

    .line 2104
    .end local v6           #span:[I
    .end local v7           #spanX:I
    .end local v8           #spanY:I
    :cond_5
    const/4 v7, 0x1

    .line 2105
    .restart local v7       #spanX:I
    const/4 v8, 0x1

    .restart local v8       #spanY:I
    goto :goto_1
.end method

.method private createDynamics()Lcom/sonyericsson/util/SpringDynamics;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2021
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2022
    .local v2, stiffness:Landroid/util/TypedValue;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2023
    .local v0, damping:Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0b

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2024
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2025
    new-instance v1, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v1}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    .line 2026
    .local v1, dynamics:Lcom/sonyericsson/util/SpringDynamics;
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 2027
    return-object v1
.end method

.method private customizeWidgets()V
    .locals 13

    .prologue
    .line 957
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    if-nez v10, :cond_1

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 960
    :cond_1
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v10}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v8

    .line 962
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

    .line 963
    .local v7, info:Lcom/sonyericsson/home/data/Info;
    instance-of v10, v7, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v10, :cond_2

    .line 964
    move-object v0, v7

    check-cast v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->getCustomization()Ljava/util/HashMap;

    move-result-object v2

    .line 965
    .local v2, custMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 966
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 967
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

    .line 968
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 970
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    check-cast v7, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .end local v7           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v10, v7, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->customize(Lcom/sonyericsson/home/data/AdvWidgetInfo;Landroid/os/Bundle;)Z

    goto :goto_1

    .line 974
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #custMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const-string v11, "desktop_preferences"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 976
    .local v9, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 977
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "preference_desktop_widget_customization_done"

    const/4 v11, 0x1

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 978
    invoke-static {v3}, Lcom/sonyericsson/util/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method private findSmartSliderViewRec(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "viewGroup"

    .prologue
    .line 2477
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 2478
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2479
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2481
    .local v0, child:Landroid/view/View;
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 2482
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->findSmartSliderViewRec(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2483
    .local v3, smartSliderView:Landroid/view/View;
    if-eqz v3, :cond_1

    move-object v4, v3

    .line 2492
    .end local v3           #smartSliderView:Landroid/view/View;
    :goto_1
    return-object v4

    .line 2486
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

    .line 2488
    goto :goto_1

    .line 2478
    .end local v0           #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2492
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private finishCreateFolder()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2365
    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDroppedAtItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 2366
    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 2367
    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedHintRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 2368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mCreatingFolder:Z

    .line 2369
    return-void
.end method

.method private hideNudge()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2072
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 2073
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintView;->clearAnimation()V

    .line 2074
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 2075
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintView;->clearAnimation()V

    .line 2076
    return-void
.end method

.method private onHideFinished(Z)V
    .locals 1
    .parameter "animating"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onDesktopHidden(Z)V

    .line 889
    :cond_0
    return-void
.end method

.method private onShowFinished()V
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onDesktopShown()V

    .line 896
    :cond_0
    return-void
.end method

.method private performRegister(Lcom/sonyericsson/home/data/WidgetInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$20;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$20;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/WidgetInfo;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2417
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
    .line 2377
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

    .line 2378
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    instance-of v2, v1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v2, :cond_1

    .line 2382
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDeferredHandler:Lcom/sonyericsson/util/DeferredHandler;

    new-instance v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$18;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$18;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/Info;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/util/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2389
    :cond_1
    instance-of v2, v1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v2, :cond_0

    .line 2393
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDeferredHandler:Lcom/sonyericsson/util/DeferredHandler;

    new-instance v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$19;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$19;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/Info;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/util/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2402
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_2
    return-void
.end method

.method private registerAppWidget(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "name"
    .parameter "packageName"

    .prologue
    .line 1532
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    .local v0, cmp:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 1534
    .local v1, id:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 1535
    return v1
.end method

.method private registerWidget(Lcom/sonyericsson/home/data/WidgetInfo;)V
    .locals 10
    .parameter "info"

    .prologue
    .line 2426
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v7, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    .line 2427
    .local v0, desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-eqz v0, :cond_2

    .line 2428
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/WidgetInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2429
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/WidgetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2431
    .local v5, packageName:Ljava/lang/String;
    const/4 v6, 0x1

    .line 2434
    .local v6, removeModelItem:Z
    :try_start_0
    invoke-direct {p0, v3, v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->registerAppWidget(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2440
    .local v2, id:I
    :goto_0
    if-eqz v2, :cond_0

    .line 2442
    new-instance v4, Lcom/sonyericsson/home/data/WidgetInfo;

    invoke-direct {v4, v2, v3, v5}, Lcom/sonyericsson/home/data/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2443
    .local v4, newWidgetInfo:Lcom/sonyericsson/home/data/WidgetInfo;
    invoke-virtual {v0, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->setInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 2444
    const/4 v6, 0x0

    .line 2445
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    if-eqz v7, :cond_0

    .line 2446
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v7}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 2451
    .end local v4           #newWidgetInfo:Lcom/sonyericsson/home/data/WidgetInfo;
    :cond_0
    if-eqz v6, :cond_1

    .line 2452
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v7, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->remove(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z

    .line 2453
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    if-eqz v7, :cond_1

    .line 2454
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v7}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 2457
    :cond_1
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->writeToStorage(Z)V

    .line 2460
    .end local v2           #id:I
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #removeModelItem:Z
    :cond_2
    return-void

    .line 2435
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #packageName:Ljava/lang/String;
    .restart local v6       #removeModelItem:Z
    :catch_0
    move-exception v1

    .line 2436
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

    .line 2437
    const/4 v2, 0x0

    .restart local v2       #id:I
    goto :goto_0
.end method

.method private removeOnSyncCompletedCallback(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1172
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

    .line 2149
    const/4 v0, 0x0

    .line 2150
    .local v0, changed:Z
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    if-nez v3, :cond_0

    .line 2151
    const/4 v3, 0x4

    new-array v3, v3, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    .line 2154
    const/4 p2, 0x1

    .line 2156
    :cond_0
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 2157
    .local v2, rect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    iput v5, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 2158
    iput v5, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 2159
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 2160
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 2161
    iput p1, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 2162
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->isLocationEmpty(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v1

    .line 2163
    .local v1, free:Z
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aget-boolean v3, v3, v5

    if-eq v1, v3, :cond_1

    .line 2164
    const/4 v0, 0x1

    .line 2165
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aput-boolean v1, v3, v5

    .line 2167
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v3, v3, Lcom/sonyericsson/grid/GridSize;->cols:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 2168
    iput v5, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 2169
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 2170
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 2171
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->isLocationEmpty(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v1

    .line 2172
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aget-boolean v3, v3, v4

    if-eq v1, v3, :cond_2

    .line 2173
    const/4 v0, 0x1

    .line 2174
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aput-boolean v1, v3, v4

    .line 2176
    :cond_2
    iput v5, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 2177
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v3, v3, Lcom/sonyericsson/grid/GridSize;->rows:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 2178
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 2179
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 2180
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->isLocationEmpty(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v1

    .line 2181
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aget-boolean v3, v3, v6

    if-eq v1, v3, :cond_3

    .line 2182
    const/4 v0, 0x1

    .line 2183
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aput-boolean v1, v3, v6

    .line 2185
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v3, v3, Lcom/sonyericsson/grid/GridSize;->cols:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 2186
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v3, v3, Lcom/sonyericsson/grid/GridSize;->rows:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 2187
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 2188
    iput v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 2189
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->isLocationEmpty(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v1

    .line 2190
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aget-boolean v3, v3, v7

    if-eq v1, v3, :cond_4

    .line 2191
    const/4 v0, 0x1

    .line 2192
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    aput-boolean v1, v3, v7

    .line 2194
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    if-eqz v3, :cond_6

    if-nez v0, :cond_5

    if-eqz p2, :cond_6

    .line 2195
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    invoke-interface {v3, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onFreeCornersChanged([Z)V

    .line 2197
    :cond_6
    return-void

    .line 2151
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private setContextDependentData()V
    .locals 7

    .prologue
    const/high16 v3, 0x4020

    .line 899
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginLeft:I

    .line 901
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginRight:I

    .line 903
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchNudgeOffset:I

    .line 905
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mMinPaneSwitchDuration:I

    .line 907
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFirstPaneSwitchWaitDuration:I

    .line 910
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const v1, 0x7f04000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNudgeShow:Landroid/view/animation/Animation;

    .line 913
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNudgeShow:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 915
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 114
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "tweaks_home_rows"

    const/4 v4, 0x4

    invoke-static {v6, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    .line 916
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 114
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "tweaks_home_cols"

    const/4 v4, 0x4

    invoke-static {v6, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/sonyericsson/grid/GridSize;->cols:I

    .line 918
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "tweaks_home_screens"

    const/4 v4, 0x5

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    .line 920
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideAnim:Landroid/view/animation/Animation;

    .line 921
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 922
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$4;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 936
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showAnim:Landroid/view/animation/Animation;

    .line 937
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 938
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 951
    return-void
.end method

.method private setupPaneIndicator(Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "desktopView"

    .prologue
    const/4 v5, 0x0

    .line 2031
    const v2, 0x7f0e0016

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/layer/PaneIndicator;

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    .line 2032
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2033
    .local v1, indicatorSize:Landroid/util/TypedValue;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0004

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2034
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    invoke-virtual {v2, v3, v5, v5}, Lcom/sonyericsson/home/layer/PaneIndicator;->setAppearance(FLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 2035
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2037
    .local v0, fadeOnTimeout:Z
    if-eqz v0, :cond_0

    .line 2038
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    new-instance v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$16;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$16;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/PaneIndicator;->setOnInactiveTimeoutListener(Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;)V

    .line 2044
    :cond_0
    return-void
.end method

.method private showNudgeIfNeeded(I)Z
    .locals 7
    .parameter "x"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2047
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    .line 2048
    .local v0, currentPane:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getNumberOfPanes()I

    move-result v1

    .line 2049
    .local v1, maxPane:I
    iget v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginLeft:I

    iget v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchNudgeOffset:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_1

    .line 2050
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 2051
    if-lez v0, :cond_3

    .line 2052
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/HintView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2053
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 2054
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNudgeShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/HintView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    move v2, v6

    .line 2068
    :goto_0
    return v2

    .line 2058
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getRight()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchMarginRight:I

    iget v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneSwitchNudgeOffset:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_3

    .line 2059
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 2060
    sub-int v2, v1, v6

    if-ge v0, v2, :cond_3

    .line 2061
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/HintView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 2062
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 2063
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNudgeShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/HintView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    move v2, v6

    .line 2065
    goto :goto_0

    :cond_3
    move v2, v5

    .line 2068
    goto :goto_0
.end method

.method private writeToStorage(Z)V
    .locals 4
    .parameter "async"

    .prologue
    .line 2141
    new-instance v1, Lcom/sonyericsson/storage/Root;

    const-string v2, "desktop"

    invoke-direct {v1, v2}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 2142
    .local v1, root:Lcom/sonyericsson/storage/Root;
    const-string v2, "version"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 2143
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getStorableModel()Ljava/util/ArrayList;

    move-result-object v0

    .line 2144
    .local v0, model:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 2145
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, p1}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V

    .line 2146
    return-void
.end method


# virtual methods
.method public addActivity(Lcom/sonyericsson/grid/GridLocation;Lcom/sonyericsson/home/data/ActivityInfo;)Z
    .locals 1
    .parameter "location"
    .parameter "activityInfo"

    .prologue
    .line 1319
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
    .line 1236
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v2, p1, p2, p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->addNewWidget(Ljava/lang/String;Lcom/sonyericsson/grid/GridLocation;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)Lcom/sonyericsson/home/data/AdvWidgetInfo;

    move-result-object v0

    .line 1237
    .local v0, info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    if-eqz v0, :cond_1

    .line 1238
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v1

    .line 1239
    .local v1, ret:Z
    if-nez v1, :cond_0

    .line 1241
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanup(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    :cond_0
    move v2, v1

    .line 1248
    .end local v1           #ret:Z
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public addFolder(Lcom/sonyericsson/grid/GridLocation;Ljava/lang/String;I)Z
    .locals 1
    .parameter "location"
    .parameter "folderName"
    .parameter "icon"

    .prologue
    .line 1304
    new-instance v0, Lcom/sonyericsson/home/data/InfoGroup;

    invoke-direct {v0, p2, p3}, Lcom/sonyericsson/home/data/InfoGroup;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v0

    return v0
.end method

.method public addOnSyncCompletedCallback(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-eq v0, v1, :cond_0

    .line 1162
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1166
    :goto_0
    return-void

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mOnSyncCompletedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addShortcut(Landroid/os/Bundle;Lcom/sonyericsson/grid/GridLocation;)Z
    .locals 5
    .parameter "shortcutData"
    .parameter "location"

    .prologue
    const/4 v4, 0x1

    .line 1331
    invoke-static {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->create(Landroid/os/Bundle;)Lcom/sonyericsson/home/data/ShortcutInfo;

    move-result-object v1

    .line 1333
    .local v1, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    if-eqz v1, :cond_1

    .line 1334
    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1335
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getShortcutBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1336
    .local v0, shortcutBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1337
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v4}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 1340
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->add(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/graphics/Bitmap;)V

    move v2, v4

    .line 1345
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
    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    move-object v12, v0

    sget-object v13, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-ne v12, v13, :cond_0

    .line 1358
    new-instance v12, Ljava/lang/IllegalStateException;

    invoke-direct {v12}, Ljava/lang/IllegalStateException;-><init>()V

    throw v12

    .line 1361
    :cond_0
    const/4 v8, 0x0

    .line 1362
    .local v8, shortcutAdded:Z
    const-string v12, "duplicate"

    const/4 v13, 0x1

    move-object/from16 v0, p1

    move-object v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1364
    .local v6, duplicatesAllowed:Z
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->create(Landroid/os/Bundle;)Lcom/sonyericsson/home/data/ShortcutInfo;

    move-result-object v10

    .line 1366
    .local v10, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    if-eqz v10, :cond_5

    .line 1367
    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-object v12, v0

    invoke-virtual {v12, v10}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v12

    if-nez v12, :cond_7

    .line 1368
    :cond_1
    new-instance v5, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 1369
    .local v5, desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    new-instance v4, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v4, v10, v5}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 1370
    .local v4, desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCenterPane()I

    move-result v3

    .line 1371
    .local v3, currentPane:I
    const/4 v7, 0x0

    .line 1372
    .local v7, panesChecked:I
    const/4 v11, -0x1

    .line 1384
    .local v11, sign:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    move v12, v0

    if-ge v7, v12, :cond_4

    .line 1385
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

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-object v12, v0

    invoke-virtual {v12, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object v12, v0

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getShortcutBitmap(Landroid/content/Context;Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1392
    .local v9, shortcutBitmap:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_2

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object v12, v0

    invoke-virtual {v10}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v9, v14}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 1396
    :cond_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->writeToStorage(Z)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    move-object v12, v0

    sget-object v13, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-ne v12, v13, :cond_3

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object v12, v0

    invoke-virtual {v12, v10, v9}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->add(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/graphics/Bitmap;)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1404
    :cond_3
    const/4 v8, 0x1

    .line 1405
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

    .line 1416
    .end local v9           #shortcutBitmap:Landroid/graphics/Bitmap;
    :cond_4
    if-nez v8, :cond_5

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    move-object v12, v0

    const v13, 0x7f070018

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 1428
    .end local v3           #currentPane:I
    .end local v4           #desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v5           #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .end local v7           #panesChecked:I
    .end local v11           #sign:I
    :cond_5
    :goto_1
    return v8

    .line 1411
    .restart local v3       #currentPane:I
    .restart local v4       #desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .restart local v5       #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .restart local v7       #panesChecked:I
    .restart local v11       #sign:I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 1412
    mul-int v12, v11, v7

    add-int/2addr v3, v12

    .line 1413
    neg-int v11, v11

    goto/16 :goto_0

    .line 1421
    .end local v3           #currentPane:I
    .end local v4           #desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v5           #desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .end local v7           #panesChecked:I
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

.method public addWidget(ILcom/sonyericsson/grid/GridLocation;)Z
    .locals 2
    .parameter "id"
    .parameter "location"

    .prologue
    .line 1224
    new-instance v0, Lcom/sonyericsson/home/data/WidgetInfo;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/home/data/WidgetInfo;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v0

    return v0
.end method

.method public bind(Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/widget/AdvWidgetManager;F)V
    .locals 13
    .parameter "desktopView"
    .parameter "transferHandler"
    .parameter "resourceLoader"
    .parameter "adapterHelper"
    .parameter "widgetManager"
    .parameter "advWidgetManager"
    .parameter "densityScaleFactor"

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setContextDependentData()V

    .line 1014
    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 1015
    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 1016
    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 1017
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    .line 1018
    const v8, 0x7f0e002d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    .line 1020
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    const v9, 0x7f0e0011

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    .line 1021
    new-instance v8, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    move-object v0, v8

    move-object v1, p0

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;F)V

    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    .line 1023
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1024
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->setOnInterceptTouchListener(Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout$OnInterceptTouchListener;)V

    .line 1026
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-direct {p0, v8}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setupPaneIndicator(Landroid/view/ViewGroup;)V

    .line 1028
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const v9, 0x7f0e0012

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/layer/HintView;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 1029
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const v9, 0x7f0e0013

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/layer/HintView;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 1030
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 1031
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 1034
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->createDynamics()Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v5

    .line 1037
    .local v5, dynamics:Lcom/sonyericsson/util/SpringDynamics;
    new-instance v8, Lcom/sonyericsson/home/layer/desktop/DesktopRendererFactory;

    invoke-direct {v8}, Lcom/sonyericsson/home/layer/desktop/DesktopRendererFactory;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    .line 1040
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1041
    .local v7, res:Landroid/content/res/Resources;
    const v8, 0x7f090009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c8

    div-float v6, v8, v9

    .line 1042
    .local v6, paneMargin:F
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const v9, 0x7f0e0014

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/paneview/PaneView;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    .line 1043
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v8, v5}, Lcom/sonyericsson/paneview/PaneView;->setPaneDynamics(Lcom/sonyericsson/util/Dynamics;)V

    .line 1044
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v8, v6}, Lcom/sonyericsson/paneview/PaneView;->setPaneMargin(F)V

    .line 1045
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

    .line 1048
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 1049
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setPreferExternalFocus(Z)V

    .line 1051
    :cond_0
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 1052
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1053
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1054
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    sget v9, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    new-instance v10, Ljava/lang/ref/WeakReference;

    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    invoke-direct {v10, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9, v10}, Lcom/sonyericsson/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 1056
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCenterPane()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    .line 1057
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setInteractionListener(Lcom/sonyericsson/paneview/PaneView$InteractionListener;)V

    .line 1058
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setItemViewListener(Lcom/sonyericsson/paneview/PaneView$ItemViewListener;)V

    .line 1059
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V

    .line 1060
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const v9, 0x7f020052

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1061
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const v9, 0x7f020004

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setFocusedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1062
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/16 v9, 0x258

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setVelocityThreshold(I)V

    .line 1065
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setSrcBlit(Z)V

    .line 1068
    const v8, 0x7f0a000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1069
    .local v4, cellWidth:I
    const v8, 0x7f0a000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1070
    .local v3, cellHeight:I
    new-instance v8, Lcom/sonyericsson/grid/Grid;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    invoke-direct {v8, v4, v3, v9}, Lcom/sonyericsson/grid/Grid;-><init>(IILcom/sonyericsson/grid/GridSize;)V

    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 1072
    new-instance v8, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;

    move-object v0, v8

    move-object v1, p0

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/AdapterHelper;)V

    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mBindSyncCompletedCallback:Ljava/lang/Runnable;

    .line 1100
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mBindSyncCompletedCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addOnSyncCompletedCallback(Ljava/lang/Runnable;)V

    .line 1101
    return-void
.end method

.method public calculateRect(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "location"
    .parameter "outRect"

    .prologue
    .line 2246
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    check-cast p1, Lcom/sonyericsson/grid/GridRect;

    .end local p1
    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/grid/Grid;->calculateRect(Lcom/sonyericsson/grid/GridRect;Landroid/graphics/Rect;)V

    .line 2247
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 2250
    .local v0, paneViewLocationOnScreen:[I
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/paneview/PaneView;->getLocationOnScreen([I)V

    .line 2251
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2252
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2253
    return-void

    .line 2247
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
    .line 2204
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->leaveTransform()V

    .line 2205
    return-void
.end method

.method public findSmartSliderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2466
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

    .line 2282
    new-instance v0, Lcom/sonyericsson/grid/GridRect;

    invoke-direct {v0}, Lcom/sonyericsson/grid/GridRect;-><init>()V

    .line 2283
    .local v0, gridRect:Lcom/sonyericsson/grid/GridRect;
    iput p1, v0, Lcom/sonyericsson/grid/GridRect;->col:I

    .line 2284
    iput p2, v0, Lcom/sonyericsson/grid/GridRect;->row:I

    .line 2285
    iput v1, v0, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    .line 2286
    iput v1, v0, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    .line 2287
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v1, v0, p3}, Lcom/sonyericsson/grid/Grid;->calculateRect(Lcom/sonyericsson/grid/GridRect;Landroid/graphics/Rect;)V

    .line 2288
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2289
    return-void
.end method

.method public getCenterPane()I
    .locals 1

    .prologue
    .line 2216
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mNumberOfPanes:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getCurrentPane()I
    .locals 1

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    return v0
.end method

.method public getOverviewProgress()F
    .locals 1

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->getTransform()F

    move-result v0

    return v0
.end method

.method public hide(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1177
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 1179
    if-eqz p1, :cond_1

    .line 1180
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1185
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setTouchLocked(Z)V

    .line 1187
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideOpenGLAdvWidgets()V

    .line 1189
    :cond_0
    return-void

    .line 1182
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onHideFinished(Z)V

    goto :goto_0
.end method

.method protected hideOpenGLAdvWidgets()V
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->hideOpenGLAdvWidgets()V

    .line 993
    return-void
.end method

.method public isInOverview()Z
    .locals 1

    .prologue
    .line 2200
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->isTransformed()Z

    move-result v0

    return v0
.end method

.method public itemAddedTo(Lcom/sonyericsson/home/data/InfoGroup;)V
    .locals 4
    .parameter "infoGroup"

    .prologue
    .line 1284
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    .line 1285
    .local v0, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-eqz v0, :cond_0

    .line 1286
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->setNewUniqueID()V

    .line 1287
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 1288
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    new-instance v2, Lcom/sonyericsson/animation/JumpRenderer;

    invoke-direct {v2}, Lcom/sonyericsson/animation/JumpRenderer;-><init>()V

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getPositionOfItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 1290
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1292
    :cond_0
    return-void
.end method

.method public moveToLeftPane()V
    .locals 1

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToLeftPane()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2230
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 2232
    :cond_0
    return-void
.end method

.method public moveToPane(IZ)V
    .locals 2
    .parameter "pane"
    .parameter "animate"

    .prologue
    .line 2220
    if-eqz p2, :cond_0

    .line 2221
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    .line 2225
    :goto_0
    return-void

    .line 2223
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    goto :goto_0
.end method

.method public moveToRightPane()V
    .locals 1

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToRightPane()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2237
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 2239
    :cond_0
    return-void
.end method

.method public notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->contains(Lcom/sonyericsson/home/data/Info;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2258
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    if-eqz v0, :cond_0

    .line 2259
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 2262
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->onPause()V

    .line 2309
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mCreatingFolder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-nez v0, :cond_0

    .line 2310
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 2311
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mHintDesktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mSavedHintRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 2313
    :cond_0
    return-void
.end method

.method public onResume(Z)V
    .locals 3
    .parameter "dueToHomeButtonPressed"

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->onResume()V

    .line 2326
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->restoreViews()V

    .line 2328
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mCreatingFolder:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 2329
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    if-eqz v0, :cond_0

    .line 2330
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$17;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$17;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onCreateFolder(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;Z)V

    .line 2359
    :cond_0
    :goto_0
    return-void

    .line 2357
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->finishCreateFolder()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    if-eqz v0, :cond_0

    .line 2299
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->clearViews()V

    .line 2301
    :cond_0
    return-void
.end method

.method public onWidgetConfigured(Lcom/sonyericsson/home/data/AdvWidgetInfo;Lcom/sonyericsson/grid/GridLocation;)Z
    .locals 4
    .parameter "info"
    .parameter "location"

    .prologue
    .line 1272
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addInfo(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v0

    .line 1273
    .local v0, ret:Z
    if-nez v0, :cond_0

    .line 1274
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mContext:Landroid/content/Context;

    const v2, 0x7f070018

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1277
    :cond_0
    return v0
.end method

.method public removeAdvWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->remove(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 1260
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1261
    return-void
.end method

.method public removeShortcutSync(Landroid/os/Bundle;)Z
    .locals 10
    .parameter "shortcutData"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1439
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v5, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->UNINITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-ne v4, v5, :cond_0

    .line 1440
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 1443
    :cond_0
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1444
    .local v0, label:Ljava/lang/String;
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1445
    .local v2, shortcutIntent:Landroid/content/Intent;
    new-instance v1, Lcom/sonyericsson/home/data/ShortcutInfo;

    invoke-direct {v1, v0, v2, v6, v6}, Lcom/sonyericsson/home/data/ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V

    .line 1447
    .local v1, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->removeAll(Lcom/sonyericsson/home/data/Info;)I

    move-result v4

    if-lez v4, :cond_3

    move v3, v7

    .line 1449
    .local v3, shortcutRemoved:Z
    :goto_0
    if-eqz v3, :cond_2

    .line 1450
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

    .line 1455
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    if-eqz v4, :cond_1

    .line 1456
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1459
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    if-eqz v4, :cond_2

    .line 1460
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->remove(Lcom/sonyericsson/home/data/Info;)V

    .line 1464
    :cond_2
    return v3

    .end local v3           #shortcutRemoved:Z
    :cond_3
    move v3, v9

    .line 1447
    goto :goto_0
.end method

.method public setDesktopControllerListener(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mListener:Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    .line 1152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mFreeCorners:[Z

    .line 1153
    return-void
.end method

.method public setOverviewProgress(F)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->setTransform(F)V

    .line 2213
    return-void
.end method

.method public setSelfFocusable(Z)V
    .locals 1
    .parameter "focusable"

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/paneview/PaneView;->setFocusable(Z)V

    .line 2272
    return-void
.end method

.method public show(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 1195
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setTouchLocked(Z)V

    .line 1196
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 1198
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->reportFreeCorners(IZ)V

    .line 1200
    if-eqz p1, :cond_1

    .line 1201
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1211
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showOpenGLAdvWidgets()V

    .line 1213
    :cond_0
    return-void

    .line 1203
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onShowFinished()V

    goto :goto_0
.end method

.method protected showOpenGLAdvWidgets()V
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->showOpenGLAdvWidgets()V

    .line 986
    return-void
.end method

.method public unbind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1107
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    sget-object v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    if-ne v0, v1, :cond_0

    .line 1108
    sget-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->MODEL_INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mState:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mBindSyncCompletedCallback:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->removeOnSyncCompletedCallback(Ljava/lang/Runnable;)V

    .line 1112
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mBindSyncCompletedCallback:Ljava/lang/Runnable;

    .line 1114
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1115
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->setOnInterceptTouchListener(Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout$OnInterceptTouchListener;)V

    .line 1116
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInterceptingView:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;

    .line 1118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->unregisterInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V

    .line 1120
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/PaneIndicator;->setOnInactiveTimeoutListener(Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;)V

    .line 1121
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks()V

    .line 1122
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    .line 1123
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setScrollListener(Lcom/sonyericsson/paneview/PaneView$ScrollListener;)V

    .line 1125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 1126
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1128
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setInteractionListener(Lcom/sonyericsson/paneview/PaneView$InteractionListener;)V

    .line 1129
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setItemViewListener(Lcom/sonyericsson/paneview/PaneView$ItemViewListener;)V

    .line 1130
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V

    .line 1131
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    sget v1, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 1132
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    .line 1134
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDeferredHandler:Lcom/sonyericsson/util/DeferredHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/util/DeferredHandler;->cancel()V

    .line 1136
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransformManager:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    .line 1137
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 1138
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 1139
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 1140
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    .line 1141
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mAdapter:Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    .line 1142
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    .line 1143
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mDesktopView:Landroid/view/ViewGroup;

    .line 1144
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 1145
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 1146
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 1147
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mViewInTransfer:Landroid/view/View;

    .line 1148
    return-void
.end method
