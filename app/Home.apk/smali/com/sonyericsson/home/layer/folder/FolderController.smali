.class public Lcom/sonyericsson/home/layer/folder/FolderController;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/Controller;


# static fields
.field private static final SCROLL_VELOCITY:F = 0.02f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFolderAdapter:Lcom/sonyericsson/home/layer/folder/FolderAdapter;

.field private final mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

.field private final mFolderLayout:Lcom/sonyericsson/home/layer/folder/FolderLayout;

.field private mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

.field private final mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnGridChangedListener:Lcom/sonyericsson/home/layer/folder/FolderLocator$OnGridChangedListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mPaneView:Lcom/sonyericsson/paneview/PaneView;

.field private mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

.field private mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

.field private mScroll:F

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private mTitleView:Landroid/widget/TextView;

.field private mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

.field private mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

.field private mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 14
    .parameter "context"
    .parameter "folderLayout"
    .parameter "transferHandler"
    .parameter "adapterHelper"
    .parameter "infoGroupManager"
    .parameter "resourceLoader"

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$1;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    .line 187
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$2;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    .line 200
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$3;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 220
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$4;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$4;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOnGridChangedListener:Lcom/sonyericsson/home/layer/folder/FolderLocator$OnGridChangedListener;

    .line 228
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$5;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$5;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    .line 242
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$6;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$6;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 254
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$7;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$7;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 264
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$8;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$8;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 275
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$9;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$9;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mScrollRunnable:Ljava/lang/Runnable;

    .line 292
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mContext:Landroid/content/Context;

    .line 293
    const v2, 0x7f0e002c

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/sonyericsson/home/layer/folder/FolderLayout;

    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderLayout:Lcom/sonyericsson/home/layer/folder/FolderLayout;

    .line 294
    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 295
    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 296
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/folder/FolderController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 298
    new-instance v4, Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-direct {v4}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;-><init>()V

    .line 299
    .local v4, modelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;
    invoke-direct {p0, v4}, Lcom/sonyericsson/home/layer/folder/FolderController;->createFolderLocator(Lcom/sonyericsson/home/layer/folder/FolderModelManager;)Lcom/sonyericsson/home/layer/folder/FolderLocator;

    move-result-object v5

    .line 300
    .local v5, folderLocator:Lcom/sonyericsson/home/layer/folder/FolderLocator;
    new-instance v7, Lcom/sonyericsson/home/layer/LayerRendererFactory;

    invoke-direct {v7}, Lcom/sonyericsson/home/layer/LayerRendererFactory;-><init>()V

    .line 301
    .local v7, rendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;
    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderFlow;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/home/layer/folder/FolderFlow;-><init>(Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;Lcom/sonyericsson/home/layer/folder/FolderModelManager;Lcom/sonyericsson/home/layer/folder/FolderLocator;Lcom/sonyericsson/home/data/InfoGroupInterface;Lcom/sonyericsson/home/layer/LayerRendererFactory;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    .line 304
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    new-instance v8, Lcom/sonyericsson/home/layer/folder/FolderController$10;

    move-object v9, p0

    move-object/from16 v10, p4

    move-object v11, v4

    move-object v12, v5

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/sonyericsson/home/layer/folder/FolderController$10;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/folder/FolderModelManager;Lcom/sonyericsson/home/layer/folder/FolderLocator;Lcom/sonyericsson/home/layer/LayerRendererFactory;)V

    invoke-virtual {v2, v8}, Lcom/sonyericsson/home/layer/InfoGroupManager;->registerOnLoadCompletedCallback(Ljava/lang/Runnable;)V

    .line 329
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderAdapter:Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/layer/folder/FolderAdapter;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderAdapter:Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/resourceload/ResourceLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderFlow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/InfoGroupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderLocator$OnGridChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOnGridChangedListener:Lcom/sonyericsson/home/layer/folder/FolderLocator$OnGridChangedListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/paneview/RendererFactory;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/folder/FolderController;->setupPaneView(Lcom/sonyericsson/paneview/RendererFactory;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderLayout:Lcom/sonyericsson/home/layer/folder/FolderLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTitleView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/transfer/TransferSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/transfer/TransferHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/layer/folder/FolderController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/layer/folder/FolderController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mScroll:F

    return v0
.end method

.method static synthetic access$902(Lcom/sonyericsson/home/layer/folder/FolderController;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mScroll:F

    return p1
.end method

.method private createFolderLocator(Lcom/sonyericsson/home/layer/folder/FolderModelManager;)Lcom/sonyericsson/home/layer/folder/FolderLocator;
    .locals 5
    .parameter "modelManager"

    .prologue
    .line 369
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 370
    .local v3, resources:Landroid/content/res/Resources;
    const v4, 0x7f0a000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 371
    .local v1, cellWidth:I
    const v4, 0x7f0a000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 374
    .local v0, cellHeight:I
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonyericsson/home/bidi/Utils;->isRtlAlphabet(Landroid/content/Context;)Z

    move-result v2

    .line 376
    .local v2, isRtl:Z
    new-instance v4, Lcom/sonyericsson/home/layer/folder/FolderLocator;

    invoke-direct {v4, p1, v1, v0, v2}, Lcom/sonyericsson/home/layer/folder/FolderLocator;-><init>(Lcom/sonyericsson/home/layer/folder/FolderModelManager;IIZ)V

    return-object v4
.end method

.method private setupPaneView(Lcom/sonyericsson/paneview/RendererFactory;)V
    .locals 8
    .parameter "rendererFactory"

    .prologue
    const/4 v5, 0x0

    .line 381
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 382
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 383
    .local v3, stiffness:Landroid/util/TypedValue;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 384
    .local v0, damping:Landroid/util/TypedValue;
    const v4, 0x7f0b0002

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 385
    const v4, 0x7f0b0003

    invoke-virtual {v2, v4, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 386
    new-instance v1, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v1}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    .line 387
    .local v1, dynamics:Lcom/sonyericsson/util/SpringDynamics;
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 388
    const/high16 v4, 0x4000

    invoke-virtual {v1, v4}, Lcom/sonyericsson/util/SpringDynamics;->setFriction(F)V

    .line 390
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/paneview/PaneView;->setScrollDynamics(Lcom/sonyericsson/util/Dynamics;)V

    .line 391
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 392
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 393
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 394
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const v5, 0x7f02004b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    const v5, 0x7f02000b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setFocusedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    sget v5, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 403
    return-void
.end method


# virtual methods
.method public closeFolder(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->closeFolder(Z)V

    .line 342
    return-void
.end method

.method public getCurrentFolder()Lcom/sonyericsson/home/data/InfoGroup;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->getFolder()Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isRenamingFolder()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->isRenamingFolder()Z

    move-result v0

    return v0
.end method

.method public notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->contains(Lcom/sonyericsson/home/data/Info;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderAdapter:Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderAdapter:Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->notifyDataSetChanged()V

    .line 418
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->isRenamingFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->onClickTitle(Z)V

    .line 455
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->unregisterInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V

    .line 354
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderLayout:Lcom/sonyericsson/home/layer/folder/FolderLayout;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 360
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 362
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method public openFolder(Lcom/sonyericsson/home/data/InfoGroup;Landroid/graphics/Rect;Z)V
    .locals 1
    .parameter "infoGroup"
    .parameter "sourceRect"
    .parameter "animate"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->openFolder(Lcom/sonyericsson/home/data/InfoGroup;Landroid/graphics/Rect;Z)V

    .line 334
    return-void
.end method

.method public requestFocus()Z
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public setFolderListener(Lcom/sonyericsson/home/layer/folder/FolderListener;)V
    .locals 1
    .parameter "folderListener"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->setFolderListener(Lcom/sonyericsson/home/layer/folder/FolderListener;)V

    .line 338
    return-void
.end method

.method public setRenamingFolder(Z)V
    .locals 1
    .parameter "renamingFolder"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderFlow:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->setRenamingFolder(Z)V

    .line 445
    return-void
.end method
