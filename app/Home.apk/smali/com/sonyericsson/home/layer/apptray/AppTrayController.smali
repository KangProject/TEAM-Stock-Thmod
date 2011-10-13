.class public Lcom/sonyericsson/home/layer/apptray/AppTrayController;
.super Ljava/lang/Object;
.source "AppTrayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;,
        Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;
    }
.end annotation


# static fields
.field private static final APPTRAY_FIRST_NUDGE_TRIGGER:I = 0x3

.field private static final APPTRAY_PREFERENCES:Ljava/lang/String; = "home_apptray"

.field private static final APPTRAY_SECOND_NUDGE_TRIGGER:I = 0x4

.field private static final CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri; = null

.field private static final PREFERENCE_APPTRAY_COUNTER:Ljava/lang/String; = "preference_apptray_counter"

.field private static final PREFERENCE_APPTRAY_SHORTCUT_CREATED:Ljava/lang/String; = "preference_apptray_shortcut_created"

.field private static final PREFERENCE_APPTRAY_SORT_ORDER:Ljava/lang/String; = "preference_apptray_sort_order"

.field private static final SHORTCUT_HINT_ADDED_DURATION:I = 0x3e8

.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "apptray"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1

.field static final TAG:Ljava/lang/String; = "AppTrayController"

.field private static final VELOCITY_THRESHOLD:I = 0x258


# instance fields
.field private closeAnim:Landroid/view/animation/Animation;

.field private final mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

.field private mAlphabeticalComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

.field private mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

.field private final mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

.field private mAppTraySortCallback:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;

.field private mAppTrayStartCounter:I

.field private mAppTrayView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisableDuringSortDialog:Z

.field private mDisabledWhileClosing:Z

.field private mEditButton:Landroid/widget/ImageView;

.field private mEditModeFade:Landroid/view/View;

.field private mGrid:Lcom/sonyericsson/grid/Grid;

.field private mIsRtl:Z

.field private mMostUsedComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

.field private mPaneView:Lcom/sonyericsson/paneview/PaneView;

.field private mRecentlyInstalledComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRendererFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

.field private mResourceLoaderUtil:Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

.field private mSavedAppTrayStartCounter:I

.field private mShortcutCreatedByLongPress:Z

.field private mSortButton:Landroid/widget/ImageView;

.field private mSyncCompleted:Z

.field private final mSyncable:Lcom/sonyericsson/home/layer/LayerController$Syncable;

.field private mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

.field private openAnim:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const-string v0, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.home/custom_settings_apptray.xml"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/statistics/Statistics;)V
    .locals 13
    .parameter "context"
    .parameter "appTrayViewStub"
    .parameter "transferHandler"
    .parameter "packageLoader"
    .parameter "resourceLoader"
    .parameter "adapterHelper"
    .parameter "statistics"

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v10, 0x0

    iput v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    .line 188
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    .line 285
    new-instance v10, Lcom/sonyericsson/home/layer/apptray/AppTrayController$1;

    invoke-direct {v10, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$1;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    iput-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncable:Lcom/sonyericsson/home/layer/LayerController$Syncable;

    .line 303
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    .line 304
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 305
    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    .line 306
    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 309
    new-instance v10, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    move-object v0, v10

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    iput-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mResourceLoaderUtil:Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    .line 311
    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createComparators(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/statistics/Statistics;)V

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f0a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 315
    .local v9, rows:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 316
    .local v6, cols:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090011

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 318
    .local v5, cellWidth:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090012

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 320
    .local v4, cellHeight:I
    new-instance v7, Lcom/sonyericsson/grid/GridSize;

    invoke-direct {v7}, Lcom/sonyericsson/grid/GridSize;-><init>()V

    .line 321
    .local v7, gridSize:Lcom/sonyericsson/grid/GridSize;
    iput v9, v7, Lcom/sonyericsson/grid/GridSize;->rows:I

    .line 322
    iput v6, v7, Lcom/sonyericsson/grid/GridSize;->cols:I

    .line 323
    new-instance v10, Lcom/sonyericsson/grid/Grid;

    invoke-direct {v10, v5, v4, v7}, Lcom/sonyericsson/grid/Grid;-><init>(IILcom/sonyericsson/grid/GridSize;)V

    iput-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 326
    new-instance v10, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-direct {v10}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;-><init>()V

    iput-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    .line 327
    iget-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    new-instance v11, Lcom/sonyericsson/util/PagedList;

    mul-int v12, v9, v6

    invoke-direct {v11, v12}, Lcom/sonyericsson/util/PagedList;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->setModel(Lcom/sonyericsson/util/PagedList;)V

    .line 330
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createOnPackageUpdateListener()Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    move-result-object v10

    iput-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 331
    iget-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v11, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v10, v11}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 332
    iget-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v11, "apptray"

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createOnReadCompletedCallback()Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)V

    .line 335
    new-instance v10, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    iget-object v11, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mGrid:Lcom/sonyericsson/grid/Grid;

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, p6

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/grid/Grid;)V

    iput-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    .line 338
    iget-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sonyericsson/home/bidi/Utils;->isRtlAlphabet(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsRtl:Z

    .line 339
    iget-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    iget-boolean v11, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsRtl:Z

    invoke-virtual {v10, v11}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->setDoMirror(Z)V

    .line 342
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createAppTraySortResult()Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;

    move-result-object v10

    iput-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTraySortCallback:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;

    .line 345
    iget-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v11, "home_apptray"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 348
    .local v8, prefs:Landroid/content/SharedPreferences;
    const-string v10, "preference_apptray_counter"

    iget v11, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    .line 351
    iget v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    iput v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSavedAppTrayStartCounter:I

    .line 352
    const-string v10, "preference_apptray_shortcut_created"

    iget-boolean v11, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    .line 356
    const/high16 v10, 0x7f04

    invoke-static {p1, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    iput-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->closeAnim:Landroid/view/animation/Animation;

    .line 357
    iget-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->closeAnim:Landroid/view/animation/Animation;

    new-instance v11, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v12, 0x4020

    invoke-direct {v11, v12}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 358
    iget-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->closeAnim:Landroid/view/animation/Animation;

    new-instance v11, Lcom/sonyericsson/home/layer/apptray/AppTrayController$2;

    invoke-direct {v11, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$2;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 372
    const v10, 0x7f040001

    invoke-static {p1, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    iput-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->openAnim:Landroid/view/animation/Animation;

    .line 373
    iget-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->openAnim:Landroid/view/animation/Animation;

    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v12, 0x4020

    invoke-direct {v11, v12}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 374
    iget-object v10, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->openAnim:Landroid/view/animation/Animation;

    new-instance v11, Lcom/sonyericsson/home/layer/apptray/AppTrayController$3;

    invoke-direct {v11, p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$3;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/content/Context;)V

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 400
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTraySortCallback:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAlphabeticalComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mMostUsedComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRecentlyInstalledComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRendererFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->onCloseEnd(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setFreeSort()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/LayerController$Syncable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncable:Lcom/sonyericsson/home/layer/LayerController$Syncable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setupEditButton(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setupSortButton(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/PaneIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/home/layer/PaneIndicator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/content/Context;Landroid/view/View;)Lcom/sonyericsson/home/layer/PaneIndicator;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setupPaneIndicator(Landroid/content/Context;Landroid/view/View;)Lcom/sonyericsson/home/layer/PaneIndicator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    return v0
.end method

.method static synthetic access$3000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/paneview/PaneView$ScrollListener;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createScrollListener(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$308(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    return v0
.end method

.method static synthetic access$3100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createPaneViewTouchListener()Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/content/Context;)Lcom/sonyericsson/util/SpringDynamics;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createDynamics(Landroid/content/Context;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3402(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditModeFade:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/transfer/TransferHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/grid/Grid;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mGrid:Lcom/sonyericsson/grid/Grid;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/content/Context;Lcom/sonyericsson/home/transfer/TransferHandler;Landroid/view/View;Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/grid/Grid;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createAppTrayEditor(Landroid/content/Context;Lcom/sonyericsson/home/transfer/TransferHandler;Landroid/view/View;Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/grid/Grid;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsRtl:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncCompleted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->writeToStorage()V

    return-void
.end method

.method static synthetic access$402(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/ResourceLoaderUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mResourceLoaderUtil:Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/widget/Toast;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->showToast(Landroid/widget/Toast;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisabledWhileClosing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->exitEditMode()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->enterEditMode()V

    return-void
.end method

.method private createAppTrayEditor(Landroid/content/Context;Lcom/sonyericsson/home/transfer/TransferHandler;Landroid/view/View;Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/grid/Grid;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;
    .locals 7
    .parameter "context"
    .parameter "transferHandler"
    .parameter "view"
    .parameter "modelManager"
    .parameter "grid"

    .prologue
    .line 962
    new-instance v1, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    invoke-direct {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRendererFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    .line 963
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRendererFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/grid/Grid;)V

    .line 965
    .local v0, editor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;
    new-instance v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->setEditorListener(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;)V

    .line 991
    return-object v0
.end method

.method private createAppTraySortResult()Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;
    .locals 1

    .prologue
    .line 619
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    return-object v0
.end method

.method private createComparators(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/statistics/Statistics;)V
    .locals 1
    .parameter "resourceLoader"
    .parameter "statistics"

    .prologue
    .line 552
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$5;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$5;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAlphabeticalComparator:Ljava/util/Comparator;

    .line 561
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$6;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$6;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/statistics/Statistics;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mMostUsedComparator:Ljava/util/Comparator;

    .line 569
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$7;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$7;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/statistics/Statistics;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRecentlyInstalledComparator:Ljava/util/Comparator;

    .line 585
    return-void
.end method

.method private createDynamics(Landroid/content/Context;)Lcom/sonyericsson/util/SpringDynamics;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 950
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 951
    .local v2, stiffness:Landroid/util/TypedValue;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 952
    .local v0, damping:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0b

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 953
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 954
    new-instance v1, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v1}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    .line 955
    .local v1, dynamics:Lcom/sonyericsson/util/SpringDynamics;
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 956
    return-object v1
.end method

.method private createOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 770
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$12;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$12;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    return-object v0
.end method

.method private createOnPackageUpdateListener()Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    .locals 1

    .prologue
    .line 890
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    return-object v0
.end method

.method private createOnReadCompletedCallback()Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;
    .locals 1

    .prologue
    .line 801
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    return-object v0
.end method

.method private createPaneViewTouchListener()Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;
    .locals 1

    .prologue
    .line 788
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$13;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$13;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    return-object v0
.end method

.method private createScrollListener(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/paneview/PaneView$ScrollListener;
    .locals 1
    .parameter "paneIndicator"

    .prologue
    .line 756
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$11;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$11;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/layer/PaneIndicator;)V

    return-object v0
.end method

.method private enterEditMode()V
    .locals 3

    .prologue
    .line 695
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditModeFade:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->enableEditing(Z)V

    .line 697
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setBackplateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 699
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 700
    return-void
.end method

.method private exitEditMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 703
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditModeFade:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->enableEditing(Z)V

    .line 707
    const/4 v1, 0x0

    .line 708
    .local v1, emptyPanes:I
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    .line 709
    .local v0, currentPane:I
    const/4 v2, 0x0

    .local v2, pane:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 710
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->isPaneEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    add-int/2addr v1, v3

    .line 709
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v3, v5

    .line 710
    goto :goto_1

    .line 714
    :cond_1
    if-eqz v1, :cond_2

    .line 717
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->offsetAllPanes(I)V

    .line 718
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    sub-int v4, v0, v1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    .line 719
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 720
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 721
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRendererFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 722
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->offsetAllPanes(I)V

    .line 726
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->removeEmptyPanes()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 727
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 728
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->writeToStorage()V

    .line 731
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setBackplateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 733
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    const v4, 0x7f020002

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 734
    return-void
.end method

.method private onCloseEnd(Z)V
    .locals 1
    .parameter "animating"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onAppTrayClosed(Z)V

    .line 436
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisabledWhileClosing:Z

    .line 437
    return-void
.end method

.method private saveNudgeData()V
    .locals 5

    .prologue
    .line 489
    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSavedAppTrayStartCounter:I

    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    iget v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSavedAppTrayStartCounter:I

    if-le v2, v3, :cond_0

    .line 491
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v3, "home_apptray"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 493
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 494
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "preference_apptray_counter"

    iget v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 495
    const-string v2, "preference_apptray_shortcut_created"

    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 496
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 497
    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    iput v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSavedAppTrayStartCounter:I

    .line 499
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private setFreeSort()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 688
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->sort(Ljava/util/Comparator;)V

    .line 689
    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 690
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 692
    return-void
.end method

.method private setupEditButton(Landroid/view/View;)V
    .locals 2
    .parameter "appTrayView"

    .prologue
    .line 588
    const v0, 0x7f0c0004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    .line 589
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    return-void
.end method

.method private setupPaneIndicator(Landroid/content/Context;Landroid/view/View;)Lcom/sonyericsson/home/layer/PaneIndicator;
    .locals 7
    .parameter "context"
    .parameter "appTrayView"

    .prologue
    .line 737
    const v4, 0x7f0c0005

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/layer/PaneIndicator;

    .line 739
    .local v2, paneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 740
    .local v0, indicatorSize:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0004

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 741
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02000e

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 743
    .local v1, leftArrow:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02000f

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 745
    .local v3, rightArrow:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {v2, v4, v1, v3}, Lcom/sonyericsson/home/layer/PaneIndicator;->setAppearance(FLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 746
    return-object v2
.end method

.method private setupSortButton(Landroid/view/View;)V
    .locals 2
    .parameter "appTrayView"

    .prologue
    .line 604
    const/high16 v0, 0x7f0c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    .line 605
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$9;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$9;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    return-void
.end method

.method private showToast(Landroid/widget/Toast;I)V
    .locals 2
    .parameter "toast"
    .parameter "addedDuration"

    .prologue
    .line 403
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;ILandroid/widget/Toast;)V

    .line 428
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 429
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 430
    return-void
.end method

.method private writeToStorage()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 995
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncCompleted:Z

    if-eqz v2, :cond_0

    .line 996
    new-instance v1, Lcom/sonyericsson/storage/Root;

    const-string v2, "apptray"

    invoke-direct {v1, v2}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 997
    .local v1, root:Lcom/sonyericsson/storage/Root;
    const-string v2, "version"

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 998
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getModel()Lcom/sonyericsson/util/PagedList;

    move-result-object v0

    .line 999
    .local v0, model:Lcom/sonyericsson/util/PagedList;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 1000
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V

    .line 1002
    .end local v0           #model:Lcom/sonyericsson/util/PagedList;
    .end local v1           #root:Lcom/sonyericsson/storage/Root;
    :cond_0
    return-void
.end method


# virtual methods
.method public close(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    const/4 v1, 0x1

    .line 470
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->exitEditMode()V

    .line 471
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 472
    iput-boolean v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisabledWhileClosing:Z

    .line 473
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setTouchLocked(Z)V

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 476
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->saveNudgeData()V

    .line 478
    if-eqz p1, :cond_1

    .line 479
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->closeAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->onCloseEnd(Z)V

    goto :goto_0
.end method

.method public getCurrentSorting()I
    .locals 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAlphabeticalComparator:Ljava/util/Comparator;

    if-ne v0, v1, :cond_0

    .line 1010
    const/4 v0, 0x1

    .line 1016
    :goto_0
    return v0

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mMostUsedComparator:Ljava/util/Comparator;

    if-ne v0, v1, :cond_1

    .line 1012
    const/4 v0, 0x2

    goto :goto_0

    .line 1013
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRecentlyInstalledComparator:Ljava/util/Comparator;

    if-ne v0, v1, :cond_2

    .line 1014
    const/4 v0, 0x3

    goto :goto_0

    .line 1016
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEditing()Z
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->isEditingEnabled()Z

    move-result v0

    .line 455
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSyncCompleted()Z
    .locals 1

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncCompleted:Z

    return v0
.end method

.method public moveToFirstPane()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    .line 549
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1025
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->exitEditMode()V

    .line 1027
    const/4 v0, 0x1

    .line 1030
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->removeOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 463
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncCompleted:Z

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks()V

    .line 466
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->saveNudgeData()V

    .line 467
    return-void
.end method

.method public open()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 502
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 503
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/paneview/PaneView;->setTouchLocked(Z)V

    .line 504
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 506
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->openAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 509
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v4, "home_apptray"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 511
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preference_apptray_sort_order"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 514
    .local v2, sortMode:I
    if-nez v2, :cond_2

    .line 515
    iput-object v7, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 516
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v4, 0x7f02004a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 517
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->clearAllRenderers()V

    .line 540
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v3, v7}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 541
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 542
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRendererFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 545
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .end local v2           #sortMode:I
    :cond_1
    return-void

    .line 518
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    .restart local v2       #sortMode:I
    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 519
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAlphabeticalComparator:Ljava/util/Comparator;

    iput-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 520
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v4, 0x7f020049

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 521
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 522
    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 523
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mMostUsedComparator:Ljava/util/Comparator;

    iput-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 524
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v4, 0x7f02004c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 525
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 526
    :cond_4
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 527
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRecentlyInstalledComparator:Ljava/util/Comparator;

    iput-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 528
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v4, 0x7f02004b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 529
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 534
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 535
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setFreeSort()V

    .line 536
    const-string v3, "apptray"

    const-string v4, "Sort failed"

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setAppTrayControllerListener(Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    .line 445
    return-void
.end method

.method public setOriginRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->setOriginRect(Landroid/graphics/Rect;)V

    .line 441
    return-void
.end method
