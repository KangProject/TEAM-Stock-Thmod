.class public Lcom/sonyericsson/home/layer/stage/StageController;
.super Ljava/lang/Object;
.source "StageController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;
    }
.end annotation


# static fields
.field private static final CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri; = null

.field private static final PRODUCT_DEFAULT_SETTINGS_FILE:Ljava/lang/String; = "/etc/customization/settings/com/sonyericsson/home/default_settings_stage.xml"

.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "stage"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1


# instance fields
.field private mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

.field private final mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

.field private mCanvas:Landroid/graphics/Canvas;

.field private final mContext:Landroid/content/Context;

.field private mCreatingFolder:Z

.field private mDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

.field private mFakeStage:Landroid/widget/ImageView;

.field private mFakeStageCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mHideAnim:Landroid/view/animation/Animation;

.field private mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

.field private mHintLocation:I

.field private mHintView:Lcom/sonyericsson/home/layer/HintView;

.field private mHinting:Z

.field private mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

.field private mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

.field private mLoadCompleted:Z

.field private final mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

.field private mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

.field private mOrientationLandscape:Z

.field private final mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPaneView:Lcom/sonyericsson/paneview/PaneView;

.field protected mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

.field private mPickedUpItemPosition:I

.field private mReadHandle:Ljava/lang/Object;

.field private mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

.field private mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

.field private mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

.field private mShowAnim:Landroid/view/animation/Animation;

.field private mShowAnimationRunning:Z

.field private mStageBreadth:I

.field private mStageGlowView:Lcom/sonyericsson/home/layer/stage/StageGlowView;

.field private mStageView:Landroid/view/View;

.field private final mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

.field private final mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

.field private mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

.field private mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const-string v0, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.home/custom_settings_stage.xml"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/home/layer/stage/StageController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/ImageView;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/InfoGroupManager;)V
    .locals 6
    .parameter "context"
    .parameter "stageViewStub"
    .parameter "fakeStage"
    .parameter "transferHandler"
    .parameter "packageLoader"
    .parameter "resourceLoader"
    .parameter "adapterHelper"
    .parameter "infoGroupManager"

    .prologue
    const/4 v5, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-boolean v5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mLoadCompleted:Z

    .line 208
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCanvas:Landroid/graphics/Canvas;

    .line 210
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$1;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    .line 225
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$2;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    .line 427
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$6;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$6;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 462
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$7;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$7;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 471
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$8;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$8;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 494
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$9;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$9;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 674
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$10;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$10;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 243
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    .line 244
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    .line 245
    iput-object p4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 246
    iput-object p5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 247
    iput-object p6, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 248
    iput-object p8, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 249
    iput-object p7, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 250
    iput-object p2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    .line 251
    iput-object p3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    .line 253
    new-instance v3, Lcom/sonyericsson/home/layer/HintInfo;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sonyericsson/home/layer/HintInfo;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    .line 255
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    invoke-virtual {p8, v3}, Lcom/sonyericsson/home/layer/InfoGroupManager;->registerInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V

    .line 258
    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 259
    .local v1, cellWidth:I
    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 260
    .local v0, cellHeight:I
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageModelManager;

    iget-boolean v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    invoke-direct {v3, v4, v1, v0}, Lcom/sonyericsson/home/layer/stage/StageModelManager;-><init>(ZII)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    .line 262
    const v3, 0x7f0a0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageBreadth:I

    .line 264
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 265
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageRendererFactory;

    invoke-direct {v3}, Lcom/sonyericsson/home/layer/stage/StageRendererFactory;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    .line 266
    return-void

    .end local v0           #cellHeight:I
    .end local v1           #cellWidth:I
    :cond_0
    move v3, v5

    .line 243
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/layer/stage/StageController;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/stage/StageController;->syncAndSetup(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/layer/stage/StageController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnimationRunning:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnimationRunning:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/layer/stage/StageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpItemPosition:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sonyericsson/home/layer/stage/StageController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpItemPosition:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/transfer/TransferSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/transfer/TransferHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/layer/stage/StageController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHinting:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHinting:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/HintInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/home/layer/stage/StageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintLocation:I

    return v0
.end method

.method static synthetic access$2102(Lcom/sonyericsson/home/layer/stage/StageController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintLocation:I

    return p1
.end method

.method static synthetic access$2200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/HintView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintView:Lcom/sonyericsson/home/layer/HintView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sonyericsson/home/layer/stage/StageController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCreatingFolder:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/home/layer/stage/StageController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->finishCreateFolder()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/stage/StageController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->writeToStorage()V

    return-void
.end method

.method static synthetic access$402(Lcom/sonyericsson/home/layer/stage/StageController;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mReadHandle:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/InfoGroupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/sonyericsson/home/layer/stage/StageController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/resourceload/ResourceLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    return-object v0
.end method

.method private addInfo(Lcom/sonyericsson/home/data/Info;I)Z
    .locals 2
    .parameter "info"
    .parameter "stageLocation"

    .prologue
    .line 781
    const/4 v0, 0x0

    .line 784
    .local v0, itemAdded:Z
    if-ltz p2, :cond_0

    const/4 v1, 0x4

    if-gt p2, v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->addItem(Lcom/sonyericsson/home/data/Info;I)Z

    move-result v0

    .line 789
    :cond_0
    if-eqz v0, :cond_1

    .line 790
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->writeToStorage()V

    .line 791
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 794
    :cond_1
    return v0
.end method

.method private createOnReadCompletedCallback()Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lcom/sonyericsson/home/layer/stage/StageController$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/stage/StageController$3;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    return-object v0
.end method

.method private finishCreateFolder()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 933
    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    .line 934
    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCreatingFolder:Z

    .line 936
    return-void
.end method

.method private getSnapshot()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 824
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mLoadCompleted:Z

    if-nez v3, :cond_0

    move-object v3, v4

    .line 848
    :goto_0
    return-object v3

    .line 828
    :cond_0
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageBreadth:I

    move v2, v3

    .line 829
    .local v2, stageWidth:I
    :goto_1
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    move v1, v3

    .line 831
    .local v1, stageHeight:I
    :goto_2
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStageCache:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStageCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    move-object v0, v3

    .line 833
    .local v0, stageBitmap:Landroid/graphics/Bitmap;
    :goto_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v1, :cond_5

    .line 835
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 836
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStageCache:Ljava/lang/ref/SoftReference;

    .line 841
    :goto_4
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 842
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 843
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCanvas:Landroid/graphics/Canvas;

    iget-boolean v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v4, v2, v4

    int-to-float v4, v4

    :goto_5
    iget-boolean v5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    if-eqz v5, :cond_7

    move v5, v6

    :goto_6
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 845
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 846
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    move-object v3, v0

    .line 848
    goto :goto_0

    .line 828
    .end local v0           #stageBitmap:Landroid/graphics/Bitmap;
    .end local v1           #stageHeight:I
    .end local v2           #stageWidth:I
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    move v2, v3

    goto :goto_1

    .line 829
    .restart local v2       #stageWidth:I
    :cond_3
    iget v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageBreadth:I

    move v1, v3

    goto :goto_2

    .restart local v1       #stageHeight:I
    :cond_4
    move-object v0, v4

    .line 831
    goto :goto_3

    .line 838
    .restart local v0       #stageBitmap:Landroid/graphics/Bitmap;
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_4

    :cond_6
    move v4, v6

    .line 843
    goto :goto_5

    :cond_7
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v5, v1, v5

    int-to-float v5, v5

    goto :goto_6
.end method

.method private syncAndSetup(Ljava/util/ArrayList;Z)V
    .locals 13
    .parameter
    .parameter "forceWrite"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    const-wide/16 v11, 0x96

    const/4 v10, 0x0

    const/high16 v9, 0x4020

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 310
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->setModel(Ljava/util/ArrayList;)V

    .line 311
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v3, v4, v5}, Lcom/sonyericsson/home/data/SyncHelper;->sync(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Lcom/sonyericsson/home/resourceload/PackageLoader;)Z

    move-result v2

    .line 314
    .local v2, modelChanged:Z
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    .line 317
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    const v4, 0x7f0e0036

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/paneview/PaneView;

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    .line 318
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 319
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 323
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    sget v4, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 325
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 326
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setFocusedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v3, v8}, Lcom/sonyericsson/paneview/PaneView;->setPreferExternalFocus(Z)V

    .line 331
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v3, v8}, Lcom/sonyericsson/paneview/PaneView;->setRejectPaddingTouch(Z)V

    .line 332
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    new-instance v4, Lcom/sonyericsson/home/layer/stage/StageController$4;

    invoke-direct {v4, p0}, Lcom/sonyericsson/home/layer/stage/StageController$4;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V

    .line 351
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    const v4, 0x7f0e0035

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/layer/stage/StageGlowView;

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageGlowView:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    .line 352
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageGlowView:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    const v4, 0x7f020062

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/layer/stage/StageGlowView;->setGlowMask(I)V

    .line 354
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    const v4, 0x7f0e0037

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/layer/HintView;

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintView:Lcom/sonyericsson/home/layer/HintView;

    .line 355
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintView:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v3, v8}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 357
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageBreadth:I

    move v1, v3

    .line 358
    .local v1, dStageWidth:I
    :goto_0
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    if-eqz v3, :cond_4

    move v0, v10

    .line 359
    .local v0, dStageHeight:I
    :goto_1
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v1

    int-to-float v5, v0

    invoke-direct {v3, v7, v4, v7, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHideAnim:Landroid/view/animation/Animation;

    .line 360
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHideAnim:Landroid/view/animation/Animation;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4, v9}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 361
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 362
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v1

    int-to-float v5, v0

    invoke-direct {v3, v4, v7, v5, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnim:Landroid/view/animation/Animation;

    .line 363
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnim:Landroid/view/animation/Animation;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 364
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnim:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x4b

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 365
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 366
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnim:Landroid/view/animation/Animation;

    new-instance v4, Lcom/sonyericsson/home/layer/stage/StageController$5;

    invoke-direct {v4, p0}, Lcom/sonyericsson/home/layer/stage/StageController$5;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 391
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->preCacheShortcuts(Ljava/util/Collection;)V

    .line 393
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageAdapter;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-boolean v6, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOrientationLandscape:Z

    invoke-direct {v3, v4, v5, v6}, Lcom/sonyericsson/home/layer/stage/StageAdapter;-><init>(Lcom/sonyericsson/home/layer/stage/StageModelManager;Lcom/sonyericsson/home/layer/AdapterHelper;Z)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    .line 394
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V

    .line 396
    iput-boolean v8, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mLoadCompleted:Z

    .line 398
    if-nez p2, :cond_0

    if-eqz v2, :cond_1

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->writeToStorage()V

    .line 402
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    if-eqz v3, :cond_2

    .line 403
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    invoke-interface {v3}, Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;->onLoadCompleted()V

    .line 405
    :cond_2
    return-void

    .end local v0           #dStageHeight:I
    .end local v1           #dStageWidth:I
    :cond_3
    move v1, v10

    .line 357
    goto :goto_0

    .line 358
    .restart local v1       #dStageWidth:I
    :cond_4
    iget v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageBreadth:I

    move v0, v3

    goto :goto_1
.end method

.method private writeToStorage()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 714
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mLoadCompleted:Z

    if-eqz v2, :cond_0

    .line 715
    new-instance v1, Lcom/sonyericsson/storage/Root;

    const-string v2, "stage"

    invoke-direct {v1, v2}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 716
    .local v1, root:Lcom/sonyericsson/storage/Root;
    const-string v2, "version"

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 717
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getModel()Ljava/util/ArrayList;

    move-result-object v0

    .line 718
    .local v0, model:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 719
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V

    .line 721
    .end local v0           #model:Ljava/util/ArrayList;
    .end local v1           #root:Lcom/sonyericsson/storage/Root;
    :cond_0
    return-void
.end method


# virtual methods
.method public addActivity(ILcom/sonyericsson/home/data/ActivityInfo;)Z
    .locals 1
    .parameter "stageLocation"
    .parameter "activityInfo"

    .prologue
    .line 755
    new-instance v0, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v0, p2}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Lcom/sonyericsson/home/data/ActivityInfo;)V

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->addInfo(Lcom/sonyericsson/home/data/Info;I)Z

    move-result v0

    return v0
.end method

.method public addFolder(ILjava/lang/String;I)Z
    .locals 1
    .parameter "stageLocation"
    .parameter "folderName"
    .parameter "icon"

    .prologue
    .line 777
    new-instance v0, Lcom/sonyericsson/home/data/InfoGroup;

    invoke-direct {v0, p2, p3}, Lcom/sonyericsson/home/data/InfoGroup;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->addInfo(Lcom/sonyericsson/home/data/Info;I)Z

    move-result v0

    return v0
.end method

.method public addShortcut(Landroid/os/Bundle;I)Z
    .locals 5
    .parameter "shortcutData"
    .parameter "stageLocation"

    .prologue
    const/4 v4, 0x1

    .line 759
    invoke-static {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->create(Landroid/os/Bundle;)Lcom/sonyericsson/home/data/ShortcutInfo;

    move-result-object v1

    .line 761
    .local v1, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    if-eqz v1, :cond_1

    .line 762
    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/home/layer/stage/StageController;->addInfo(Lcom/sonyericsson/home/data/Info;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 763
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getShortcutBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 764
    .local v0, shortcutBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 765
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v4}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 768
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->add(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/graphics/Bitmap;)V

    move v2, v4

    .line 773
    .end local v0           #shortcutBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public calculateRect(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "location"
    .parameter "outRect"

    .prologue
    .line 863
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getIndexFromPosition(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->setupRect(ILandroid/graphics/Rect;)V

    .line 864
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 867
    .local v0, paneViewLocationOnScreen:[I
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/paneview/PaneView;->getLocationOnScreen([I)V

    .line 868
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 869
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 870
    return-void

    .line 864
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getDroppedAtInfo()Lcom/sonyericsson/home/data/Info;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method

.method public getHintLocation()I
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintLocation:I

    return v0
.end method

.method public getModel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getModel()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSavedPickedUpInfo()Lcom/sonyericsson/home/data/Info;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method

.method public hide(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnimationRunning:Z

    if-eqz v0, :cond_1

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 814
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 815
    if-eqz p1, :cond_1

    .line 816
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->getSnapshot()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 817
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnimationRunning:Z

    .line 818
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 821
    :cond_1
    return-void
.end method

.method public isCreatingFolder()Z
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCreatingFolder:Z

    return v0
.end method

.method public itemAddedTo(Lcom/sonyericsson/home/data/InfoGroup;)V
    .locals 3
    .parameter "infoGroup"

    .prologue
    .line 733
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->positionOf(Lcom/sonyericsson/home/data/Info;)I

    move-result v0

    .line 734
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 735
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->setNewUniqueID()V

    .line 736
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 737
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    new-instance v2, Lcom/sonyericsson/animation/JumpRenderer;

    invoke-direct {v2}, Lcom/sonyericsson/animation/JumpRenderer;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 738
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 740
    :cond_0
    return-void
.end method

.method public loadStoredModel()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    const-string v1, "stage"

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->createOnReadCompletedCallback()Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mReadHandle:Ljava/lang/Object;

    .line 413
    return-void
.end method

.method public notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 874
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->contains(Lcom/sonyericsson/home/data/Info;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 879
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->removeOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 853
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mReadHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mReadHandle:Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/storage/Storage;->cancelReadRoot(Ljava/lang/Object;)V

    .line 856
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCreatingFolder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageGlowView:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageGlowView:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageGlowView;->stopSparkle()V

    .line 892
    :cond_1
    return-void
.end method

.method public onResume(Z)V
    .locals 3
    .parameter "dueToHomeButtonPressed"

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCreatingFolder:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 902
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    new-instance v1, Lcom/sonyericsson/home/layer/stage/StageController$11;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/stage/StageController$11;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;->onCreateFolder(Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;Z)V

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->finishCreateFolder()V

    goto :goto_0
.end method

.method public requestFocus()Z
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->requestFocus()Z

    move-result v0

    .line 1029
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCreatingFolder(Z)V
    .locals 0
    .parameter "creatingFolder"

    .prologue
    .line 956
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCreatingFolder:Z

    .line 957
    return-void
.end method

.method public setDroppedAtInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter "droppedAtInfo"

    .prologue
    .line 976
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    .line 977
    return-void
.end method

.method public setHintLocation(I)V
    .locals 0
    .parameter "hintLocation"

    .prologue
    .line 1016
    iput p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintLocation:I

    .line 1017
    return-void
.end method

.method public setRetainedModel(Ljava/lang/Object;)V
    .locals 1
    .parameter "model"

    .prologue
    .line 424
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/home/layer/stage/StageController;->syncAndSetup(Ljava/util/ArrayList;Z)V

    .line 425
    return-void
.end method

.method public setSavedPickedUpInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter "savedPickedUpInfo"

    .prologue
    .line 996
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 997
    return-void
.end method

.method public setStageControllerListener(Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    .line 409
    return-void
.end method

.method public show(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHideAnim:Landroid/view/animation/Animation;

    if-ne v0, v1, :cond_1

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 801
    if-eqz p1, :cond_2

    .line 802
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnimationRunning:Z

    .line 808
    :cond_1
    :goto_0
    return-void

    .line 805
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public sparkle()V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageGlowView:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageGlowView:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageGlowView;->sparkle()V

    .line 727
    :cond_0
    return-void
.end method
