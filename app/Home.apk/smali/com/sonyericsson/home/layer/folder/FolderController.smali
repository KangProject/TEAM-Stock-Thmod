.class public Lcom/sonyericsson/home/layer/folder/FolderController;
.super Ljava/lang/Object;
.source "FolderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;
    }
.end annotation


# static fields
.field private static final OPEN_FOLDER_ICON_RESOURCES:[I


# instance fields
.field private mAlphaAnimationClose:Landroid/view/animation/AlphaAnimation;

.field private mAnimatorFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

.field private mContext:Landroid/content/Context;

.field private mFolderAdapter:Lcom/sonyericsson/home/layer/folder/FolderAdapter;

.field private mFolderBgLeft:Landroid/view/View;

.field private mFolderBgMiddle:Landroid/view/View;

.field private mFolderDim:Landroid/view/View;

.field private mFolderLayout:Landroid/widget/RelativeLayout;

.field private mFolderMidDownBg:Landroid/graphics/drawable/Drawable;

.field private mFolderMidUpBg:Landroid/graphics/drawable/Drawable;

.field private mFolderOpenOffset:I

.field private mFolderVerticalMargin:I

.field private mGrid:Lcom/sonyericsson/grid/Grid;

.field private mIconImageHeight:I

.field private mIconImageMarginTop:I

.field private mInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

.field private mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

.field private mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field private mIsRtl:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mLabel:Landroid/widget/TextView;

.field private mLastInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

.field private mListener:Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;

.field private mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

.field private mOpenFolderIconView:Landroid/widget/ImageView;

.field private mPaneView:Lcom/sonyericsson/paneview/PaneView;

.field private mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

.field private mPickedUpItem:Lcom/sonyericsson/home/data/Info;

.field private mPickedUpPosition:I

.field private mRenamingFolder:Z

.field private mScaleAnimationClose:Landroid/view/animation/ScaleAnimation;

.field private mScrollMargin:I

.field private mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

.field private mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

.field private final mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/home/layer/folder/FolderController;->OPEN_FOLDER_ICON_RESOURCES:[I

    return-void

    :array_0
    .array-data 0x4
        0x1bt 0x0t 0x2t 0x7ft
        0x29t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Landroid/view/ViewStub;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/InfoGroupManager;)V
    .locals 2
    .parameter "context"
    .parameter "packageLoader"
    .parameter "viewStub"
    .parameter "transferHandler"
    .parameter "resourceLoader"
    .parameter "adapterHelper"
    .parameter "infoGroupManager"

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/sonyericsson/home/layer/folder/FolderController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$1;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    .line 431
    new-instance v0, Lcom/sonyericsson/home/layer/folder/FolderController$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$3;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 444
    new-instance v0, Lcom/sonyericsson/home/layer/folder/FolderController$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$4;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 471
    new-instance v0, Lcom/sonyericsson/home/layer/folder/FolderController$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$5;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    .line 487
    new-instance v0, Lcom/sonyericsson/home/layer/folder/FolderController$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$6;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 605
    new-instance v0, Lcom/sonyericsson/home/layer/folder/FolderController$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$7;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    .line 208
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mContext:Landroid/content/Context;

    .line 209
    iput-object p3, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderDim:Landroid/view/View;

    .line 210
    iput-object p4, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    .line 211
    iput-object p7, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    new-instance v1, Lcom/sonyericsson/home/layer/folder/FolderController$2;

    invoke-direct {v1, p0, p1, p5, p6}, Lcom/sonyericsson/home/layer/folder/FolderController$2;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/content/Context;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->registerOnLoadCompletedCallback(Ljava/lang/Runnable;)V

    .line 312
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/data/InfoGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderAdapter:Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderMidUpBg:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/layer/folder/FolderAdapter;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderAdapter:Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/sonyericsson/home/layer/folder/FolderController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderOpenOffset:I

    return p1
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/layer/folder/FolderController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mScrollMargin:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/home/layer/folder/FolderController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mScrollMargin:I

    return p1
.end method

.method static synthetic access$1302(Lcom/sonyericsson/home/layer/folder/FolderController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderVerticalMargin:I

    return p1
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/grid/Grid;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mGrid:Lcom/sonyericsson/grid/Grid;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/grid/Grid;)Lcom/sonyericsson/grid/Grid;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mGrid:Lcom/sonyericsson/grid/Grid;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderModelManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/layer/folder/FolderModelManager;)Lcom/sonyericsson/home/layer/folder/FolderModelManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/InfoGroupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/layer/folder/FolderController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mIsRtl:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sonyericsson/home/layer/folder/FolderController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mIsRtl:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mAnimatorFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/layer/LayerRendererFactory;)Lcom/sonyericsson/home/layer/LayerRendererFactory;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mAnimatorFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderBgLeft:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mLabel:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderBgMiddle:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/transfer/TransferTarget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mListener:Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/sonyericsson/home/layer/folder/FolderController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mRenamingFolder:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPickedUpItem:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPickedUpItem:Lcom/sonyericsson/home/data/Info;

    return-object p1
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/sonyericsson/home/layer/folder/FolderController;->OPEN_FOLDER_ICON_RESOURCES:[I

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sonyericsson/home/layer/folder/FolderController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPickedUpPosition:I

    return v0
.end method

.method static synthetic access$3002(Lcom/sonyericsson/home/layer/folder/FolderController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPickedUpPosition:I

    return p1
.end method

.method static synthetic access$3100(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/transfer/TransferSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/transfer/TransferHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mTransferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/data/InfoGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mLastInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOpenFolderIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOpenFolderIconView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderDim:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderDim:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$702(Lcom/sonyericsson/home/layer/folder/FolderController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mIconImageMarginTop:I

    return p1
.end method

.method static synthetic access$802(Lcom/sonyericsson/home/layer/folder/FolderController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mIconImageHeight:I

    return p1
.end method

.method static synthetic access$902(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderMidDownBg:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method


# virtual methods
.method public closeFolder()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->unregisterInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    .line 425
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderDim:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderDim:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mAlphaAnimationClose:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mScaleAnimationClose:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 429
    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 646
    return-void
.end method

.method public onResume(Z)V
    .locals 4
    .parameter "dueToHomeButtonPressed"

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mRenamingFolder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mListener:Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mListener:Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$8;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$8;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;->onRenameFolder(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener$OnRenameFolderListener;Z)V

    .line 656
    :cond_0
    return-void
.end method

.method public openFolder(Lcom/sonyericsson/home/data/InfoGroup;Landroid/graphics/Rect;)V
    .locals 23
    .parameter "infoGroup"
    .parameter "sourceBounds"

    .prologue
    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->isLoadCompleted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 413
    :goto_0
    return-void

    .line 324
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    move-object v4, v0

    if-eqz v4, :cond_1

    .line 325
    const-string v4, "FolderController"

    const-string v5, "Open folder called but folder already open?"

    invoke-static {v4, v5}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    .line 329
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/folder/FolderController;->mLastInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->setInfoGroup(Lcom/sonyericsson/home/data/InfoGroup;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderAdapter:Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mInfoGroupListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/sonyericsson/home/layer/InfoGroupManager;->registerInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mLabel:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/home/data/InfoGroup;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->keepMaxScroll(Z)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mPaneView:Lcom/sonyericsson/paneview/PaneView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setScrollPosition(F)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderDim:Landroid/view/View;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 340
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v15

    .line 341
    .local v15, globalVisibleRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderDim:Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4, v15}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 342
    iget v4, v15, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iget v5, v15, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    move-object/from16 v0, p2

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 343
    invoke-static {v15}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 346
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mIconImageMarginTop:I

    move v5, v0

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mIconImageHeight:I

    move v5, v0

    div-int/lit8 v5, v5, 0x2

    add-int v17, v4, v5

    .line 351
    .local v17, iconCenterY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderDim:Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    move/from16 v0, v17

    move v1, v4

    if-le v0, v1, :cond_2

    .line 353
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderOpenOffset:I

    move v4, v0

    sub-int v21, v17, v4

    .line 354
    .local v21, pointerY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderVerticalMargin:I

    move v4, v0

    sub-int v4, v21, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mGrid:Lcom/sonyericsson/grid/Grid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sonyericsson/grid/Grid;->getHeight()I

    move-result v5

    div-int v18, v4, v5

    .line 355
    .local v18, maxRows:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mGrid:Lcom/sonyericsson/grid/Grid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v5

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 357
    .local v22, rows:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mGrid:Lcom/sonyericsson/grid/Grid;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sonyericsson/grid/Grid;->getHeight()I

    move-result v4

    mul-int v4, v4, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderVerticalMargin:I

    move v5, v0

    add-int v16, v4, v5

    .line 358
    .local v16, height:I
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    move-object v0, v14

    move v1, v4

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 360
    .local v14, folderViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v4, v21, v16

    iput v4, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderBgMiddle:Landroid/view/View;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderMidDownBg:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderLayout:Landroid/widget/RelativeLayout;

    move-object v4, v0

    invoke-virtual {v4, v14}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/home/layer/folder/FolderController;->OPEN_FOLDER_ICON_RESOURCES:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/home/data/InfoGroup;->getIcon()I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 380
    .local v19, openFolderDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOpenFolderIconView:Landroid/widget/ImageView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    move-object/from16 v0, v20

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 383
    .local v20, openFolderLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mIconImageMarginTop:I

    move v5, v0

    add-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mOpenFolderIconView:Landroid/widget/ImageView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderBgLeft:Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderMidDownBg:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 393
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v13, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 394
    .local v13, alphaAnimationOpen:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0xc8

    invoke-virtual {v13, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderDim:Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4, v13}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 398
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    iget v11, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int v11, v21, v11

    int-to-float v11, v11

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 401
    .local v3, scaleAnimationOpen:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 402
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    const v5, 0x3f333333

    invoke-direct {v4, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderLayout:Landroid/widget/RelativeLayout;

    move-object v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 406
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/folder/FolderController;->mAlphaAnimationClose:Landroid/view/animation/AlphaAnimation;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mAlphaAnimationClose:Landroid/view/animation/AlphaAnimation;

    move-object v4, v0

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 410
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x0

    iget v12, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int v12, v21, v12

    int-to-float v12, v12

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/folder/FolderController;->mScaleAnimationClose:Landroid/view/animation/ScaleAnimation;

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mScaleAnimationClose:Landroid/view/animation/ScaleAnimation;

    move-object v4, v0

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    goto/16 :goto_0

    .line 364
    .end local v3           #scaleAnimationOpen:Landroid/view/animation/ScaleAnimation;
    .end local v13           #alphaAnimationOpen:Landroid/view/animation/AlphaAnimation;
    .end local v14           #folderViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16           #height:I
    .end local v18           #maxRows:I
    .end local v19           #openFolderDrawable:Landroid/graphics/drawable/Drawable;
    .end local v20           #openFolderLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v21           #pointerY:I
    .end local v22           #rows:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderOpenOffset:I

    move v4, v0

    add-int v21, v17, v4

    .line 365
    .restart local v21       #pointerY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderDim:Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v4, v4, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderVerticalMargin:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mGrid:Lcom/sonyericsson/grid/Grid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sonyericsson/grid/Grid;->getHeight()I

    move-result v5

    div-int v18, v4, v5

    .line 367
    .restart local v18       #maxRows:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mGrid:Lcom/sonyericsson/grid/Grid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v5

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 369
    .restart local v22       #rows:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mGrid:Lcom/sonyericsson/grid/Grid;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sonyericsson/grid/Grid;->getHeight()I

    move-result v4

    mul-int v4, v4, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderVerticalMargin:I

    move v5, v0

    add-int v16, v4, v5

    .line 370
    .restart local v16       #height:I
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    move-object v0, v14

    move v1, v4

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 372
    .restart local v14       #folderViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v21

    move-object v1, v14

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderBgMiddle:Landroid/view/View;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController;->mFolderMidUpBg:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method public setFolderControllerListener(Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController;->mListener:Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;

    .line 316
    return-void
.end method
