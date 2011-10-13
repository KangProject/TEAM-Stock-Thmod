.class public Lcom/sonyericsson/home/layer/stage/StageController;
.super Ljava/lang/Object;
.source "StageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;
    }
.end annotation


# static fields
.field private static final CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri; = null

.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "stage"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1


# instance fields
.field private mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

.field private final mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

.field private final mContext:Landroid/content/Context;

.field private mCreatingFolder:Z

.field private mDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

.field private mFakeStage:Landroid/widget/ImageView;

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

.field private final mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPaneView:Lcom/sonyericsson/paneview/PaneView;

.field protected mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

.field private mPickedUpItemPosition:I

.field private mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

.field private mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

.field private mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

.field private mShowAnim:Landroid/view/animation/Animation;

.field private mShowAnimationRunning:Z

.field private mStageGlowView:Lcom/sonyericsson/home/layer/stage/StageGlowView;

.field private mStageView:Landroid/view/View;

.field private final mSyncable:Lcom/sonyericsson/home/layer/LayerController$Syncable;

.field private final mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

.field private mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

.field private mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
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
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mLoadCompleted:Z

    .line 187
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$1;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSyncable:Lcom/sonyericsson/home/layer/LayerController$Syncable;

    .line 200
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$2;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    .line 373
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$4;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$4;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 400
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$5;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$5;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 415
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$6;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$6;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 438
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$7;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$7;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 621
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageController$8;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/stage/StageController$8;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    .line 221
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    .line 222
    iput-object p4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 223
    iput-object p5, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 224
    iput-object p6, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 225
    iput-object p8, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 226
    iput-object p7, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 227
    iput-object p2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    .line 228
    iput-object p3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    .line 230
    new-instance v3, Lcom/sonyericsson/home/layer/HintInfo;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sonyericsson/home/layer/HintInfo;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    .line 232
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    invoke-virtual {p8, v3}, Lcom/sonyericsson/home/layer/InfoGroupManager;->registerInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 237
    .local v1, cellWidth:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 239
    .local v0, cellHeight:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 240
    .local v2, stageWidth:I
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-direct {v3, v2, v1, v0}, Lcom/sonyericsson/home/layer/stage/StageModelManager;-><init>(III)V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    .line 242
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 244
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    const-string v4, "stage"

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->createOnReadCompletedCallback()Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)V

    .line 246
    new-instance v3, Lcom/sonyericsson/home/layer/stage/StageRendererFactory;

    invoke-direct {v3}, Lcom/sonyericsson/home/layer/stage/StageRendererFactory;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/home/layer/stage/StageController;Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/transfer/TransferTarget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageGlowView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageGlowView:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sonyericsson/home/layer/stage/StageController;Lcom/sonyericsson/home/layer/stage/StageGlowView;)Lcom/sonyericsson/home/layer/stage/StageGlowView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageGlowView:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/HintView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintView:Lcom/sonyericsson/home/layer/HintView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sonyericsson/home/layer/stage/StageController;Lcom/sonyericsson/home/layer/HintView;)Lcom/sonyericsson/home/layer/HintView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintView:Lcom/sonyericsson/home/layer/HintView;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHideAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sonyericsson/home/layer/stage/StageController;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHideAnim:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sonyericsson/home/layer/stage/StageController;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnim:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/layer/stage/StageController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnimationRunning:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnimationRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/AdapterHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/home/layer/stage/StageController;Lcom/sonyericsson/home/layer/stage/StageAdapter;)Lcom/sonyericsson/home/layer/stage/StageAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mLoadCompleted:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerController$Syncable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSyncable:Lcom/sonyericsson/home/layer/LayerController$Syncable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/home/layer/stage/StageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpItemPosition:I

    return v0
.end method

.method static synthetic access$2302(Lcom/sonyericsson/home/layer/stage/StageController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpItemPosition:I

    return p1
.end method

.method static synthetic access$2400(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/transfer/TransferSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/transfer/TransferHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/home/layer/stage/StageController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHinting:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHinting:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/HintInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/home/layer/stage/StageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintLocation:I

    return v0
.end method

.method static synthetic access$2802(Lcom/sonyericsson/home/layer/stage/StageController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHintLocation:I

    return p1
.end method

.method static synthetic access$2900(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sonyericsson/home/layer/stage/StageController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/stage/StageController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->writeToStorage()V

    return-void
.end method

.method static synthetic access$3002(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCreatingFolder:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/home/layer/stage/StageController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->finishCreateFolder()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/InfoGroupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/sonyericsson/home/layer/stage/StageController;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/resourceload/ResourceLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sonyericsson/home/layer/stage/StageController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    return-object p1
.end method

.method private addInfo(Lcom/sonyericsson/home/data/Info;I)Z
    .locals 2
    .parameter "info"
    .parameter "stageLocation"

    .prologue
    .line 727
    const/4 v0, 0x0

    .line 730
    .local v0, itemAdded:Z
    if-ltz p2, :cond_0

    const/4 v1, 0x4

    if-gt p2, v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->addItem(Lcom/sonyericsson/home/data/Info;I)Z

    move-result v0

    .line 735
    :cond_0
    if-eqz v0, :cond_1

    .line 736
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->writeToStorage()V

    .line 737
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 740
    :cond_1
    return v0
.end method

.method private createOnReadCompletedCallback()Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lcom/sonyericsson/home/layer/stage/StageController$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/stage/StageController$3;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    return-object v0
.end method

.method private createSnapshot()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 768
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mLoadCompleted:Z

    if-nez v3, :cond_0

    .line 769
    const/4 v3, 0x0

    .line 779
    :goto_0
    return-object v3

    .line 772
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 773
    .local v2, stageHeight:I
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 775
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 776
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 777
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    move-object v3, v0

    .line 779
    goto :goto_0
.end method

.method private finishCreateFolder()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 834
    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    .line 835
    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCreatingFolder:Z

    .line 837
    return-void
.end method

.method private writeToStorage()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 664
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mLoadCompleted:Z

    if-eqz v2, :cond_0

    .line 665
    new-instance v1, Lcom/sonyericsson/storage/Root;

    const-string v2, "stage"

    invoke-direct {v1, v2}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 666
    .local v1, root:Lcom/sonyericsson/storage/Root;
    const-string v2, "version"

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 667
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getModel()Ljava/util/ArrayList;

    move-result-object v0

    .line 668
    .local v0, model:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 669
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V

    .line 671
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
    .line 701
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
    .line 723
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

    .line 705
    invoke-static {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->create(Landroid/os/Bundle;)Lcom/sonyericsson/home/data/ShortcutInfo;

    move-result-object v1

    .line 707
    .local v1, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    if-eqz v1, :cond_1

    .line 708
    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/home/layer/stage/StageController;->addInfo(Lcom/sonyericsson/home/data/Info;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 709
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getShortcutBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 710
    .local v0, shortcutBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 711
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v4}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 714
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->add(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/graphics/Bitmap;)V

    move v2, v4

    .line 719
    .end local v0           #shortcutBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnimationRunning:Z

    if-eqz v0, :cond_1

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->createSnapshot()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 760
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnimationRunning:Z

    .line 762
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 765
    :cond_1
    return-void
.end method

.method public itemAddedTo(Lcom/sonyericsson/home/data/InfoGroup;)V
    .locals 3
    .parameter "infoGroup"

    .prologue
    .line 683
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->positionOf(Lcom/sonyericsson/home/data/Info;)I

    move-result v0

    .line 684
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 685
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->setNewUniqueID()V

    .line 686
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 687
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    new-instance v2, Lcom/sonyericsson/animation/JumpRenderer;

    invoke-direct {v2}, Lcom/sonyericsson/animation/JumpRenderer;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 688
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mAdapter:Lcom/sonyericsson/home/layer/stage/StageAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 690
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->removeOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 784
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCreatingFolder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    if-nez v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 793
    :cond_0
    return-void
.end method

.method public onResume(Z)V
    .locals 3
    .parameter "dueToHomeButtonPressed"

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mCreatingFolder:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 803
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    new-instance v1, Lcom/sonyericsson/home/layer/stage/StageController$9;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/stage/StageController$9;-><init>(Lcom/sonyericsson/home/layer/stage/StageController;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;->onCreateFolder(Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;Z)V

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageController;->finishCreateFolder()V

    goto :goto_0
.end method

.method public setStageControllerListener(Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mListener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    .line 371
    return-void
.end method

.method public show(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 745
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

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 747
    if-eqz p1, :cond_2

    .line 748
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mFakeStage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mShowAnimationRunning:Z

    .line 754
    :cond_1
    :goto_0
    return-void

    .line 751
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public sparkle()V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageGlowView:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController;->mStageGlowView:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageGlowView;->sparkle()V

    .line 677
    :cond_0
    return-void
.end method
