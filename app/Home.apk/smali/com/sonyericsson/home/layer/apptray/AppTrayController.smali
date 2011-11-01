.class public Lcom/sonyericsson/home/layer/apptray/AppTrayController;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private static final PRODUCT_DEFAULT_SETTINGS_FILE:Ljava/lang/String; = "/etc/customization/settings/com/sonyericsson/home/default_settings_apptray.xml"

.field private static final SHORTCUT_HINT_ADDED_DURATION:I = 0x3e8

.field public static final SORT_ALPHABETICAL:I = 0x1

.field public static final SORT_FREE:I = 0x0

.field public static final SORT_MOSTUSED:I = 0x2

.field public static final SORT_RECENTLYINSTALLED:I = 0x3

.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "apptray"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1

.field static final TAG:Ljava/lang/String; = "AppTrayController"

.field private static final VELOCITY_THRESHOLD:I = 0x258


# instance fields
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

.field private mAppTrayStartCounter:I

.field private mAppTrayView:Landroid/view/View;

.field private mCloseAnim:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private final mControls:Landroid/view/ViewGroup;

.field private mControlsHideAnim:Landroid/view/animation/Animation;

.field private mControlsShowAnim:Landroid/view/animation/Animation;

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

.field private final mCustomizationDoneSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

.field protected mDisableDuringSortDialog:Z

.field private mDisabledWhileClosing:Z

.field private final mEditButton:Landroid/widget/ImageView;

.field private mGrid:Lcom/sonyericsson/grid/Grid;

.field private mIsPackageSyncOngoing:Z

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

.field private mOpenAnim:Landroid/view/animation/Animation;

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

.field private mPaneView:Lcom/sonyericsson/paneview/PaneView;

.field private mPendingPackageSyncCounter:I

.field private mReadHandle:Ljava/lang/Object;

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

.field private final mSortButton:Landroid/widget/ImageView;

.field private mSyncCompleted:Z

.field private final mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

.field private mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    const-string v0, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.home/custom_settings_apptray.xml"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewStub;Landroid/view/ViewGroup;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/statistics/Statistics;)V
    .locals 15
    .parameter "context"
    .parameter "appTrayViewStub"
    .parameter "controls"
    .parameter "transferHandler"
    .parameter "packageLoader"
    .parameter "resourceLoader"
    .parameter "adapterHelper"
    .parameter "statistics"

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v12, 0x0

    iput v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    .line 267
    const/4 v12, 0x0

    iput v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPendingPackageSyncCounter:I

    .line 270
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsPackageSyncOngoing:Z

    .line 277
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    .line 287
    new-instance v12, Lcom/sonyericsson/home/layer/apptray/AppTrayController$1;

    invoke-direct {v12, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$1;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    .line 303
    new-instance v12, Lcom/sonyericsson/home/layer/apptray/AppTrayController$2;

    invoke-direct {v12, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$2;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCustomizationDoneSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    .line 337
    move-object/from16 v0, p1

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    .line 338
    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 339
    move-object/from16 v0, p2

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    .line 340
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 342
    new-instance v12, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    move-object v0, v12

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mResourceLoaderUtil:Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    .line 344
    move-object v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createComparators(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/statistics/Statistics;)V

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090002

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 348
    .local v11, rows:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090003

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 349
    .local v7, cols:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0012

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 351
    .local v6, cellWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0013

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 353
    .local v5, cellHeight:I
    new-instance v9, Lcom/sonyericsson/grid/GridSize;

    invoke-direct {v9}, Lcom/sonyericsson/grid/GridSize;-><init>()V

    .line 354
    .local v9, gridSize:Lcom/sonyericsson/grid/GridSize;
    iput v11, v9, Lcom/sonyericsson/grid/GridSize;->rows:I

    .line 355
    iput v7, v9, Lcom/sonyericsson/grid/GridSize;->cols:I

    .line 356
    new-instance v12, Lcom/sonyericsson/grid/Grid;

    invoke-direct {v12, v6, v5, v9}, Lcom/sonyericsson/grid/Grid;-><init>(IILcom/sonyericsson/grid/GridSize;)V

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 359
    new-instance v12, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-direct {v12}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;-><init>()V

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    .line 360
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    new-instance v13, Lcom/sonyericsson/util/PagedList;

    mul-int v14, v11, v7

    invoke-direct {v13, v14}, Lcom/sonyericsson/util/PagedList;-><init>(I)V

    invoke-virtual {v12, v13}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->setModel(Lcom/sonyericsson/util/PagedList;)V

    .line 363
    new-instance v12, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    iget-object v13, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget-object v14, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mGrid:Lcom/sonyericsson/grid/Grid;

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, p7

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/grid/Grid;)V

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    .line 366
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/sonyericsson/home/bidi/Utils;->isRtlAlphabet(Landroid/content/Context;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsRtl:Z

    .line 367
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    iget-boolean v13, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsRtl:Z

    invoke-virtual {v12, v13}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->setDoMirror(Z)V

    .line 370
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v13, "home_apptray"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 373
    .local v10, prefs:Landroid/content/SharedPreferences;
    const-string v12, "preference_apptray_counter"

    iget v13, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    .line 376
    iget v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    iput v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSavedAppTrayStartCounter:I

    .line 377
    const-string v12, "preference_apptray_shortcut_created"

    iget-boolean v13, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    .line 381
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v12, 0x4020

    invoke-direct {v4, v12}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 382
    .local v4, accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v12, 0x4020

    invoke-direct {v8, v12}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 383
    .local v8, decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;
    const/high16 v12, 0x7f04

    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCloseAnim:Landroid/view/animation/Animation;

    .line 384
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCloseAnim:Landroid/view/animation/Animation;

    invoke-virtual {v12, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 385
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCloseAnim:Landroid/view/animation/Animation;

    new-instance v13, Lcom/sonyericsson/home/layer/apptray/AppTrayController$3;

    invoke-direct {v13, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$3;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    invoke-virtual {v12, v13}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 399
    const v12, 0x7f040003

    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOpenAnim:Landroid/view/animation/Animation;

    .line 400
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOpenAnim:Landroid/view/animation/Animation;

    invoke-virtual {v12, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 401
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOpenAnim:Landroid/view/animation/Animation;

    new-instance v13, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/content/Context;)V

    invoke-virtual {v12, v13}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 427
    const v12, 0x7f040001

    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControlsHideAnim:Landroid/view/animation/Animation;

    .line 428
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControlsHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v12, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 429
    const v12, 0x7f040002

    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControlsShowAnim:Landroid/view/animation/Animation;

    .line 430
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControlsShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v12, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 432
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createOnPackageUpdateListener()Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    move-result-object v12

    iput-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 433
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v13, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v12, v13}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 436
    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControls:Landroid/view/ViewGroup;

    .line 437
    const v12, 0x7f0e0005

    move-object/from16 v0, p3

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    .line 438
    const v12, 0x7f0e0004

    move-object/from16 v0, p3

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    .line 439
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    new-instance v13, Lcom/sonyericsson/home/layer/apptray/AppTrayController$5;

    invoke-direct {v13, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$5;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v12, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    new-instance v13, Lcom/sonyericsson/home/layer/apptray/AppTrayController$6;

    invoke-direct {v13, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$6;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->saveSortOrder(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCustomizationDoneSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/util/PagedList;Lcom/sonyericsson/home/data/SyncHelper$Syncable;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->syncAndSetup(Lcom/sonyericsson/util/PagedList;Lcom/sonyericsson/home/data/SyncHelper$Syncable;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->initializePackageSync()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->finalizePackageSync()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/ResourceLoaderUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mResourceLoaderUtil:Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->onCloseEnd(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->writeToStorage()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/PaneIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    return v0
.end method

.method static synthetic access$308(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/widget/Toast;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->showToast(Landroid/widget/Toast;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisabledWhileClosing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->exitEditMode()V

    return-void
.end method

.method static synthetic access$902(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mReadHandle:Ljava/lang/Object;

    return-object p1
.end method

.method private createAppTrayEditor(Landroid/content/Context;Lcom/sonyericsson/home/transfer/TransferHandler;Landroid/view/View;Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/grid/Grid;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;
    .locals 11
    .parameter "context"
    .parameter "transferHandler"
    .parameter "view"
    .parameter "modelManager"
    .parameter "grid"

    .prologue
    .line 1148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020050

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1150
    .local v10, uninstallIcon:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 1152
    .local v9, badgeOffset:I
    new-instance v1, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-direct {v1, v2, v3, v10, v9}, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;Lcom/sonyericsson/home/resourceload/PackageLoader;Landroid/graphics/Bitmap;I)V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRendererFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    .line 1154
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRendererFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    iget-object v7, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    iget-object v8, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/grid/Grid;Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    .line 1156
    .local v0, editor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;
    new-instance v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$17;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$17;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->setEditorListener(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;)V

    .line 1186
    return-object v0
.end method

.method private createComparators(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/statistics/Statistics;)V
    .locals 1
    .parameter "resourceLoader"
    .parameter "statistics"

    .prologue
    .line 712
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAlphabeticalComparator:Ljava/util/Comparator;

    .line 721
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$9;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$9;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/statistics/Statistics;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mMostUsedComparator:Ljava/util/Comparator;

    .line 729
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/statistics/Statistics;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRecentlyInstalledComparator:Ljava/util/Comparator;

    .line 745
    return-void
.end method

.method private createDynamics(Landroid/content/Context;)Lcom/sonyericsson/util/SpringDynamics;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 1136
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1137
    .local v2, stiffness:Landroid/util/TypedValue;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1138
    .local v0, damping:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0b

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1140
    new-instance v1, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v1}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    .line 1141
    .local v1, dynamics:Lcom/sonyericsson/util/SpringDynamics;
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 1142
    return-object v1
.end method

.method private createOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 875
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$13;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$13;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    return-object v0
.end method

.method private createOnPackageUpdateListener()Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    .locals 1

    .prologue
    .line 1050
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    return-object v0
.end method

.method private createOnReadCompletedCallback()Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;
    .locals 1

    .prologue
    .line 926
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    return-object v0
.end method

.method private createPaneViewTouchListener()Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;
    .locals 1

    .prologue
    .line 893
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    return-object v0
.end method

.method private createScrollListener(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/paneview/PaneView$ScrollListener;
    .locals 1
    .parameter "paneIndicator"

    .prologue
    .line 861
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$12;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$12;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/layer/PaneIndicator;)V

    return-object v0
.end method

.method private exitEditMode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 789
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->isEditingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 790
    const-string v3, "AppTrayControler"

    const-string v4, "exitEditMode() called when editing already was disabled."

    invoke-static {v3, v4}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 795
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 796
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    if-eqz v3, :cond_1

    .line 797
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    invoke-interface {v3, v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onEditModeEnabled(Z)V

    .line 799
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-virtual {v3, v5, v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->enableEditing(ZZ)V

    .line 802
    const/4 v1, 0x0

    .line 803
    .local v1, emptyPanes:I
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    .line 804
    .local v0, currentPane:I
    const/4 v2, 0x0

    .local v2, pane:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 805
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->isPaneEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    :goto_1
    add-int/2addr v1, v3

    .line 804
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    .line 805
    goto :goto_1

    .line 809
    :cond_3
    if-eqz v1, :cond_4

    .line 812
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->offsetAllPanes(I)V

    .line 813
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    sub-int v4, v0, v1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    .line 814
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 815
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 816
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRendererFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 817
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->offsetAllPanes(I)V

    .line 821
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->removeEmptyPanes()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 822
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 823
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->writeToStorage()V

    .line 826
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02003d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setBackplate(Landroid/graphics/drawable/Drawable;)V

    .line 827
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    const v4, 0x7f020002

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 828
    return-void
.end method

.method private finalizePackageSync()V
    .locals 2

    .prologue
    .line 1116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsPackageSyncOngoing:Z

    .line 1117
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPendingPackageSyncCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPendingPackageSyncCounter:I

    .line 1118
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPendingPackageSyncCounter:I

    if-nez v0, :cond_0

    .line 1119
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->refreshModel()V

    .line 1121
    :cond_0
    return-void
.end method

.method private initializePackageSync()V
    .locals 1

    .prologue
    .line 1105
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsPackageSyncOngoing:Z

    if-nez v0, :cond_0

    .line 1106
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPendingPackageSyncCounter:I

    .line 1108
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsPackageSyncOngoing:Z

    .line 1109
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPendingPackageSyncCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPendingPackageSyncCounter:I

    .line 1110
    return-void
.end method

.method private onCloseEnd(Z)V
    .locals 1
    .parameter "animating"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onAppTrayClosed(Z)V

    .line 552
    :cond_0
    return-void
.end method

.method private refreshModel()V
    .locals 2

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->sort(Ljava/util/Comparator;)V

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->removeEmptyPanes()Z

    .line 1131
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->writeToStorage()V

    .line 1132
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 1133
    return-void
.end method

.method private saveNudgeData()V
    .locals 5

    .prologue
    .line 627
    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSavedAppTrayStartCounter:I

    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    iget v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSavedAppTrayStartCounter:I

    if-le v2, v3, :cond_0

    .line 629
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v3, "home_apptray"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 631
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 632
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "preference_apptray_counter"

    iget v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 633
    const-string v2, "preference_apptray_shortcut_created"

    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mShortcutCreatedByLongPress:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 634
    invoke-static {v0}, Lcom/sonyericsson/util/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 635
    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayStartCounter:I

    iput v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSavedAppTrayStartCounter:I

    .line 637
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private saveSortOrder(I)V
    .locals 5
    .parameter "sortMode"

    .prologue
    .line 1026
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v3, "home_apptray"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1028
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1029
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "preference_apptray_sort_order"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1030
    invoke-static {v0}, Lcom/sonyericsson/util/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 1031
    return-void
.end method

.method private setFreeSort()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 748
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->sort(Ljava/util/Comparator;)V

    .line 749
    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 750
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 751
    return-void
.end method

.method private setUp()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 980
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    .line 983
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setupPaneIndicator(Landroid/content/Context;Landroid/view/View;)Lcom/sonyericsson/home/layer/PaneIndicator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    .line 986
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 987
    .local v10, res:Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    const/high16 v1, 0x7f0e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/paneview/PaneView;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    .line 988
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 989
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createPaneViewTouchListener()Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V

    .line 990
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createDynamics(Landroid/content/Context;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPaneDynamics(Lcom/sonyericsson/util/Dynamics;)V

    .line 991
    const v0, 0x7f090009

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float v9, v0, v1

    .line 992
    .local v9, paneMargin:F
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v9}, Lcom/sonyericsson/paneview/PaneView;->setPaneMargin(F)V

    .line 993
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const v1, 0x7f020052

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 994
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const v1, 0x7f020004

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setFocusedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 996
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const v1, 0x7f02003d

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setBackplate(Landroid/graphics/drawable/Drawable;)V

    .line 997
    const v0, 0x7f0a0028

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 998
    .local v6, backPlateOffsetX:I
    const v0, 0x7f0a0029

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 999
    .local v7, backPlateWidth:I
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v6, v7}, Lcom/sonyericsson/paneview/PaneView;->setBackplateModifiers(II)V

    .line 1000
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPreferExternalFocus(Z)V

    .line 1002
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int v1, v6, v7

    sub-int v8, v0, v1

    .line 1004
    .local v8, focusPaddingRight:I
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v6, v2, v8, v2}, Lcom/sonyericsson/paneview/PaneView;->setFocusPadding(IIII)V

    .line 1006
    .end local v8           #focusPaddingRight:I
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V

    .line 1007
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-direct {p0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createScrollListener(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setScrollListener(Lcom/sonyericsson/paneview/PaneView$ScrollListener;)V

    .line 1008
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setVelocityThreshold(I)V

    .line 1011
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mGrid:Lcom/sonyericsson/grid/Grid;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createAppTrayEditor(Landroid/content/Context;Lcom/sonyericsson/home/transfer/TransferHandler;Landroid/view/View;Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/grid/Grid;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    .line 1015
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    iget-boolean v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsRtl:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->setDoMirror(Z)V

    .line 1016
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    iget-boolean v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsRtl:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->setDoMirror(Z)V

    .line 1017
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-boolean v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mIsRtl:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setDoMirror(Z)V

    .line 1020
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 1021
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    .line 1022
    return-void
.end method

.method private setupPaneIndicator(Landroid/content/Context;Landroid/view/View;)Lcom/sonyericsson/home/layer/PaneIndicator;
    .locals 8
    .parameter "context"
    .parameter "appTrayView"

    .prologue
    .line 831
    const v5, 0x7f0e0001

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/layer/PaneIndicator;

    .line 833
    .local v3, paneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 834
    .local v1, indicatorSize:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0004

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 835
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020012

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 837
    .local v2, leftArrow:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020013

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 839
    .local v4, rightArrow:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    invoke-virtual {v3, v5, v2, v4}, Lcom/sonyericsson/home/layer/PaneIndicator;->setAppearance(FLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 841
    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 843
    .local v0, fadeOnTimeout:Z
    if-eqz v0, :cond_0

    .line 844
    new-instance v5, Lcom/sonyericsson/home/layer/apptray/AppTrayController$11;

    invoke-direct {v5, p0, v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$11;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/layer/PaneIndicator;)V

    invoke-virtual {v3, v5}, Lcom/sonyericsson/home/layer/PaneIndicator;->setOnInactiveTimeoutListener(Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;)V

    .line 851
    :cond_0
    return-object v3
.end method

.method private showToast(Landroid/widget/Toast;I)V
    .locals 2
    .parameter "toast"
    .parameter "addedDuration"

    .prologue
    .line 465
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$7;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;ILandroid/widget/Toast;)V

    .line 490
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 491
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 492
    return-void
.end method

.method private syncAndSetup(Lcom/sonyericsson/util/PagedList;Lcom/sonyericsson/home/data/SyncHelper$Syncable;Z)V
    .locals 3
    .parameter
    .parameter "syncable"
    .parameter "forceWrite"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/util/PagedList",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;",
            "Lcom/sonyericsson/home/data/SyncHelper$Syncable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1034
    .local p1, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->setModel(Lcom/sonyericsson/util/PagedList;)V

    .line 1035
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {p2, v1, v2}, Lcom/sonyericsson/home/data/SyncHelper;->sync(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Lcom/sonyericsson/home/resourceload/PackageLoader;)Z

    move-result v0

    .line 1038
    .local v0, modelChanged:Z
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setUp()V

    .line 1040
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncCompleted:Z

    .line 1041
    if-nez p3, :cond_0

    if-eqz v0, :cond_1

    .line 1042
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->writeToStorage()V

    .line 1044
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    if-eqz v1, :cond_2

    .line 1045
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onSyncCompleted()V

    .line 1047
    :cond_2
    return-void
.end method

.method private writeToStorage()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1190
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncCompleted:Z

    if-eqz v2, :cond_0

    .line 1191
    new-instance v1, Lcom/sonyericsson/storage/Root;

    const-string v2, "apptray"

    invoke-direct {v1, v2}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 1192
    .local v1, root:Lcom/sonyericsson/storage/Root;
    const-string v2, "version"

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 1193
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getModel()Lcom/sonyericsson/util/PagedList;

    move-result-object v0

    .line 1194
    .local v0, model:Lcom/sonyericsson/util/PagedList;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 1195
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V

    .line 1197
    .end local v0           #model:Lcom/sonyericsson/util/PagedList;
    .end local v1           #root:Lcom/sonyericsson/storage/Root;
    :cond_0
    return-void
.end method


# virtual methods
.method public close(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 603
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 604
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->exitEditMode()V

    .line 608
    :cond_0
    iput-boolean v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisabledWhileClosing:Z

    .line 609
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setTouchLocked(Z)V

    .line 610
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControls:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 613
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->saveNudgeData()V

    .line 615
    if-eqz p1, :cond_2

    .line 616
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControls:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControlsHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 617
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCloseAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 622
    :cond_1
    :goto_0
    return-void

    .line 619
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->onCloseEnd(Z)V

    goto :goto_0
.end method

.method public enterEditMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 755
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->isEditingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    const-string v1, "AppTrayControler"

    const-string v2, "forceEditMode() called when editing already was enabled."

    invoke-static {v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    if-nez v1, :cond_1

    .line 763
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->addEmptyPane()V

    .line 764
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->notifyObservers()V

    .line 767
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 768
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 770
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    if-eqz v1, :cond_4

    move v0, v4

    .line 771
    .local v0, onlyUninstall:Z
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-virtual {v1, v4, v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->enableEditing(ZZ)V

    .line 772
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->setBackplate(Landroid/graphics/drawable/Drawable;)V

    .line 773
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 775
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    if-eqz v1, :cond_2

    .line 776
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    invoke-interface {v1, v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onEditModeEnabled(Z)V

    .line 779
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->hasEnabledItems(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    if-eqz v1, :cond_3

    .line 783
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onNoUninstallableItems()V

    .line 785
    :cond_3
    return-void

    .end local v0           #onlyUninstall:Z
    :cond_4
    move v0, v3

    .line 770
    goto :goto_0
.end method

.method public getButtonsDisabled()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisableDuringSortDialog:Z

    return v0
.end method

.method public getCurrentPane()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    return v0
.end method

.method public getCurrentSorting()I
    .locals 2

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAlphabeticalComparator:Ljava/util/Comparator;

    if-ne v0, v1, :cond_0

    .line 1205
    const/4 v0, 0x1

    .line 1211
    :goto_0
    return v0

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mMostUsedComparator:Ljava/util/Comparator;

    if-ne v0, v1, :cond_1

    .line 1207
    const/4 v0, 0x2

    goto :goto_0

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRecentlyInstalledComparator:Ljava/util/Comparator;

    if-ne v0, v1, :cond_2

    .line 1209
    const/4 v0, 0x3

    goto :goto_0

    .line 1211
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getModel()Lcom/sonyericsson/util/PagedList;

    move-result-object v0

    return-object v0
.end method

.method public isEditing()Z
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->isEditingEnabled()Z

    move-result v0

    .line 574
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 563
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
    .line 1200
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncCompleted:Z

    return v0
.end method

.method public loadStoredModel()V
    .locals 3

    .prologue
    .line 906
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v1, "apptray"

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createOnReadCompletedCallback()Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mReadHandle:Ljava/lang/Object;

    .line 907
    return-void
.end method

.method public moveToLeftPane()V
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToLeftPane()Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 709
    :cond_0
    return-void
.end method

.method public moveToPane(I)V
    .locals 2
    .parameter "pane"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    .line 695
    return-void
.end method

.method public moveToRightPane()V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToRightPane()Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 702
    :cond_0
    return-void
.end method

.method public notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 1231
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1220
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isSyncCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->exitEditMode()V

    .line 1222
    const/4 v0, 0x1

    .line 1225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 587
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mEditButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->removeOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 590
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mReadHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mReadHandle:Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/storage/Storage;->cancelReadRoot(Ljava/lang/Object;)V

    .line 593
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncCompleted:Z

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/PaneIndicator;->setOnInactiveTimeoutListener(Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;)V

    .line 596
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks()V

    .line 598
    :cond_1
    iput-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    .line 599
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->saveNudgeData()V

    .line 600
    return-void
.end method

.method public open(Z)V
    .locals 7
    .parameter "animate"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 640
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    .line 641
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/paneview/PaneView;->setTouchLocked(Z)V

    .line 642
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 643
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 644
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControls:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 645
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 647
    iput-boolean v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisabledWhileClosing:Z

    .line 649
    if-eqz p1, :cond_3

    .line 650
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControls:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mControlsShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 651
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayView:Landroid/view/View;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mOpenAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 659
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mContext:Landroid/content/Context;

    const-string v4, "home_apptray"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 661
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preference_apptray_sort_order"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 664
    .local v2, sortMode:I
    if-nez v2, :cond_4

    .line 665
    iput-object v6, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 666
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v4, 0x7f02005e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 679
    :cond_1
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_2
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->clearAllRenderers()V

    .line 686
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 687
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 688
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRendererFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 691
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .end local v2           #sortMode:I
    :cond_2
    return-void

    .line 653
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    if-eqz v3, :cond_0

    .line 654
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    invoke-interface {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onAppTrayOpened()V

    goto :goto_0

    .line 667
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    .restart local v2       #sortMode:I
    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 668
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAlphabeticalComparator:Ljava/util/Comparator;

    iput-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 669
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v4, 0x7f02005d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 670
    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 671
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mMostUsedComparator:Ljava/util/Comparator;

    iput-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 672
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v4, 0x7f020060

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 673
    :cond_6
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 674
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRecentlyInstalledComparator:Ljava/util/Comparator;

    iput-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 675
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v4, 0x7f02005f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 680
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 681
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setFreeSort()V

    .line 682
    const-string v3, "apptray"

    const-string v4, "Sort failed"

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setAppTrayControllerListener(Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 559
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayControllerListener:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    .line 560
    return-void
.end method

.method public setButtonsDisabled(Z)V
    .locals 0
    .parameter "disable"

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisableDuringSortDialog:Z

    .line 584
    return-void
.end method

.method public setOriginRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayEditor:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->setOriginRect(Landroid/graphics/Rect;)V

    .line 556
    return-void
.end method

.method public setRetainedModel(Ljava/lang/Object;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 918
    check-cast p1, Lcom/sonyericsson/util/PagedList;

    .end local p1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->syncAndSetup(Lcom/sonyericsson/util/PagedList;Lcom/sonyericsson/home/data/SyncHelper$Syncable;Z)V

    .line 919
    return-void
.end method

.method public sort(I)V
    .locals 6
    .parameter "sortMode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 495
    const/4 v1, 0x0

    .line 496
    .local v1, sameSort:Z
    if-nez p1, :cond_3

    .line 497
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    if-nez v2, :cond_0

    .line 498
    const/4 v1, 0x1

    .line 500
    :cond_0
    iput-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 501
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v3, 0x7f02005e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 522
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 523
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->offsetAllPanes(I)V

    .line 524
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    .line 525
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 526
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 527
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRendererFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 531
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->offsetAllPanes(I)V

    .line 537
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 540
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->saveSortOrder(I)V

    .line 541
    iput-boolean v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisableDuringSortDialog:Z

    .line 542
    return-void

    .line 502
    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    .line 503
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAlphabeticalComparator:Ljava/util/Comparator;

    if-ne v2, v3, :cond_4

    .line 504
    const/4 v1, 0x1

    .line 506
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mAlphabeticalComparator:Ljava/util/Comparator;

    iput-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 507
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v3, 0x7f02005d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 508
    :cond_5
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    .line 509
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mMostUsedComparator:Ljava/util/Comparator;

    if-ne v2, v3, :cond_6

    .line 510
    const/4 v1, 0x1

    .line 512
    :cond_6
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mMostUsedComparator:Ljava/util/Comparator;

    iput-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 513
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v3, 0x7f020060

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 514
    :cond_7
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 515
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRecentlyInstalledComparator:Ljava/util/Comparator;

    if-ne v2, v3, :cond_8

    .line 516
    const/4 v1, 0x1

    .line 518
    :cond_8
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mRecentlyInstalledComparator:Ljava/util/Comparator;

    iput-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mCurrentComparator:Ljava/util/Comparator;

    .line 519
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mSortButton:Landroid/widget/ImageView;

    const v3, 0x7f02005f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 532
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 533
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setFreeSort()V

    .line 534
    const-string v2, "apptray"

    const-string v3, "Sort failed"

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public sortFinished()V
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisableDuringSortDialog:Z

    .line 546
    return-void
.end method
