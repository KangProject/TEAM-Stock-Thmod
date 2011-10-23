.class public Lcom/sonyericsson/paneview/PaneView;
.super Landroid/widget/AdapterView;
.source "PaneView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;,
        Lcom/sonyericsson/paneview/PaneView$AdapterItem;,
        Lcom/sonyericsson/paneview/PaneView$Item;,
        Lcom/sonyericsson/paneview/PaneView$ItemViewListener;,
        Lcom/sonyericsson/paneview/PaneView$InteractionListener;,
        Lcom/sonyericsson/paneview/PaneView$DrawFilter;,
        Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;,
        Lcom/sonyericsson/paneview/PaneView$ScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Lcom/sonyericsson/paneview/PaneAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG_FPS:Z = false

.field private static final FRAME_DELAY:J = 0xaL

.field private static final POSITION_TOLERANCE:F = 0.001f

.field private static final RUBBER_BAND_FACTOR:F = 0.4f

.field private static final VELOCITY_TOLERANCE:F = 0.001f


# instance fields
.field private mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

.field private mBackplate:Landroid/graphics/drawable/Drawable;

.field private mBackplateBitmap:Landroid/graphics/Bitmap;

.field private mBackplateOffsetX:I

.field private mBackplateWidth:I

.field private mDataSetObserver:Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

.field private mDebugAverageFps:F

.field private mDebugLastDrawTime:J

.field private final mDebugTextPaint:Landroid/graphics/Paint;

.field private mDeletedItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/paneview/PaneView$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mDoMirror:Z

.field private mDynamicsRunnable:Ljava/lang/Runnable;

.field private mFocusDesired:Z

.field private mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

.field private mFocusPaddingBottom:I

.field private mFocusPaddingLeft:I

.field private mFocusPaddingRight:I

.field private mFocusPaddingTop:I

.field private mFocusedItemDrawable:Landroid/graphics/drawable/Drawable;

.field private mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

.field private mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

.field private mInvalidRect:Landroid/graphics/Rect;

.field private mIsInteracting:Z

.field private mItemBackgroundDrawn:Z

.field private mItemFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mItemKeyListener:Landroid/view/View$OnKeyListener;

.field private mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

.field private mItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItems1:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItems2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsSorted:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepMaxScroll:Z

.field private mMarginF:F

.field private mMaxScroll:F

.field private mNumberOfPanes:I

.field private mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

.field private mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

.field private mPreferExternalFocus:Z

.field private mPreventExternalFocus:Z

.field private mRejectPaddingTouch:Z

.field private mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

.field private mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

.field private mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

.field private mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

.field private mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

.field private mSrcBlit:Z

.field private mSrcBlitPaint:Landroid/graphics/Paint;

.field private mStandardRenderersEnabled:Z

.field private mTouchIsLocked:Z

.field private mTransformer:Lcom/sonyericsson/paneview/Transformer;

.field private mVelocityThreshold:I

.field private mVerticalScrollEnabled:Z

.field private mViewCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWidthWithMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 430
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 289
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 295
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .line 298
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    .line 301
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    .line 310
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    .line 319
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDeletedItems:Ljava/util/LinkedList;

    .line 358
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDebugTextPaint:Landroid/graphics/Paint;

    .line 360
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    .line 369
    new-instance v1, Lcom/sonyericsson/paneview/FocusFinder;

    invoke-direct {v1}, Lcom/sonyericsson/paneview/FocusFinder;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

    .line 421
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    .line 432
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 434
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 436
    .local v0, touchSlop:I
    new-instance v1, Lcom/sonyericsson/paneview/GestureDetector;

    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->createGestureListener()Lcom/sonyericsson/paneview/GestureDetector$GestureListener;

    move-result-object v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/sonyericsson/paneview/GestureDetector;-><init>(Lcom/sonyericsson/paneview/GestureDetector$GestureListener;IJ)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    .line 439
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;-><init>(Lcom/sonyericsson/paneview/PaneView;Lcom/sonyericsson/paneview/PaneView$1;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDataSetObserver:Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

    .line 441
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->createDynamicsRunnable()V

    .line 443
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/paneview/PaneView$1;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    .line 455
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/paneview/PaneView$2;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    .line 467
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/paneview/PaneView$3;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemKeyListener:Landroid/view/View$OnKeyListener;

    .line 490
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/paneview/PaneView$4;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 503
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/paneview/PaneView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/paneview/PaneView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->pixelsToPosition(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/paneview/PaneView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/paneview/PaneView;FFF)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/paneview/PaneView;->updateSnapPosition(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/paneview/PaneView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    return v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->interactionStart()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/paneview/PaneView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->onDataChanged(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->interactionEnd()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/paneview/PaneView;Lcom/sonyericsson/paneview/PaneView$AdapterItem;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/paneview/PaneView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/paneview/PaneView;II)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/paneview/PaneView;->getContainingItem(II)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/paneview/PaneView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private addItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/view/View;Z)V
    .locals 3
    .parameter "item"
    .parameter "view"
    .parameter "addAsChild"

    .prologue
    const/high16 v2, 0x4000

    .line 2336
    if-nez p2, :cond_0

    .line 2363
    :goto_0
    return-void

    .line 2341
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2343
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 2347
    :cond_1
    iput-object p2, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 2348
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2351
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    if-eqz v0, :cond_2

    .line 2352
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/sonyericsson/paneview/PaneView$ItemViewListener;->onViewAdded(ILandroid/view/View;)V

    .line 2355
    :cond_2
    if-eqz p3, :cond_3

    .line 2357
    invoke-direct {p0, p2}, Lcom/sonyericsson/paneview/PaneView;->addViewAndLayoutParams(Landroid/view/View;)V

    .line 2361
    :cond_3
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    or-int/2addr v0, v2

    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v1, v1, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    or-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method private addRootView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 2603
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2604
    .local v2, parent:Landroid/view/ViewParent;
    move-object v1, p1

    .line 2606
    .local v1, descendant:Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_0

    if-eq v2, p0, :cond_0

    .line 2607
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 2608
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    .line 2611
    :cond_0
    if-nez v2, :cond_1

    .line 2612
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->addViewAndLayoutParams(Landroid/view/View;)V

    .line 2614
    :cond_1
    return-void
.end method

.method private addViewAndLayoutParams(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, -0x2

    .line 2662
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2663
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 2664
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2667
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/sonyericsson/paneview/PaneView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2668
    return-void
.end method

.method private addViewToCache(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "viewType"

    .prologue
    .line 2390
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 2391
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 2392
    .local v0, viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 2393
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2394
    .restart local v0       #viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2396
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2398
    .end local v0           #viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method private clearItems(Ljava/util/HashMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1993
    .local p1, items:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1994
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneLocation;->recycle()V

    .line 1995
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    goto :goto_0

    .line 1997
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1998
    return-void
.end method

.method private createDynamicsRunnable()V
    .locals 1

    .prologue
    .line 1531
    new-instance v0, Lcom/sonyericsson/paneview/PaneView$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/paneview/PaneView$6;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    .line 1551
    return-void
.end method

.method private createGestureListener()Lcom/sonyericsson/paneview/GestureDetector$GestureListener;
    .locals 1

    .prologue
    .line 1376
    new-instance v0, Lcom/sonyericsson/paneview/PaneView$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/paneview/PaneView$5;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    return-object v0
.end method

.method private createSrcBlitPaint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2189
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    .line 2190
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2191
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2192
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2193
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2194
    return-void
.end method

.method private detectUserPaneSwitch(Landroid/view/View;Landroid/view/View;I)Z
    .locals 6
    .parameter "currentFocus"
    .parameter "newFocus"
    .parameter "direction"

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 2679
    const/4 v1, 0x0

    .line 2681
    .local v1, scroll:Z
    if-eq p3, v4, :cond_0

    if-ne p3, v5, :cond_3

    .line 2682
    :cond_0
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2683
    .local v0, focusRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 2684
    .local v3, sourceRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 2686
    .local v2, scrollRect:Landroid/graphics/Rect;
    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/paneview/PaneView;->getFocusRectInRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2687
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/paneview/PaneView;->getFocusRectInRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2689
    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2690
    invoke-direct {p0, p0, v2}, Lcom/sonyericsson/paneview/PaneView;->offsetRectToRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2694
    if-ne p3, v4, :cond_4

    .line 2695
    iget v4, v2, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 2704
    :cond_1
    :goto_0
    invoke-static {p3, v3, v2, v0}, Lcom/sonyericsson/paneview/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2705
    const/4 v1, 0x1

    .line 2708
    :cond_2
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2709
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2710
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2713
    .end local v0           #focusRect:Landroid/graphics/Rect;
    .end local v2           #scrollRect:Landroid/graphics/Rect;
    .end local v3           #sourceRect:Landroid/graphics/Rect;
    :cond_3
    return v1

    .line 2696
    .restart local v0       #focusRect:Landroid/graphics/Rect;
    .restart local v2       #scrollRect:Landroid/graphics/Rect;
    .restart local v3       #sourceRect:Landroid/graphics/Rect;
    :cond_4
    if-ne p3, v5, :cond_1

    .line 2697
    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/graphics/Rect;->right:I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private drawBackplate(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1332
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 1333
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 1334
    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateWidth:I

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateWidth:I

    move v0, v4

    .line 1336
    .local v0, backplateWidth:I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    .line 1338
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1339
    .local v3, tmpCanvas:Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v7, v7, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1340
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1343
    .end local v0           #backplateWidth:I
    .end local v3           #tmpCanvas:Landroid/graphics/Canvas;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v4}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v4

    float-to-int v2, v4

    .line 1345
    .local v2, pane1:I
    if-ltz v2, :cond_1

    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    if-ge v2, v4, :cond_1

    .line 1346
    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateOffsetX:I

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v5

    add-int v1, v4, v5

    .line 1347
    .local v1, left:I
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    int-to-float v5, v1

    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1348
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v1, v7, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 1352
    .end local v1           #left:I
    :cond_1
    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_2

    .line 1353
    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateOffsetX:I

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v5

    add-int v1, v4, v5

    .line 1354
    .restart local v1       #left:I
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    int-to-float v5, v1

    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1355
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v1, v7, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 1359
    .end local v1           #left:I
    .end local v2           #pane1:I
    :cond_2
    return-void

    .line 1334
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method private drawDeletedItems(Landroid/graphics/Canvas;F)V
    .locals 6
    .parameter "canvas"
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 2069
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mDeletedItems:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2071
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/paneview/PaneView$Item;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2072
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/paneview/PaneView$Item;

    .line 2074
    .local v0, deletedItem:Lcom/sonyericsson/paneview/PaneView$Item;
    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/paneview/PaneView;->drawItemUsingRenderer(Landroid/graphics/Canvas;Lcom/sonyericsson/paneview/PaneView$Item;F)Z

    move-result v2

    .line 2076
    .local v2, newFrame:Z
    if-nez v2, :cond_0

    .line 2078
    iget-object v3, v0, Lcom/sonyericsson/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/paneview/PaneView;->removeViewInLayout(Landroid/view/View;)V

    .line 2082
    iput-object v5, v0, Lcom/sonyericsson/paneview/PaneView$Item;->view:Landroid/view/View;

    .line 2085
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v4, v0, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v3, v4}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 2086
    iput-object v5, v0, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 2089
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2096
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->invalidate()V

    goto :goto_0

    .line 2098
    .end local v0           #deletedItem:Lcom/sonyericsson/paneview/PaneView$Item;
    .end local v2           #newFrame:Z
    :cond_1
    return-void
.end method

.method private static drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "canvas"
    .parameter "drawable"
    .parameter "rect"

    .prologue
    .line 2055
    if-eqz p1, :cond_0

    .line 2056
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2057
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2059
    :cond_0
    return-void
.end method

.method private drawFocusRect(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1362
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1363
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1364
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1365
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v1, v0}, Lcom/sonyericsson/paneview/PaneView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 1366
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1368
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private drawItemUsingRenderer(Landroid/graphics/Canvas;Lcom/sonyericsson/paneview/PaneView$Item;F)Z
    .locals 7
    .parameter "canvas"
    .parameter "item"
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 2206
    iget-object v0, p2, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v0, :cond_0

    .line 2208
    const/4 v0, 0x0

    .line 2228
    :goto_0
    return v0

    .line 2213
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2214
    invoke-direct {p0, v2, p3}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2217
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 2218
    .local v3, targetRect:Landroid/graphics/Rect;
    iget-object v0, p2, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2219
    iget-object v0, p2, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v0, v0, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v0, v0

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2222
    iget-object v0, p2, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    iget-object v1, p2, Lcom/sonyericsson/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z

    move-result v6

    .line 2225
    .local v6, newFrame:Z
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2226
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v0, v6

    .line 2228
    goto :goto_0
.end method

.method private drawItems(Landroid/graphics/Canvas;F)V
    .locals 8
    .parameter "canvas"
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 2107
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 2108
    .local v4, viewRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2110
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 2111
    .local v2, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 2116
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v5, :cond_3

    .line 2117
    invoke-direct {p0, p1, v2, p2}, Lcom/sonyericsson/paneview/PaneView;->drawItemUsingRenderer(Landroid/graphics/Canvas;Lcom/sonyericsson/paneview/PaneView$Item;F)Z

    move-result v3

    .line 2118
    .local v3, newFrame:Z
    if-nez v3, :cond_2

    iget-boolean v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    if-nez v5, :cond_2

    .line 2120
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v6, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v5, v6}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 2121
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 2122
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    invoke-direct {p0, v5, p2, v4}, Lcom/sonyericsson/paneview/PaneView;->isLocationVisible(Lcom/sonyericsson/paneview/PaneLocation;FLandroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2125
    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 2128
    :cond_1
    iget-boolean v5, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    if-eqz v5, :cond_2

    .line 2131
    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->setStandardRenderer(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 2137
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->invalidate()V

    goto :goto_0

    .line 2139
    .end local v3           #newFrame:Z
    :cond_3
    const/4 v0, 0x0

    .line 2141
    .local v0, cache:Landroid/graphics/Bitmap;
    iget-boolean v5, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlit:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/sonyericsson/paneview/PaneView;->mItemBackgroundDrawn:Z

    if-nez v5, :cond_4

    .line 2142
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2145
    :cond_4
    if-eqz v0, :cond_5

    .line 2146
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, p1, v5, v0}, Lcom/sonyericsson/paneview/PaneView;->srcBlitChild(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 2150
    :goto_1
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/sonyericsson/paneview/PaneView;->unionInvalidRectWithView(Landroid/view/View;)V

    goto :goto_0

    .line 2148
    :cond_5
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/sonyericsson/paneview/PaneView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 2154
    .end local v0           #cache:Landroid/graphics/Bitmap;
    .end local v2           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_6
    invoke-static {v4}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2155
    return-void
.end method

.method private drawUsingTransformer(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 2007
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v5}, Lcom/sonyericsson/paneview/Transformer;->update()V

    .line 2009
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 2010
    .local v3, rect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 2011
    .local v4, viewRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2014
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 2015
    .local v2, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/paneview/PaneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 2016
    .local v0, adapterItem:Ljava/lang/Object;
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v5, v0, v3}, Lcom/sonyericsson/paneview/Transformer;->getDrawRect(Ljava/lang/Object;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2017
    invoke-static {v4, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2018
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-nez v5, :cond_1

    .line 2019
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v5, v5

    invoke-direct {p0, v2, v5}, Lcom/sonyericsson/paneview/PaneView;->layoutItem(Lcom/sonyericsson/paneview/PaneView$AdapterItem;F)V

    .line 2022
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v5, v0}, Lcom/sonyericsson/paneview/Transformer;->isSelected(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/paneview/PaneAdapter;->isInteractive(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2025
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v5, v3}, Lcom/sonyericsson/paneview/PaneView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 2028
    :cond_2
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 2029
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    iget-object v6, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-interface {v5, v0, v6}, Lcom/sonyericsson/paneview/Transformer;->addItemToDraw(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_0

    .line 2035
    .end local v0           #adapterItem:Ljava/lang/Object;
    .end local v2           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_3
    invoke-static {v4}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2036
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2040
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v5, p1}, Lcom/sonyericsson/paneview/Transformer;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2043
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->invalidate()V

    .line 2045
    :cond_4
    return-void
.end method

.method private ensureItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;Z)V
    .locals 11
    .parameter "item"
    .parameter "rect"
    .parameter "addAsChild"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x4000

    const/4 v8, 0x1

    .line 2258
    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v0

    .line 2259
    .local v0, adapterPosition:I
    const/4 v1, 0x0

    .line 2261
    .local v1, gotView:Z
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-interface {v4}, Lcom/sonyericsson/paneview/PaneAdapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$600(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-interface {v6, v0}, Lcom/sonyericsson/paneview/PaneAdapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 2263
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ID has changed!A posible cause of this is that the client has changed the data without notifiying us (via the observer on the adapter).If the IDs are not stable, hasStableIds() should return false."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2269
    :cond_0
    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-boolean v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->viewValid:Z

    if-nez v4, :cond_6

    .line 2272
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    iget-object v5, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-interface {v4, v0, v5, p0}, Lcom/sonyericsson/paneview/PaneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2273
    .local v2, view:Landroid/view/View;
    const/4 v1, 0x1

    .line 2275
    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eq v2, v4, :cond_1

    .line 2279
    const-string v4, "PaneView"

    const-string v5, "convertView does not seem to be handled efficiently by the adaptor"

    invoke-static {v4, v5}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 2284
    invoke-direct {p0, p1, v2, p3}, Lcom/sonyericsson/paneview/PaneView;->addItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/view/View;Z)V

    .line 2287
    :cond_1
    iput-boolean v8, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->viewValid:Z

    .line 2297
    .end local v2           #view:Landroid/view/View;
    :cond_2
    :goto_0
    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    if-eqz v4, :cond_3

    .line 2298
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->setStandardRenderer(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 2301
    :cond_3
    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 2302
    iget-object v2, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 2304
    .restart local v2       #view:Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2305
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sonyericsson/paneview/PaneAdapter;->isInteractive(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2306
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sonyericsson/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2307
    invoke-virtual {v2, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 2309
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mItemKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2310
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mItemFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2320
    :cond_4
    :goto_1
    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    or-int/2addr v4, v9

    iget-object v5, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    or-int/2addr v5, v9

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 2322
    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 2324
    .end local v2           #view:Landroid/view/View;
    :cond_5
    return-void

    .line 2289
    :cond_6
    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-nez v4, :cond_2

    .line 2291
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-interface {v4, v0}, Lcom/sonyericsson/paneview/PaneAdapter;->getItemViewType(I)I

    move-result v3

    .line 2292
    .local v3, viewType:I
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-direct {p0, v3}, Lcom/sonyericsson/paneview/PaneView;->removeViewFromCache(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v0, v5, p0}, Lcom/sonyericsson/paneview/PaneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2293
    .restart local v2       #view:Landroid/view/View;
    const/4 v1, 0x1

    .line 2294
    invoke-direct {p0, p1, v2, p3}, Lcom/sonyericsson/paneview/PaneView;->addItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/view/View;Z)V

    goto :goto_0

    .line 2312
    .end local v3           #viewType:I
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 2313
    invoke-virtual {v2, v10}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2314
    invoke-virtual {v2, v10}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_1
.end method

.method private findItem(Landroid/view/View;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 3
    .parameter "view"

    .prologue
    .line 2473
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 2474
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    move-object v2, v1

    .line 2479
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private focusSearchOffScreen(Landroid/view/View;I)Landroid/view/View;
    .locals 10
    .parameter "currentFocus"
    .parameter "direction"

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, 0x42

    const/16 v5, 0x11

    .line 2780
    const/4 v1, 0x0

    .line 2781
    .local v1, newFocus:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v2

    .line 2782
    .local v2, pane:I
    const/4 v3, 0x0

    .line 2784
    .local v3, sourceRect:Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 2785
    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #sourceRect:Landroid/graphics/Rect;
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2786
    .restart local v3       #sourceRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2789
    invoke-virtual {p0, p1, v3}, Lcom/sonyericsson/paneview/PaneView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2792
    :cond_0
    if-ne p2, v5, :cond_5

    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->panesToTheLeft(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2793
    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->getLeftPane(I)I

    move-result v4

    invoke-direct {p0, p2, v4}, Lcom/sonyericsson/paneview/PaneView;->getFocusableViewsOnPane(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 2794
    .local v0, focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v3, :cond_4

    .line 2800
    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 2801
    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 2802
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v3, v6}, Lcom/sonyericsson/paneview/FocusFinder;->findNextFocusFromRect(Ljava/util/ArrayList;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    .line 2809
    :goto_0
    if-nez v1, :cond_1

    iget-boolean v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusDesired:Z

    if-eqz v4, :cond_1

    .line 2815
    invoke-virtual {p0, v8}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 2818
    move-object v1, p0

    .line 2821
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->moveToLeftPane()Z

    .line 2860
    .end local v0           #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    if-eq v1, p0, :cond_3

    .line 2863
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->addRootView(Landroid/view/View;)V

    .line 2866
    :cond_3
    return-object v1

    .line 2805
    .restart local v0       #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v9, v6}, Lcom/sonyericsson/paneview/FocusFinder;->findNextFocus(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 2822
    .end local v0           #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    if-ne p2, v6, :cond_8

    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->panesToTheRight(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2823
    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->getRightPane(I)I

    move-result v4

    invoke-direct {p0, p2, v4}, Lcom/sonyericsson/paneview/PaneView;->getFocusableViewsOnPane(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 2824
    .restart local v0       #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v3, :cond_7

    .line 2830
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2831
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2832
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v3, v5}, Lcom/sonyericsson/paneview/FocusFinder;->findNextFocusFromRect(Ljava/util/ArrayList;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    .line 2839
    :goto_2
    if-nez v1, :cond_6

    iget-boolean v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusDesired:Z

    if-eqz v4, :cond_6

    .line 2845
    invoke-virtual {p0, v8}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 2848
    move-object v1, p0

    .line 2851
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->moveToRightPane()Z

    goto :goto_1

    .line 2835
    :cond_7
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v9, v5}, Lcom/sonyericsson/paneview/FocusFinder;->findNextFocus(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 2852
    .end local v0           #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_8
    const/16 v4, 0x82

    if-eq p2, v4, :cond_9

    const/16 v4, 0x21

    if-ne p2, v4, :cond_2

    .line 2853
    :cond_9
    invoke-direct {p0, p2, v2}, Lcom/sonyericsson/paneview/PaneView;->getFocusableViewsOnPane(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 2854
    .restart local v0       #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v3, :cond_2

    .line 2855
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v3, p2}, Lcom/sonyericsson/paneview/FocusFinder;->findNextFocusFromRect(Ljava/util/ArrayList;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method private getAdapterItems(Ljava/util/HashMap;Ljava/util/HashMap;Z)V
    .locals 20
    .parameter
    .parameter
    .parameter "enableAnimations"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1776
    .local p1, newItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    .local p2, oldItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    move-object v5, v0

    invoke-interface {v5}, Lcom/sonyericsson/paneview/PaneAdapter;->hasStableIds()Z

    move-result v18

    .line 1777
    .local v18, stableIDs:Z
    if-nez v18, :cond_0

    .line 1780
    const/16 p3, 0x0

    .line 1785
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->clear()V

    .line 1788
    :cond_0
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 1789
    .local v6, itemDrawRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/paneview/PaneLocation;->obtain()Lcom/sonyericsson/paneview/PaneLocation;

    move-result-object v16

    .line 1790
    .local v16, newLocation:Lcom/sonyericsson/paneview/PaneLocation;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v19

    .line 1791
    .local v19, viewRect:Landroid/graphics/Rect;
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v9

    move-object/from16 v0, v19

    move v1, v5

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v17

    .line 1794
    .local v17, position:F
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    move-object v5, v0

    invoke-interface {v5}, Lcom/sonyericsson/paneview/PaneAdapter;->getCount()I

    move-result v5

    if-ge v11, v5, :cond_7

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    move-object v5, v0

    move-object v0, v5

    move v1, v11

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneAdapter;->getLocation(ILcom/sonyericsson/paneview/PaneLocation;)V

    .line 1799
    const/4 v14, 0x0

    .line 1801
    .local v14, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    if-eqz v18, :cond_5

    .line 1804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    move-object v5, v0

    invoke-interface {v5, v11}, Lcom/sonyericsson/paneview/PaneAdapter;->getItemId(I)J

    move-result-wide v12

    .line 1805
    .local v12, id:J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    check-cast v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1811
    .restart local v14       #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :goto_1
    if-eqz v14, :cond_6

    .line 1820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    move-object v5, v0

    if-eqz v5, :cond_2

    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneLocation;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v5, :cond_2

    if-eqz p3, :cond_2

    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v17

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/paneview/PaneView;->isLocationVisible(Lcom/sonyericsson/paneview/PaneLocation;FLandroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/paneview/PaneView;->isLocationVisible(Lcom/sonyericsson/paneview/PaneLocation;FLandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1826
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    move-object v5, v0

    invoke-interface {v5, v11}, Lcom/sonyericsson/paneview/RendererFactory;->getMoveRenderer(I)Lcom/sonyericsson/animation/Renderer;

    move-result-object v5

    iput-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1827
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v5, :cond_2

    .line 1828
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1829
    const/4 v5, 0x0

    iget-object v7, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v7, v7, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    move v1, v5

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 1831
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-interface/range {v5 .. v10}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 1836
    :cond_2
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneLocation;->set(Lcom/sonyericsson/paneview/PaneLocation;)V

    .line 1837
    invoke-static {v14, v11}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$502(Lcom/sonyericsson/paneview/PaneView$AdapterItem;I)I

    .line 1839
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 1842
    const/4 v5, 0x0

    iput-boolean v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->viewValid:Z

    .line 1868
    :cond_3
    :goto_2
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v7

    if-le v5, v7, :cond_4

    .line 1869
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->pixelsToPosition(F)F

    move-result v15

    .line 1870
    .local v15, maxScroll:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    move v5, v0

    cmpl-float v5, v15, v5

    if-lez v5, :cond_4

    .line 1871
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    .line 1876
    .end local v15           #maxScroll:F
    :cond_4
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1808
    .end local v12           #id:J
    :cond_5
    int-to-long v12, v11

    .restart local v12       #id:J
    goto/16 :goto_1

    .line 1850
    :cond_6
    new-instance v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .end local v14           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    const/4 v5, 0x0

    invoke-direct {v14, v5}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;-><init>(Lcom/sonyericsson/paneview/PaneView$1;)V

    .line 1851
    .restart local v14       #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    invoke-static {}, Lcom/sonyericsson/paneview/PaneLocation;->obtain()Lcom/sonyericsson/paneview/PaneLocation;

    move-result-object v5

    iput-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    .line 1852
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneLocation;->set(Lcom/sonyericsson/paneview/PaneLocation;)V

    .line 1853
    invoke-static {v14, v11}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$502(Lcom/sonyericsson/paneview/PaneView$AdapterItem;I)I

    .line 1854
    invoke-static {v14, v12, v13}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$602(Lcom/sonyericsson/paneview/PaneView$AdapterItem;J)J

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    move-object v5, v0

    if-eqz v5, :cond_3

    if-eqz p3, :cond_3

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    move-object v5, v0

    invoke-interface {v5, v11}, Lcom/sonyericsson/paneview/RendererFactory;->getAddRenderer(I)Lcom/sonyericsson/animation/Renderer;

    move-result-object v5

    iput-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1859
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v5, :cond_3

    .line 1860
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1861
    const/4 v5, 0x0

    iget-object v7, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v7, v7, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    move v1, v5

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 1863
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-interface/range {v5 .. v10}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    goto/16 :goto_2

    .line 1879
    .end local v12           #id:J
    .end local v14           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->updateMaxScroll(Ljava/util/Collection;)V

    .line 1881
    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1882
    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/paneview/PaneLocation;->recycle()V

    .line 1883
    invoke-static {v6}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1884
    return-void
.end method

.method private getContainingItem(II)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1508
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1512
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1513
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1514
    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1515
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1516
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    move-object v3, v1

    .line 1523
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :goto_0
    return-object v3

    .line 1522
    :cond_1
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1523
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getFocusRectInRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "view"
    .parameter "rect"

    .prologue
    .line 2592
    invoke-virtual {p1, p2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2593
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/paneview/PaneView;->offsetRectToRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2594
    return-void
.end method

.method private getFocusableViewsOnPane(II)Ljava/util/ArrayList;
    .locals 9
    .parameter "direction"
    .parameter "pane"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2625
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2626
    .local v4, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v5}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v3

    .line 2628
    .local v3, scroll:I
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 2630
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 2631
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2632
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2633
    int-to-float v5, p2

    iget-object v6, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v6, v6, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v6, v6

    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v5

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    neg-int v6, v3

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2635
    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-lez v5, :cond_0

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 2636
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 2637
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2638
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2643
    :goto_1
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 2644
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v5, v4, p1, v8}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0

    .line 2640
    :cond_1
    invoke-direct {p0, v1, v2, v8}, Lcom/sonyericsson/paneview/PaneView;->ensureItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;Z)V

    goto :goto_1

    .line 2650
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_2
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2652
    return-object v4
.end method

.method private getLeftPane(I)I
    .locals 1
    .parameter "pane"

    .prologue
    .line 2723
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_0

    .line 2724
    add-int/lit8 v0, p1, 0x1

    .line 2726
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method private getPaneXOffset(FF)I
    .locals 1
    .parameter "position"
    .parameter "pane"

    .prologue
    .line 2425
    sub-float v0, p2, p1

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v0

    return v0
.end method

.method private getRightPane(I)I
    .locals 1
    .parameter "pane"

    .prologue
    .line 2737
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_0

    .line 2738
    const/4 v0, 0x1

    sub-int v0, p1, v0

    .line 2740
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private handleDeletedItems(Ljava/util/HashMap;Z)V
    .locals 11
    .parameter
    .parameter "enableAnimations"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, deletedItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 1911
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1914
    .local v1, itemDrawRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1916
    .local v7, deletedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    if-ne v7, v0, :cond_1

    .line 1917
    iput-object v10, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1921
    :cond_1
    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1922
    const/4 v6, 0x0

    .line 1926
    .local v6, deleteRenderer:Lcom/sonyericsson/animation/Renderer;
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 1927
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    invoke-interface {v0}, Lcom/sonyericsson/paneview/RendererFactory;->getDeleteRenderer()Lcom/sonyericsson/animation/Renderer;

    move-result-object v6

    .line 1929
    :cond_2
    if-eqz v6, :cond_3

    .line 1932
    new-instance v9, Lcom/sonyericsson/paneview/PaneView$Item;

    invoke-direct {v9, v10}, Lcom/sonyericsson/paneview/PaneView$Item;-><init>(Lcom/sonyericsson/paneview/PaneView$1;)V

    .line 1933
    .local v9, item:Lcom/sonyericsson/paneview/PaneView$Item;
    invoke-static {}, Lcom/sonyericsson/paneview/PaneLocation;->obtain()Lcom/sonyericsson/paneview/PaneLocation;

    move-result-object v0

    iput-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    .line 1934
    iget-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v3, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/paneview/PaneLocation;->set(Lcom/sonyericsson/paneview/PaneLocation;)V

    .line 1935
    iget-object v0, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iput-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->view:Landroid/view/View;

    .line 1936
    iput-object v6, v9, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1937
    iget-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1938
    const/4 v0, 0x0

    iget-object v3, v9, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v3, v3, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v3, v3

    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1940
    iget-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 1941
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDeletedItems:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1944
    .end local v9           #item:Lcom/sonyericsson/paneview/PaneView$Item;
    :cond_3
    iget-object v0, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->removeViewInLayout(Landroid/view/View;)V

    .line 1948
    iput-object v10, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    goto :goto_0

    .line 1954
    .end local v6           #deleteRenderer:Lcom/sonyericsson/animation/Renderer;
    .end local v7           #deletedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->clearItems(Ljava/util/HashMap;)V

    .line 1956
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1957
    return-void
.end method

.method private interactionEnd()V
    .locals 1

    .prologue
    .line 1572
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    if-eqz v0, :cond_0

    .line 1573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    .line 1574
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    invoke-interface {v0}, Lcom/sonyericsson/paneview/PaneView$InteractionListener;->onInteractionEnd()V

    .line 1576
    :cond_0
    return-void
.end method

.method private interactionStart()V
    .locals 1

    .prologue
    .line 1565
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    if-eqz v0, :cond_0

    .line 1566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    .line 1567
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    invoke-interface {v0}, Lcom/sonyericsson/paneview/PaneView$InteractionListener;->onInteractionStart()V

    .line 1569
    :cond_0
    return-void
.end method

.method private isLocationVisible(Lcom/sonyericsson/paneview/PaneLocation;FLandroid/graphics/Rect;)Z
    .locals 4
    .parameter "location"
    .parameter "position"
    .parameter "viewRect"

    .prologue
    const/high16 v3, 0x3f80

    .line 1969
    iget v2, p1, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, p1, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1972
    :cond_0
    const/4 v2, 0x0

    .line 1983
    :goto_0
    return v2

    .line 1974
    :cond_1
    const/4 v1, 0x0

    .line 1975
    .local v1, visible:Z
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1976
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v2, p1, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1977
    iget v2, p1, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v2, v2

    invoke-direct {p0, p2, v2}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1979
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1980
    const/4 v1, 0x1

    .line 1982
    :cond_2
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    move v2, v1

    .line 1983
    goto :goto_0
.end method

.method private layoutItem(Lcom/sonyericsson/paneview/PaneView$AdapterItem;F)V
    .locals 4
    .parameter "item"
    .parameter "placement"

    .prologue
    .line 2239
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2240
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v1, v1, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2241
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v1, v1, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v1, v1

    invoke-direct {p0, p2, v1}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2243
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/paneview/PaneView;->ensureItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;Z)V

    .line 2244
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->unionInvalidRectWithView(Landroid/view/View;)V

    .line 2245
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2246
    return-void
.end method

.method private offsetRectToRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "view"
    .parameter "rect"

    .prologue
    .line 2578
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2580
    .local v0, root:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 2581
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2583
    :cond_0
    return-void
.end method

.method private onDataChanged(Z)V
    .locals 6
    .parameter "enableAnimations"

    .prologue
    const/4 v5, 0x1

    .line 1699
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1700
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .line 1701
    .local v0, newItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 1708
    .local v1, oldItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->clearItems(Ljava/util/HashMap;)V

    .line 1710
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    if-eqz v2, :cond_4

    .line 1712
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-interface {v2}, Lcom/sonyericsson/paneview/PaneAdapter;->getNumberOfPanes()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    .line 1716
    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/paneview/PaneView;->getAdapterItems(Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    .line 1723
    :goto_1
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1724
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/paneview/PaneView;->handleDeletedItems(Ljava/util/HashMap;Z)V

    .line 1728
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    .line 1731
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 1732
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1733
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    new-instance v3, Lcom/sonyericsson/paneview/PaneView$7;

    invoke-direct {v3, p0}, Lcom/sonyericsson/paneview/PaneView$7;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1741
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    if-eqz v2, :cond_1

    .line 1742
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v3

    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/paneview/PaneView$ScrollListener;->onScroll(FI)V

    .line 1746
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1747
    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    sub-int/2addr v2, v5

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    .line 1751
    :cond_2
    iget-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusDesired:Z

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->setFocusable(Z)V

    .line 1752
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 1755
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->requestLayout()V

    .line 1756
    return-void

    .line 1703
    .end local v0           #newItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    .end local v1           #oldItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 1704
    .restart local v0       #newItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .restart local v1       #oldItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    goto :goto_0

    .line 1718
    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    goto :goto_1
.end method

.method private panesToTheLeft(I)Z
    .locals 4
    .parameter "pane"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2751
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_1

    .line 2752
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getNumberOfPanes()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v0, v3

    .line 2754
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2752
    goto :goto_0

    .line 2754
    :cond_1
    if-lez p1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private panesToTheRight(I)Z
    .locals 4
    .parameter "pane"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2765
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_1

    .line 2766
    if-lez p1, :cond_0

    move v0, v3

    .line 2768
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2766
    goto :goto_0

    .line 2768
    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getNumberOfPanes()I

    move-result v1

    if-ge v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private pixelsToPosition(F)F
    .locals 2
    .parameter "pixels"

    .prologue
    .line 2450
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-nez v0, :cond_0

    .line 2451
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mWidthWithMargin:I

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 2454
    :goto_0
    return v0

    :cond_0
    neg-float v0, p1

    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mWidthWithMargin:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private positionToPixels(F)I
    .locals 2
    .parameter "position"

    .prologue
    .line 2435
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-nez v0, :cond_0

    .line 2436
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mWidthWithMargin:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2439
    :goto_0
    return v0

    :cond_0
    neg-float v0, p1

    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mWidthWithMargin:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 2373
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    if-eqz v1, :cond_0

    .line 2374
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v2

    iget-object v3, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/paneview/PaneView$ItemViewListener;->onViewRemoved(ILandroid/view/View;)V

    .line 2377
    :cond_0
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeViewInLayout(Landroid/view/View;)V

    .line 2378
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/paneview/PaneAdapter;->getItemViewType(I)I

    move-result v0

    .line 2379
    .local v0, viewType:I
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/paneview/PaneView;->addViewToCache(Landroid/view/View;I)V

    .line 2380
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 2381
    return-void
.end method

.method private removeViewFromCache(I)Landroid/view/View;
    .locals 4
    .parameter "viewType"

    .prologue
    const/4 v3, 0x0

    .line 2407
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 2408
    .local v0, viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    move-object v1, v3

    .line 2414
    .end local p0
    :goto_0
    return-object v1

    .line 2411
    .restart local p0
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    .line 2412
    goto :goto_0

    .line 2414
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v1, p0

    goto :goto_0
.end method

.method private scrollToView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 2875
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 2876
    .local v0, delta:I
    if-lez v0, :cond_1

    .line 2877
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->pixelsToPosition(F)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->scroll(F)V

    .line 2884
    :cond_0
    :goto_0
    return-void

    .line 2879
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2880
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2881
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->pixelsToPosition(F)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->scroll(F)V

    goto :goto_0
.end method

.method private setStandardRenderer(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 1319
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sonyericsson/paneview/RendererFactory;->getStandardRenderer(I)Lcom/sonyericsson/animation/Renderer;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1320
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v0, :cond_0

    .line 1321
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1322
    .local v1, itemDrawRect:Landroid/graphics/Rect;
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    .line 1323
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1324
    const/4 v0, 0x0

    iget-object v3, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v3, v3, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v3, v3

    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1326
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 1327
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1329
    .end local v1           #itemDrawRect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private setupTransformer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 978
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/sonyericsson/paneview/Transformer;->beginSetup(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 979
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 980
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 981
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v3, v3, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 982
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v3

    iget-object v4, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v4, v4, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v4, v4

    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v4}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 984
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 985
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sonyericsson/paneview/PaneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/sonyericsson/paneview/Transformer;->setupItem(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 987
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_0
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 989
    iput-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 991
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v3}, Lcom/sonyericsson/paneview/Transformer;->finishSetup()V

    .line 996
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #rect:Landroid/graphics/Rect;
    :goto_1
    return-void

    .line 993
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v3}, Lcom/sonyericsson/paneview/Transformer;->cleanup()V

    .line 994
    iput-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    goto :goto_1
.end method

.method private srcBlitChild(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 11
    .parameter "canvas"
    .parameter "child"
    .parameter "cache"

    .prologue
    .line 2166
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 2167
    .local v7, cl:I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v9

    .line 2168
    .local v9, ct:I
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v8

    .line 2169
    .local v8, cr:I
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 2171
    .local v6, cb:I
    int-to-float v1, v7

    int-to-float v2, v9

    int-to-float v3, v8

    int-to-float v4, v6

    sget-object v5, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2183
    :goto_0
    return-void

    .line 2175
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 2177
    .local v10, restoreTo:I
    int-to-float v0, v7

    int-to-float v1, v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2178
    const/4 v0, 0x0

    const/4 v1, 0x0

    sub-int v2, v8, v7

    sub-int v3, v6, v9

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2180
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2182
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method private startDynamicsRunnable()V
    .locals 1

    .prologue
    .line 1554
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable(Z)V

    .line 1555
    return-void
.end method

.method private startDynamicsRunnable(Z)V
    .locals 1
    .parameter "startInteraction"

    .prologue
    .line 1558
    if-eqz p1, :cond_0

    .line 1559
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->interactionStart()V

    .line 1561
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->post(Ljava/lang/Runnable;)Z

    .line 1562
    return-void
.end method

.method private unionInvalidRectWithView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 2459
    if-eqz p1, :cond_0

    .line 2461
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 2463
    :cond_0
    return-void
.end method

.method private updateMaxScroll(Ljava/util/Collection;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1887
    .local p1, adapterItems:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    iget-boolean v4, p0, Lcom/sonyericsson/paneview/PaneView;->mKeepMaxScroll:Z

    if-eqz v4, :cond_1

    .line 1900
    :cond_0
    return-void

    .line 1890
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v1

    .line 1891
    .local v1, height:I
    const/4 v4, 0x0

    iput v4, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    .line 1892
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1893
    .local v0, adapterItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v4, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v4, v1, :cond_2

    .line 1894
    iget-object v4, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/paneview/PaneView;->pixelsToPosition(F)F

    move-result v3

    .line 1895
    .local v3, maxScroll:F
    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 1896
    iput v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    goto :goto_0
.end method

.method private updatePanePosition()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1583
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v7}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v4

    .line 1584
    .local v4, position:F
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v7}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v7

    invoke-direct {p0, v7}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v6

    .line 1585
    .local v6, scroll:I
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 1587
    .local v5, rect:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1588
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v7, v7, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1589
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v7, v7, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v7, v7

    invoke-direct {p0, v4, v7}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v7

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    neg-int v8, v6

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1591
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v8

    invoke-virtual {v5, v10, v10, v7, v8}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1593
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v7, :cond_2

    .line 1594
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1596
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/sonyericsson/paneview/PaneView;->addViewAndLayoutParams(Landroid/view/View;)V

    .line 1601
    :cond_1
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget-object v9, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1602
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget-object v9, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1609
    :goto_1
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/sonyericsson/paneview/PaneView;->unionInvalidRectWithView(Landroid/view/View;)V

    goto :goto_0

    .line 1607
    :cond_2
    invoke-direct {p0, v1, v5, v11}, Lcom/sonyericsson/paneview/PaneView;->ensureItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;Z)V

    goto :goto_1

    .line 1610
    :cond_3
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v7, :cond_0

    iget-boolean v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    if-eqz v7, :cond_0

    :cond_4
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1616
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 1617
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v7, :cond_0

    .line 1618
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v8, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v7, v8}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 1619
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1620
    iput-boolean v10, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    goto/16 :goto_0

    .line 1625
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_5
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_7

    .line 1628
    float-to-int v3, v4

    .line 1629
    .local v3, pane1:I
    if-ltz v3, :cond_6

    iget v7, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    if-ge v3, v7, :cond_6

    .line 1630
    iget v7, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateOffsetX:I

    invoke-virtual {p0, v3}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v8

    add-int v2, v7, v8

    .line 1631
    .local v2, left:I
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v7, v2, v10, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 1635
    .end local v2           #left:I
    :cond_6
    iget v7, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    sub-int/2addr v7, v11

    if-ge v3, v7, :cond_7

    .line 1636
    iget v7, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateOffsetX:I

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v8

    add-int v2, v7, v8

    .line 1637
    .restart local v2       #left:I
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v7, v2, v10, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 1642
    .end local v2           #left:I
    .end local v3           #pane1:I
    :cond_7
    invoke-static {v5}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1646
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    if-eqz v7, :cond_8

    .line 1647
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    iget v8, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    invoke-interface {v7, v4, v8}, Lcom/sonyericsson/paneview/PaneView$ScrollListener;->onScroll(FI)V

    .line 1651
    :cond_8
    invoke-virtual {p0, v10, v10}, Lcom/sonyericsson/paneview/PaneView;->awakenScrollBars(IZ)Z

    .line 1654
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/sonyericsson/paneview/PaneView;->invalidate(Landroid/graphics/Rect;)V

    .line 1655
    return-void
.end method

.method private updateSnapPosition(FFF)F
    .locals 5
    .parameter "velocityX"
    .parameter "position"
    .parameter "snapPosition"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 1477
    move v0, p3

    .line 1478
    .local v0, tmpSnapPosition:F
    iget-boolean v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-nez v1, :cond_2

    .line 1479
    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    cmpl-float v1, p2, p3

    if-lez v1, :cond_1

    add-float v1, p3, v3

    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 1481
    add-float/2addr v0, v3

    .line 1496
    :cond_0
    :goto_0
    return v0

    .line 1482
    :cond_1
    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    cmpg-float v1, p2, p3

    if-gez v1, :cond_0

    cmpl-float v1, p3, v4

    if-lez v1, :cond_0

    .line 1484
    sub-float/2addr v0, v3

    goto :goto_0

    .line 1489
    :cond_2
    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    cmpg-float v1, p2, p3

    if-gez v1, :cond_3

    cmpl-float v1, p3, v4

    if-lez v1, :cond_3

    .line 1490
    sub-float/2addr v0, v3

    goto :goto_0

    .line 1491
    :cond_3
    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    cmpl-float v1, p2, p3

    if-lez v1, :cond_0

    add-float v1, p3, v3

    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1493
    add-float/2addr v0, v3

    goto :goto_0
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 1013
    invoke-super {p0}, Landroid/widget/AdapterView;->cancelLongPress()V

    .line 1014
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/GestureDetector;->cancelLongPress()V

    .line 1015
    return-void
.end method

.method public clearAllRenderers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 673
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 674
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$Item;
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    if-eqz v2, :cond_0

    .line 675
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v2, v3}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 676
    iput-object v4, v1, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    goto :goto_0

    .line 680
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$Item;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mDeletedItems:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$Item;

    .line 681
    .restart local v1       #item:Lcom/sonyericsson/paneview/PaneView$Item;
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    if-eqz v2, :cond_2

    .line 682
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v2, v3}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 683
    iput-object v4, v1, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    goto :goto_1

    .line 686
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$Item;
    :cond_3
    return-void
.end method

.method public clearViews()V
    .locals 3

    .prologue
    .line 692
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 693
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 694
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    goto :goto_0

    .line 697
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_1
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1196
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 1197
    const/4 v3, 0x0

    .line 1203
    :goto_0
    return v3

    .line 1200
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    .line 1201
    .local v2, scrollPosition:F
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    invoke-static {v2, v4, v3}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v0

    .line 1202
    .local v0, clampedScrollPosition:F
    sub-float v3, v0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1203
    .local v1, outside:F
    const/high16 v3, 0x447a

    const/high16 v4, 0x3f80

    sub-float/2addr v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 6

    .prologue
    const/high16 v5, 0x447a

    const/4 v4, 0x0

    .line 1209
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 1210
    const/4 v3, 0x0

    .line 1220
    :goto_0
    return v3

    .line 1213
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    .line 1214
    .local v2, scrollPosition:F
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    invoke-static {v2, v4, v3}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v0

    .line 1215
    .local v0, clampedScrollPosition:F
    sub-float v3, v0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1217
    .local v1, outside:F
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 1218
    add-float v3, v0, v1

    mul-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_0

    .line 1220
    :cond_1
    mul-float v3, v5, v0

    float-to-int v3, v3

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 1227
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1228
    const/4 v0, 0x0

    .line 1231
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x447a

    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 1262
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1264
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->drawBackplate(Landroid/graphics/Canvas;)V

    .line 1266
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v2}, Lcom/sonyericsson/paneview/Transformer;->isSetupFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1267
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->drawUsingTransformer(Landroid/graphics/Canvas;)V

    .line 1301
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->drawFocusRect(Landroid/graphics/Canvas;)V

    .line 1316
    return-void

    .line 1269
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v2, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/paneview/PaneAdapter;->isInteractive(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1275
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1276
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v2, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v2, v2, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1277
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v3, v3, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v3, v3, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v3, v3

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v2

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1282
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v2, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1283
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v2, v1}, Lcom/sonyericsson/paneview/PaneView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 1288
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItemBackgroundDrawn:Z

    .line 1290
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1295
    .end local v1           #rect:Landroid/graphics/Rect;
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 1297
    .local v0, position:F
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/paneview/PaneView;->drawDeletedItems(Landroid/graphics/Canvas;F)V

    .line 1298
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/paneview/PaneView;->drawItems(Landroid/graphics/Canvas;F)V

    goto/16 :goto_0

    .line 1285
    .end local v0           #position:F
    .restart local v1       #rect:Landroid/graphics/Rect;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v2, v1}, Lcom/sonyericsson/paneview/PaneView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1292
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_2
    iput-boolean v5, p0, Lcom/sonyericsson/paneview/PaneView;->mItemBackgroundDrawn:Z

    goto :goto_2
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 2
    .parameter "direction"

    .prologue
    .line 2894
    invoke-virtual {p0, p0, p1}, Lcom/sonyericsson/paneview/PaneView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2896
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .parameter "currentFocus"
    .parameter "direction"

    .prologue
    .line 2901
    const/4 v0, 0x0

    .line 2904
    .local v0, focusCandidate:Landroid/view/View;
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 2906
    iget-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPreventExternalFocus:Z

    if-eqz v2, :cond_2

    .line 2910
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2917
    :goto_0
    iget-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPreferExternalFocus:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2920
    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/paneview/PaneView;->detectUserPaneSwitch(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2921
    const/4 v0, 0x0

    .line 2925
    :cond_0
    if-nez v0, :cond_3

    .line 2926
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/paneview/PaneView;->focusSearchOffScreen(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2936
    :cond_1
    :goto_1
    return-object v0

    .line 2914
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2927
    :cond_3
    const/16 v2, 0x21

    if-eq p2, v2, :cond_4

    const/16 v2, 0x82

    if-ne p2, v2, :cond_1

    :cond_4
    iget-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPreferExternalFocus:Z

    if-nez v2, :cond_1

    .line 2929
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/paneview/PaneView;->focusSearchOffScreen(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2931
    .local v1, offScreenFocus:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2932
    move-object v0, v1

    goto :goto_1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getAdapter()Lcom/sonyericsson/paneview/PaneAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/sonyericsson/paneview/PaneAdapter;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1243
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getCurrentPane()I
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v0}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "outRect"

    .prologue
    .line 1248
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1252
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1253
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingTop:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1254
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingRight:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1255
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingBottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1256
    return-void
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 2487
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2490
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2491
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/paneview/PaneView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2496
    :goto_0
    return-void

    .line 2494
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getNumberOfPanes()I
    .locals 1

    .prologue
    .line 852
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    return v0
.end method

.method public getPaneAbsoluteOffset(I)I
    .locals 2
    .parameter "pane"

    .prologue
    .line 881
    const/4 v0, 0x0

    int-to-float v1, p1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v0

    return v0
.end method

.method public getPaneRelativeOffset(I)I
    .locals 2
    .parameter "pane"

    .prologue
    .line 871
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v0}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    int-to-float v1, p1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v0

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v0}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 520
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1237
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getVelocityThreshold()I
    .locals 1

    .prologue
    .line 1064
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    return v0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1664
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1665
    .local v5, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v6}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    .line 1666
    .local v2, position:F
    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v6}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v6

    invoke-direct {p0, v6}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v4

    .line 1667
    .local v4, scroll:I
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1669
    .local v3, rect:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1670
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v6, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 1671
    iget-object v6, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v6, v6, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1672
    iget-object v6, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v6, v6, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v6, v6

    invoke-direct {p0, v2, v6}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v6

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    neg-int v7, v4

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 1674
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v7

    invoke-virtual {v3, v9, v9, v6, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1676
    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1681
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_1
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1683
    return-object v5
.end method

.method public hasEnabledItems(I)Z
    .locals 4
    .parameter "pane"

    .prologue
    .line 1081
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1082
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v2, v2, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    if-ne v2, p1, :cond_0

    .line 1083
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1084
    const/4 v2, 0x1

    .line 1088
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDoMirror()Z
    .locals 1

    .prologue
    .line 1057
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    return v0
.end method

.method public isInteracting()Z
    .locals 1

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    return v0
.end method

.method public keepMaxScroll(Z)V
    .locals 1
    .parameter "keepMaxScroll"

    .prologue
    .line 829
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mKeepMaxScroll:Z

    .line 830
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mKeepMaxScroll:Z

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->updateMaxScroll(Ljava/util/Collection;)V

    .line 832
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 833
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable()V

    .line 835
    :cond_0
    return-void
.end method

.method public moveToLeftPane()Z
    .locals 2

    .prologue
    .line 910
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    .line 913
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    goto :goto_0
.end method

.method public moveToNextPane()Z
    .locals 1

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    return v0
.end method

.method public moveToPane(I)Z
    .locals 5
    .parameter "pane"

    .prologue
    .line 891
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    if-ge p1, v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getVelocity()F

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 894
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Dynamics;->setMaxPosition(F)V

    .line 895
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Dynamics;->setMinPosition(F)V

    .line 898
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable()V

    .line 899
    const/4 v0, 0x1

    .line 901
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToPreviousPane()Z
    .locals 2

    .prologue
    .line 945
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    return v0
.end method

.method public moveToRightPane()Z
    .locals 2

    .prologue
    .line 923
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    .line 926
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2524
    if-eqz p1, :cond_0

    .line 2525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 2527
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2528
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1037
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTouchIsLocked:Z

    if-nez v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/paneview/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/GestureDetector;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTouchIsLocked:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x0

    .line 1164
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 1166
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v4}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    .line 1168
    .local v2, position:F
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1169
    .local v3, viewRect:Landroid/graphics/Rect;
    sub-int v4, p4, p2

    sub-int v5, p5, p3

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1171
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1172
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v4, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    invoke-direct {p0, v4, v2, v3}, Lcom/sonyericsson/paneview/PaneView;->isLocationVisible(Lcom/sonyericsson/paneview/PaneLocation;FLandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1175
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->layoutItem(Lcom/sonyericsson/paneview/PaneView$AdapterItem;F)V

    goto :goto_0

    .line 1176
    :cond_2
    iget-object v4, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1179
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    goto :goto_0

    .line 1183
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/paneview/PaneView;->updateMaxScroll(Ljava/util/Collection;)V

    .line 1185
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v4}, Lcom/sonyericsson/paneview/Transformer;->isSetupFinished()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1186
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->setupTransformer()V

    .line 1189
    :cond_4
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1190
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/paneview/PaneView;->invalidate(Landroid/graphics/Rect;)V

    .line 1191
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 1151
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 1152
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1153
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1156
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v3, v3, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    or-int/2addr v3, v5

    iget-object v4, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    or-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 1160
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2537
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    .line 2538
    const/16 p1, 0x42

    .line 2543
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 2544
    new-instance p2, Landroid/graphics/Rect;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 2545
    .restart local p2
    sparse-switch p1, :sswitch_data_0

    .line 2561
    :cond_1
    :goto_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    invoke-virtual {v5, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    .line 2563
    .local v1, focusCandidate:Landroid/view/View;
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v7

    .line 2567
    :goto_2
    return v5

    .line 2539
    .end local v1           #focusCandidate:Landroid/view/View;
    :cond_2
    if-ne p1, v7, :cond_0

    .line 2540
    const/16 p1, 0x11

    goto :goto_0

    .line 2548
    :sswitch_0
    const/4 v4, 0x0

    .line 2549
    .local v4, top:I
    const/4 v2, 0x0

    .line 2550
    .local v2, left:I
    invoke-virtual {p2, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 2554
    .end local v2           #left:I
    .end local v4           #top:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v0

    .line 2555
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v3

    .line 2556
    .local v3, right:I
    invoke-virtual {p2, v3, v0, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .end local v0           #bottom:I
    .end local v3           #right:I
    .restart local v1       #focusCandidate:Landroid/view/View;
    :cond_3
    move v5, v6

    .line 2567
    goto :goto_2

    .line 2545
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->onSizeChanged(IIII)V

    .line 1141
    int-to-float v0, p1

    int-to-float v1, p1

    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mMarginF:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/paneview/PaneView;->mWidthWithMargin:I

    .line 1143
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    .line 1147
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1020
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mRejectPaddingTouch:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/GestureDetector;->cancelTouch()V

    .line 1023
    const/4 v0, 0x0

    .line 1032
    :goto_0
    return v0

    .line 1026
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTouchIsLocked:Z

    if-nez v0, :cond_2

    .line 1028
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/paneview/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1032
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 2504
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->findItem(Landroid/view/View;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v0

    .line 2505
    .local v0, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    if-eqz v0, :cond_1

    .line 2506
    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 2507
    iget-boolean v1, p0, Lcom/sonyericsson/paneview/PaneView;->mVerticalScrollEnabled:Z

    if-eqz v1, :cond_0

    .line 2510
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->scrollToView(Landroid/view/View;)V

    .line 2516
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2517
    return-void

    .line 2513
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    goto :goto_0
.end method

.method public restoreViews()V
    .locals 0

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 704
    return-void
.end method

.method public scroll(F)V
    .locals 6
    .parameter "deltaPosition"

    .prologue
    const/4 v5, 0x0

    .line 808
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 809
    .local v0, currentPosition:F
    add-float v1, v0, p1

    .line 811
    .local v1, newPosition:F
    cmpg-float v2, v1, v5

    if-gez v2, :cond_1

    .line 812
    const/4 v1, 0x0

    .line 817
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v5, v3, v4}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 818
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 819
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 820
    return-void

    .line 813
    :cond_1
    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 814
    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    check-cast p1, Lcom/sonyericsson/paneview/PaneAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V

    return-void
.end method

.method public setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDataSetObserver:Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

    invoke-interface {v0, v1}, Lcom/sonyericsson/paneview/PaneAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 529
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    .line 531
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDataSetObserver:Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

    invoke-interface {v0, v1}, Lcom/sonyericsson/paneview/PaneAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 535
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->onDataChanged(Z)V

    .line 536
    return-void
.end method

.method public setBackplate(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "backplateDrawable"

    .prologue
    .line 764
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    .line 766
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 772
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->createSrcBlitPaint()V

    .line 774
    :cond_1
    return-void
.end method

.method public setBackplateModifiers(II)V
    .locals 0
    .parameter "backPlateOffsetX"
    .parameter "backPlateWidth"

    .prologue
    .line 784
    iput p1, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateOffsetX:I

    .line 785
    iput p2, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateWidth:I

    .line 786
    return-void
.end method

.method public setDoMirror(Z)V
    .locals 0
    .parameter "doMirror"

    .prologue
    .line 1050
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    .line 1051
    return-void
.end method

.method public setEnableStandardRenderers(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 655
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    .line 656
    iget-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    if-eqz v2, :cond_1

    .line 657
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 658
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 659
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->setStandardRenderer(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    goto :goto_0

    .line 663
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 664
    .restart local v1       #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    goto :goto_1

    .line 667
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_2
    return-void
.end method

.method public setFocusPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 752
    iput p1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingLeft:I

    .line 753
    iput p2, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingTop:I

    .line 754
    iput p3, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingRight:I

    .line 755
    iput p4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingBottom:I

    .line 756
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .parameter "focusable"

    .prologue
    .line 2888
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusDesired:Z

    .line 2889
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 2890
    return-void
.end method

.method public setFocusedItemDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "focusedItemDrawable"

    .prologue
    .line 739
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusedItemDrawable:Landroid/graphics/drawable/Drawable;

    .line 740
    return-void
.end method

.method public setInteractionListener(Lcom/sonyericsson/paneview/PaneView$InteractionListener;)V
    .locals 0
    .parameter "interactionListener"

    .prologue
    .line 608
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    .line 609
    return-void
.end method

.method public setItemViewListener(Lcom/sonyericsson/paneview/PaneView$ItemViewListener;)V
    .locals 0
    .parameter "itemViewListener"

    .prologue
    .line 628
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    .line 629
    return-void
.end method

.method public setPaneDynamics(Lcom/sonyericsson/util/Dynamics;)V
    .locals 4
    .parameter "dynamics"

    .prologue
    .line 551
    if-nez p1, :cond_0

    .line 552
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "dynamics cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 555
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 556
    .local v0, currentPosition:F
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getVelocity()F

    move-result v1

    .line 558
    .local v1, currentVelocity:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 559
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    .line 561
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/GestureDetector;->setEnableHorizontalDrag(Z)V

    .line 562
    return-void
.end method

.method public setPaneMargin(F)V
    .locals 0
    .parameter "paneMargin"

    .prologue
    .line 712
    iput p1, p0, Lcom/sonyericsson/paneview/PaneView;->mMarginF:F

    .line 713
    return-void
.end method

.method public setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V
    .locals 0
    .parameter "paneViewTouchListener"

    .prologue
    .line 721
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    .line 722
    return-void
.end method

.method public setPosition(F)V
    .locals 4
    .parameter "position"

    .prologue
    .line 794
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 795
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/Dynamics;->setMaxPosition(F)V

    .line 796
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/Dynamics;->setMinPosition(F)V

    .line 797
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 798
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 799
    return-void
.end method

.method public setPreferExternalFocus(Z)V
    .locals 0
    .parameter "preferExternal"

    .prologue
    .line 1112
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mPreferExternalFocus:Z

    .line 1113
    return-void
.end method

.method public setPreventExternalFocus(Z)V
    .locals 0
    .parameter "preventExternal"

    .prologue
    .line 1099
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mPreventExternalFocus:Z

    .line 1100
    return-void
.end method

.method public setRejectPaddingTouch(Z)V
    .locals 0
    .parameter "rejectPaddingTouch"

    .prologue
    .line 598
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mRejectPaddingTouch:Z

    .line 599
    return-void
.end method

.method public setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V
    .locals 0
    .parameter "rendererFactory"

    .prologue
    .line 639
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    .line 640
    return-void
.end method

.method public setScrollDynamics(Lcom/sonyericsson/util/Dynamics;)V
    .locals 4
    .parameter "dynamics"

    .prologue
    .line 565
    if-nez p1, :cond_0

    .line 566
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "dynamics cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 569
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 570
    .local v0, currentPosition:F
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getVelocity()F

    move-result v1

    .line 572
    .local v1, currentVelocity:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 573
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    .line 575
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/GestureDetector;->setEnableVerticalDrag(Z)V

    .line 576
    return-void
.end method

.method public setScrollListener(Lcom/sonyericsson/paneview/PaneView$ScrollListener;)V
    .locals 3
    .parameter "scrollListener"

    .prologue
    .line 585
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    .line 587
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v1

    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneView$ScrollListener;->onScroll(FI)V

    .line 590
    :cond_0
    return-void
.end method

.method public setScrollPosition(F)V
    .locals 4
    .parameter "position"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 803
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 804
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 805
    return-void
.end method

.method public setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "selectedItemDrawable"

    .prologue
    .line 730
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

    .line 731
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 507
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 508
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 509
    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    goto :goto_0

    .line 512
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_1
    return-void
.end method

.method public setSrcBlit(Z)V
    .locals 1
    .parameter "srcBlit"

    .prologue
    .line 1132
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlit:Z

    .line 1133
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1134
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->createSrcBlitPaint()V

    .line 1136
    :cond_0
    return-void
.end method

.method public setTouchLocked(Z)V
    .locals 1
    .parameter "locked"

    .prologue
    .line 1005
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mTouchIsLocked:Z

    .line 1006
    if-eqz p1, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/GestureDetector;->cancelLongPress()V

    .line 1009
    :cond_0
    return-void
.end method

.method public setVelocityThreshold(I)V
    .locals 0
    .parameter "velocityThreshold"

    .prologue
    .line 1071
    iput p1, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    .line 1072
    return-void
.end method

.method public setVerticalScrollEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1121
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mVerticalScrollEnabled:Z

    .line 1122
    return-void
.end method

.method public transform(Lcom/sonyericsson/paneview/Transformer;)V
    .locals 1
    .parameter "transformer"

    .prologue
    .line 957
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v0}, Lcom/sonyericsson/paneview/Transformer;->cleanup()V

    .line 960
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    .line 961
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    if-eqz v0, :cond_1

    .line 963
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 964
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 965
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->requestLayout()V

    .line 972
    :goto_0
    return-void

    .line 967
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 968
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable()V

    .line 969
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusDesired:Z

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->setFocusable(Z)V

    .line 970
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    goto :goto_0
.end method
