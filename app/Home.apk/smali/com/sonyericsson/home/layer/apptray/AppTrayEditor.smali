.class public Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;
.super Ljava/lang/Object;
.source "AppTrayEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;
    }
.end annotation


# instance fields
.field private editorOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

.field private mAnimatorFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

.field private mBadgeOffset:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private mDoMirror:Z

.field private mEditingEnabled:Z

.field private mEnabledChecker:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;

.field private mGrid:Lcom/sonyericsson/grid/Grid;

.field private mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

.field private mListener:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

.field private mMinPaneSwitchDuration:I

.field private mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

.field private mNudgeShow:Landroid/view/animation/Animation;

.field private mOriginRect:Landroid/graphics/Rect;

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPaneSwitchMarginLeft:I

.field private mPaneSwitchMarginRight:I

.field private mPaneSwitchNudgeOffset:I

.field private mPaneView:Lcom/sonyericsson/paneview/PaneView;

.field private mPreviousHintPane:I

.field private mRightNudge:Lcom/sonyericsson/home/layer/HintView;

.field private mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

.field private mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

.field private standardLongPressListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/grid/Grid;Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 4
    .parameter "context"
    .parameter "view"
    .parameter "modelManager"
    .parameter "animatorFactory"
    .parameter "transferHandler"
    .parameter "grid"
    .parameter "adapter"
    .parameter "packageLoader"

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mOriginRect:Landroid/graphics/Rect;

    .line 173
    const v0, 0x7f0e0007

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/paneview/PaneView;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    .line 174
    iput-object p3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    .line 175
    iput-object p4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAnimatorFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    .line 176
    iput-object p6, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 177
    iput-object p7, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    .line 178
    iput-object p8, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 179
    iput-object p5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mBadgeOffset:I

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchMarginLeft:I

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchMarginRight:I

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchNudgeOffset:I

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mMinPaneSwitchDuration:I

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mCellWidth:I

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mCellHeight:I

    .line 196
    const v0, 0x7f0e000e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/HintView;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 197
    const v0, 0x7f0e000f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/HintView;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 200
    const v0, 0x7f04000b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mNudgeShow:Landroid/view/animation/Animation;

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mNudgeShow:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 205
    invoke-direct {p0, p5}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->createStandardLongPressListener(Lcom/sonyericsson/home/transfer/TransferHandler;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->standardLongPressListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 206
    invoke-direct {p0, p5}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->createOnItemLongClickListener(Lcom/sonyericsson/home/transfer/TransferHandler;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->editorOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->createEnabledChecker()Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mEnabledChecker:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;

    .line 208
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->createTransferTarget()Lcom/sonyericsson/home/transfer/TransferTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    sget v1, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->standardLongPressListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAnimatorFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mEditingEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->showNudgeIfNeeded(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->hideNudge()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/grid/Grid;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mGrid:Lcom/sonyericsson/grid/Grid;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mDoMirror:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPreviousHintPane:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPreviousHintPane:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAnimatorFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;Lcom/sonyericsson/animation/Renderer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->dropItem(Lcom/sonyericsson/animation/Renderer;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchMarginLeft:I

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mCellWidth:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchMarginRight:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mBadgeOffset:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mCellHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mListener:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mOriginRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mMinPaneSwitchDuration:I

    return v0
.end method

.method private createEnabledChecker()Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;
    .locals 1

    .prologue
    .line 263
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)V

    return-object v0
.end method

.method private createOnItemLongClickListener(Lcom/sonyericsson/home/transfer/TransferHandler;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .parameter "transferHandler"

    .prologue
    .line 506
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;Lcom/sonyericsson/home/transfer/TransferHandler;)V

    return-object v0
.end method

.method private createStandardLongPressListener(Lcom/sonyericsson/home/transfer/TransferHandler;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .parameter "transferHandler"

    .prologue
    .line 272
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;Lcom/sonyericsson/home/transfer/TransferHandler;)V

    return-object v0
.end method

.method private createTransferTarget()Lcom/sonyericsson/home/transfer/TransferTarget;
    .locals 1

    .prologue
    .line 324
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)V

    return-object v0
.end method

.method private dropItem(Lcom/sonyericsson/animation/Renderer;)V
    .locals 5
    .parameter "renderer"

    .prologue
    .line 437
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPreviousHintPane:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->permanentlyMakeRoom(I)V

    .line 438
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPreviousHintPane:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->isPaneFull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 439
    if-eqz p1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPreviousHintPane:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->getPaneAbsoluteOffset(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/sonyericsson/animation/Renderer;->offset(IIJ)V

    .line 442
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAnimatorFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getOriginalPickedUpPosition()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->restorePickedUpItem()V

    .line 457
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getNumberOfPanes()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->isPaneEmpty(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->addEmptyPane()V

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->notifyObservers()V

    .line 461
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mListener:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    if-eqz v1, :cond_2

    .line 462
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mListener:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;->onEditEnd()V

    .line 464
    :cond_2
    return-void

    .line 447
    :cond_3
    if-eqz p1, :cond_4

    .line 448
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 449
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/paneview/PaneView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 450
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPreviousHintPane:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->getPaneAbsoluteOffset(I)I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/sonyericsson/animation/Renderer;->offset(IIJ)V

    .line 452
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 453
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAnimatorFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getPickedUpPosition()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 455
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->dropPickedUpItem()V

    goto :goto_0
.end method

.method private hideNudge()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 492
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintView;->clearAnimation()V

    .line 494
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintView;->clearAnimation()V

    .line 496
    return-void
.end method

.method private showNudgeIfNeeded(I)Z
    .locals 8
    .parameter "x"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 467
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    .line 468
    .local v0, currentPane:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getNumberOfPanes()I

    move-result v1

    .line 469
    .local v1, maxPane:I
    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchMarginLeft:I

    iget v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchNudgeOffset:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_3

    .line 470
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mListener:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    invoke-interface {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;->onNudgeHint()V

    .line 471
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mDoMirror:Z

    if-nez v2, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mDoMirror:Z

    if-eqz v2, :cond_7

    sub-int v2, v1, v5

    if-ge v0, v2, :cond_7

    .line 472
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/HintView;->getVisibility()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 473
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2, v6}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 474
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mLeftNudge:Lcom/sonyericsson/home/layer/HintView;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mNudgeShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/HintView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    move v2, v5

    .line 488
    :goto_0
    return v2

    .line 478
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getRight()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchMarginRight:I

    iget v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneSwitchNudgeOffset:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_7

    .line 479
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mListener:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    invoke-interface {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;->onNudgeHint()V

    .line 480
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mDoMirror:Z

    if-nez v2, :cond_4

    sub-int v2, v1, v5

    if-lt v0, v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mDoMirror:Z

    if-eqz v2, :cond_7

    if-lez v0, :cond_7

    .line 481
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/HintView;->getVisibility()I

    move-result v2

    if-ne v2, v7, :cond_6

    .line 482
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v2, v6}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 483
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mRightNudge:Lcom/sonyericsson/home/layer/HintView;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mNudgeShow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/HintView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    move v2, v5

    .line 485
    goto :goto_0

    :cond_7
    move v2, v6

    .line 488
    goto :goto_0
.end method


# virtual methods
.method public enableEditing(ZZ)V
    .locals 5
    .parameter "enable"
    .parameter "enableOnlyUninstall"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    if-eqz p1, :cond_2

    .line 235
    if-eqz p2, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mEnabledChecker:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->setEnabledChecker(Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;)V

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAnimatorFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    if-nez p2, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->enableFloatRenderers(Z)V

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/paneview/PaneView;->setEnableStandardRenderers(Z)V

    .line 251
    :goto_2
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mEditingEnabled:Z

    .line 252
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->editorOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 241
    goto :goto_1

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->standardLongPressListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    invoke-interface {v0}, Lcom/sonyericsson/home/transfer/TransferHandler;->cancelTransfer()V

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->cancelLongPress()V

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setEnableStandardRenderers(Z)V

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAnimatorFactory:Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->stopAllStandardAnimators()V

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->setEnabledChecker(Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;)V

    goto :goto_2
.end method

.method public isEditingEnabled()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mEditingEnabled:Z

    return v0
.end method

.method public setDoMirror(Z)V
    .locals 0
    .parameter "doMirror"

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mDoMirror:Z

    .line 260
    return-void
.end method

.method public setEditorListener(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mListener:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    .line 227
    return-void
.end method

.method public setOriginRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->mOriginRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 231
    return-void
.end method
