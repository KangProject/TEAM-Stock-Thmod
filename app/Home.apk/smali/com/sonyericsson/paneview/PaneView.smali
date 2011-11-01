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
    .line 429
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 288
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 294
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .line 297
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    .line 300
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    .line 309
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    .line 318
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDeletedItems:Ljava/util/LinkedList;

    .line 357
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDebugTextPaint:Landroid/graphics/Paint;

    .line 359
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    .line 368
    new-instance v1, Lcom/sonyericsson/paneview/FocusFinder;

    invoke-direct {v1}, Lcom/sonyericsson/paneview/FocusFinder;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

    .line 420
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    .line 431
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 433
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 435
    .local v0, touchSlop:I
    new-instance v1, Lcom/sonyericsson/paneview/GestureDetector;

    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->createGestureListener()Lcom/sonyericsson/paneview/GestureDetector$GestureListener;

    move-result-object v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/sonyericsson/paneview/GestureDetector;-><init>(Lcom/sonyericsson/paneview/GestureDetector$GestureListener;IJ)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    .line 438
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;-><init>(Lcom/sonyericsson/paneview/PaneView;Lcom/sonyericsson/paneview/PaneView$1;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDataSetObserver:Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

    .line 440
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->createDynamicsRunnable()V

    .line 442
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/paneview/PaneView$1;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    .line 454
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/paneview/PaneView$2;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    .line 466
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/paneview/PaneView$3;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemKeyListener:Landroid/view/View$OnKeyListener;

    .line 489
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/paneview/PaneView$4;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 502
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/paneview/PaneView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/paneview/PaneView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->pixelsToPosition(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/paneview/PaneView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
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
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/paneview/PaneView;->updateSnapPosition(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/paneview/PaneView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    return v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->interactionStart()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/paneview/PaneView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->onDataChanged(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->interactionEnd()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/paneview/PaneView;Lcom/sonyericsson/paneview/PaneView$AdapterItem;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/paneview/PaneView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/paneview/PaneView;II)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/paneview/PaneView;->getContainingItem(II)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/paneview/PaneView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
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

    .line 2306
    if-nez p2, :cond_0

    .line 2333
    :goto_0
    return-void

    .line 2311
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2313
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 2317
    :cond_1
    iput-object p2, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 2318
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2321
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    if-eqz v0, :cond_2

    .line 2322
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/sonyericsson/paneview/PaneView$ItemViewListener;->onViewAdded(ILandroid/view/View;)V

    .line 2325
    :cond_2
    if-eqz p3, :cond_3

    .line 2327
    invoke-direct {p0, p2}, Lcom/sonyericsson/paneview/PaneView;->addViewAndLayoutParams(Landroid/view/View;)V

    .line 2331
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
    .line 2573
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2574
    .local v2, parent:Landroid/view/ViewParent;
    move-object v1, p1

    .line 2576
    .local v1, descendant:Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_0

    if-eq v2, p0, :cond_0

    .line 2577
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 2578
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    .line 2581
    :cond_0
    if-nez v2, :cond_1

    .line 2582
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->addViewAndLayoutParams(Landroid/view/View;)V

    .line 2584
    :cond_1
    return-void
.end method

.method private addViewAndLayoutParams(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, -0x2

    .line 2632
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2633
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 2634
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2637
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/sonyericsson/paneview/PaneView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2638
    return-void
.end method

.method private addViewToCache(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "viewType"

    .prologue
    .line 2360
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 2361
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 2362
    .local v0, viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 2363
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2364
    .restart local v0       #viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2366
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2368
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
    .line 1963
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

    .line 1964
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneLocation;->recycle()V

    .line 1965
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    goto :goto_0

    .line 1967
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1968
    return-void
.end method

.method private createDynamicsRunnable()V
    .locals 1

    .prologue
    .line 1530
    new-instance v0, Lcom/sonyericsson/paneview/PaneView$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/paneview/PaneView$6;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    .line 1550
    return-void
.end method

.method private createGestureListener()Lcom/sonyericsson/paneview/GestureDetector$GestureListener;
    .locals 1

    .prologue
    .line 1375
    new-instance v0, Lcom/sonyericsson/paneview/PaneView$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/paneview/PaneView$5;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    return-object v0
.end method

.method private createSrcBlitPaint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2159
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    .line 2160
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2161
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2162
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2163
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2164
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

    .line 2649
    const/4 v1, 0x0

    .line 2651
    .local v1, scroll:Z
    if-eq p3, v4, :cond_0

    if-ne p3, v5, :cond_3

    .line 2652
    :cond_0
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2653
    .local v0, focusRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 2654
    .local v3, sourceRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 2656
    .local v2, scrollRect:Landroid/graphics/Rect;
    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/paneview/PaneView;->getFocusRectInRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2657
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/paneview/PaneView;->getFocusRectInRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2659
    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2660
    invoke-direct {p0, p0, v2}, Lcom/sonyericsson/paneview/PaneView;->offsetRectToRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2664
    if-ne p3, v4, :cond_4

    .line 2665
    iget v4, v2, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 2674
    :cond_1
    :goto_0
    invoke-static {p3, v3, v2, v0}, Lcom/sonyericsson/paneview/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2675
    const/4 v1, 0x1

    .line 2678
    :cond_2
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2679
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2680
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2683
    .end local v0           #focusRect:Landroid/graphics/Rect;
    .end local v2           #scrollRect:Landroid/graphics/Rect;
    .end local v3           #sourceRect:Landroid/graphics/Rect;
    :cond_3
    return v1

    .line 2666
    .restart local v0       #focusRect:Landroid/graphics/Rect;
    .restart local v2       #scrollRect:Landroid/graphics/Rect;
    .restart local v3       #sourceRect:Landroid/graphics/Rect;
    :cond_4
    if-ne p3, v5, :cond_1

    .line 2667
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

    .line 1331
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 1332
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 1333
    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateWidth:I

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateWidth:I

    move v0, v4

    .line 1335
    .local v0, backplateWidth:I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    .line 1337
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1338
    .local v3, tmpCanvas:Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v7, v7, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1339
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1342
    .end local v0           #backplateWidth:I
    .end local v3           #tmpCanvas:Landroid/graphics/Canvas;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v4}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v4

    float-to-int v2, v4

    .line 1344
    .local v2, pane1:I
    if-ltz v2, :cond_1

    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    if-ge v2, v4, :cond_1

    .line 1345
    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateOffsetX:I

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v5

    add-int v1, v4, v5

    .line 1346
    .local v1, left:I
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    int-to-float v5, v1

    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1347
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v1, v7, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 1351
    .end local v1           #left:I
    :cond_1
    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_2

    .line 1352
    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateOffsetX:I

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v5

    add-int v1, v4, v5

    .line 1353
    .restart local v1       #left:I
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    int-to-float v5, v1

    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1354
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v1, v7, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 1358
    .end local v1           #left:I
    .end local v2           #pane1:I
    :cond_2
    return-void

    .line 1333
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

    .line 2039
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mDeletedItems:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2041
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/paneview/PaneView$Item;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2042
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/paneview/PaneView$Item;

    .line 2044
    .local v0, deletedItem:Lcom/sonyericsson/paneview/PaneView$Item;
    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/paneview/PaneView;->drawItemUsingRenderer(Landroid/graphics/Canvas;Lcom/sonyericsson/paneview/PaneView$Item;F)Z

    move-result v2

    .line 2046
    .local v2, newFrame:Z
    if-nez v2, :cond_0

    .line 2048
    iget-object v3, v0, Lcom/sonyericsson/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/paneview/PaneView;->removeViewInLayout(Landroid/view/View;)V

    .line 2052
    iput-object v5, v0, Lcom/sonyericsson/paneview/PaneView$Item;->view:Landroid/view/View;

    .line 2055
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v4, v0, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v3, v4}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 2056
    iput-object v5, v0, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 2059
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2066
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->invalidate()V

    goto :goto_0

    .line 2068
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
    .line 2025
    if-eqz p1, :cond_0

    .line 2026
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2027
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2029
    :cond_0
    return-void
.end method

.method private drawFocusRect(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1361
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1362
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1363
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1364
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v1, v0}, Lcom/sonyericsson/paneview/PaneView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 1365
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1367
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

    .line 2176
    iget-object v0, p2, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v0, :cond_0

    .line 2178
    const/4 v0, 0x0

    .line 2198
    :goto_0
    return v0

    .line 2183
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2184
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

    .line 2187
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 2188
    .local v3, targetRect:Landroid/graphics/Rect;
    iget-object v0, p2, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2189
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

    .line 2192
    iget-object v0, p2, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    iget-object v1, p2, Lcom/sonyericsson/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z

    move-result v6

    .line 2195
    .local v6, newFrame:Z
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v0, v6

    .line 2198
    goto :goto_0
.end method

.method private drawItems(Landroid/graphics/Canvas;F)V
    .locals 8
    .parameter "canvas"
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 2077
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 2078
    .local v4, viewRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2080
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

    .line 2081
    .local v2, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 2086
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v5, :cond_3

    .line 2087
    invoke-direct {p0, p1, v2, p2}, Lcom/sonyericsson/paneview/PaneView;->drawItemUsingRenderer(Landroid/graphics/Canvas;Lcom/sonyericsson/paneview/PaneView$Item;F)Z

    move-result v3

    .line 2088
    .local v3, newFrame:Z
    if-nez v3, :cond_2

    iget-boolean v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    if-nez v5, :cond_2

    .line 2090
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v6, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v5, v6}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 2091
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 2092
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    invoke-direct {p0, v5, p2, v4}, Lcom/sonyericsson/paneview/PaneView;->isLocationVisible(Lcom/sonyericsson/paneview/PaneLocation;FLandroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2095
    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 2098
    :cond_1
    iget-boolean v5, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    if-eqz v5, :cond_2

    .line 2101
    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->setStandardRenderer(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 2107
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->invalidate()V

    goto :goto_0

    .line 2109
    .end local v3           #newFrame:Z
    :cond_3
    const/4 v0, 0x0

    .line 2111
    .local v0, cache:Landroid/graphics/Bitmap;
    iget-boolean v5, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlit:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/sonyericsson/paneview/PaneView;->mItemBackgroundDrawn:Z

    if-nez v5, :cond_4

    .line 2112
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2115
    :cond_4
    if-eqz v0, :cond_5

    .line 2116
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, p1, v5, v0}, Lcom/sonyericsson/paneview/PaneView;->srcBlitChild(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 2120
    :goto_1
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/sonyericsson/paneview/PaneView;->unionInvalidRectWithView(Landroid/view/View;)V

    goto :goto_0

    .line 2118
    :cond_5
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/sonyericsson/paneview/PaneView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 2124
    .end local v0           #cache:Landroid/graphics/Bitmap;
    .end local v2           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_6
    invoke-static {v4}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2125
    return-void
.end method

.method private drawUsingTransformer(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 1977
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v5}, Lcom/sonyericsson/paneview/Transformer;->update()V

    .line 1979
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1980
    .local v3, rect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1981
    .local v4, viewRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1984
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

    .line 1985
    .local v2, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/paneview/PaneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1986
    .local v0, adapterItem:Ljava/lang/Object;
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v5, v0, v3}, Lcom/sonyericsson/paneview/Transformer;->getDrawRect(Ljava/lang/Object;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1987
    invoke-static {v4, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1988
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-nez v5, :cond_1

    .line 1989
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v5, v5

    invoke-direct {p0, v2, v5}, Lcom/sonyericsson/paneview/PaneView;->layoutItem(Lcom/sonyericsson/paneview/PaneView$AdapterItem;F)V

    .line 1992
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

    .line 1995
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v5, v3}, Lcom/sonyericsson/paneview/PaneView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 1998
    :cond_2
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1999
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    iget-object v6, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-interface {v5, v0, v6}, Lcom/sonyericsson/paneview/Transformer;->addItemToDraw(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_0

    .line 2005
    .end local v0           #adapterItem:Ljava/lang/Object;
    .end local v2           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_3
    invoke-static {v4}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2006
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2010
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v5, p1}, Lcom/sonyericsson/paneview/Transformer;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2013
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->invalidate()V

    .line 2015
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

    .line 2228
    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v0

    .line 2229
    .local v0, adapterPosition:I
    const/4 v1, 0x0

    .line 2231
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

    .line 2233
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ID has changed!A posible cause of this is that the client has changed the data without notifiying us (via the observer on the adapter).If the IDs are not stable, hasStableIds() should return false."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2239
    :cond_0
    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-boolean v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->viewValid:Z

    if-nez v4, :cond_6

    .line 2242
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    iget-object v5, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-interface {v4, v0, v5, p0}, Lcom/sonyericsson/paneview/PaneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2243
    .local v2, view:Landroid/view/View;
    const/4 v1, 0x1

    .line 2245
    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eq v2, v4, :cond_1

    .line 2249
    const-string v4, "PaneView"

    const-string v5, "convertView does not seem to be handled efficiently by the adaptor"

    invoke-static {v4, v5}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 2254
    invoke-direct {p0, p1, v2, p3}, Lcom/sonyericsson/paneview/PaneView;->addItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/view/View;Z)V

    .line 2257
    :cond_1
    iput-boolean v8, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->viewValid:Z

    .line 2267
    .end local v2           #view:Landroid/view/View;
    :cond_2
    :goto_0
    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    if-eqz v4, :cond_3

    .line 2268
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->setStandardRenderer(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 2271
    :cond_3
    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 2272
    iget-object v2, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 2274
    .restart local v2       #view:Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2275
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sonyericsson/paneview/PaneAdapter;->isInteractive(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2276
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sonyericsson/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2277
    invoke-virtual {v2, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 2279
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mItemKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2280
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mItemFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2290
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

    .line 2292
    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 2294
    .end local v2           #view:Landroid/view/View;
    :cond_5
    return-void

    .line 2259
    :cond_6
    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-nez v4, :cond_2

    .line 2261
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-interface {v4, v0}, Lcom/sonyericsson/paneview/PaneAdapter;->getItemViewType(I)I

    move-result v3

    .line 2262
    .local v3, viewType:I
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-direct {p0, v3}, Lcom/sonyericsson/paneview/PaneView;->removeViewFromCache(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v0, v5, p0}, Lcom/sonyericsson/paneview/PaneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2263
    .restart local v2       #view:Landroid/view/View;
    const/4 v1, 0x1

    .line 2264
    invoke-direct {p0, p1, v2, p3}, Lcom/sonyericsson/paneview/PaneView;->addItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/view/View;Z)V

    goto :goto_0

    .line 2282
    .end local v3           #viewType:I
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 2283
    invoke-virtual {v2, v10}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2284
    invoke-virtual {v2, v10}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_1
.end method

.method private findItem(Landroid/view/View;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 3
    .parameter "view"

    .prologue
    .line 2443
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

    .line 2444
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    move-object v2, v1

    .line 2449
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

    .line 2750
    const/4 v1, 0x0

    .line 2751
    .local v1, newFocus:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v2

    .line 2752
    .local v2, pane:I
    const/4 v3, 0x0

    .line 2754
    .local v3, sourceRect:Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 2755
    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #sourceRect:Landroid/graphics/Rect;
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2756
    .restart local v3       #sourceRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2759
    invoke-virtual {p0, p1, v3}, Lcom/sonyericsson/paneview/PaneView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2762
    :cond_0
    if-ne p2, v5, :cond_5

    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->panesToTheLeft(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2763
    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->getLeftPane(I)I

    move-result v4

    invoke-direct {p0, p2, v4}, Lcom/sonyericsson/paneview/PaneView;->getFocusableViewsOnPane(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 2764
    .local v0, focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v3, :cond_4

    .line 2770
    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 2771
    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 2772
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v3, v6}, Lcom/sonyericsson/paneview/FocusFinder;->findNextFocusFromRect(Ljava/util/ArrayList;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    .line 2779
    :goto_0
    if-nez v1, :cond_1

    iget-boolean v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusDesired:Z

    if-eqz v4, :cond_1

    .line 2785
    invoke-virtual {p0, v8}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 2788
    move-object v1, p0

    .line 2791
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->moveToLeftPane()Z

    .line 2830
    .end local v0           #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    if-eq v1, p0, :cond_3

    .line 2833
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->addRootView(Landroid/view/View;)V

    .line 2836
    :cond_3
    return-object v1

    .line 2775
    .restart local v0       #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v9, v6}, Lcom/sonyericsson/paneview/FocusFinder;->findNextFocus(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 2792
    .end local v0           #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    if-ne p2, v6, :cond_8

    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->panesToTheRight(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2793
    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->getRightPane(I)I

    move-result v4

    invoke-direct {p0, p2, v4}, Lcom/sonyericsson/paneview/PaneView;->getFocusableViewsOnPane(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 2794
    .restart local v0       #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v3, :cond_7

    .line 2800
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2801
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2802
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v3, v5}, Lcom/sonyericsson/paneview/FocusFinder;->findNextFocusFromRect(Ljava/util/ArrayList;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    .line 2809
    :goto_2
    if-nez v1, :cond_6

    iget-boolean v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusDesired:Z

    if-eqz v4, :cond_6

    .line 2815
    invoke-virtual {p0, v8}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 2818
    move-object v1, p0

    .line 2821
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->moveToRightPane()Z

    goto :goto_1

    .line 2805
    :cond_7
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusFinder:Lcom/sonyericsson/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v9, v5}, Lcom/sonyericsson/paneview/FocusFinder;->findNextFocus(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 2822
    .end local v0           #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_8
    const/16 v4, 0x82

    if-eq p2, v4, :cond_9

    const/16 v4, 0x21

    if-ne p2, v4, :cond_2

    .line 2823
    :cond_9
    invoke-direct {p0, p2, v2}, Lcom/sonyericsson/paneview/PaneView;->getFocusableViewsOnPane(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 2824
    .restart local v0       #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v3, :cond_2

    .line 2825
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
    .line 1746
    .local p1, newItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    .local p2, oldItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    move-object v5, v0

    invoke-interface {v5}, Lcom/sonyericsson/paneview/PaneAdapter;->hasStableIds()Z

    move-result v18

    .line 1747
    .local v18, stableIDs:Z
    if-nez v18, :cond_0

    .line 1750
    const/16 p3, 0x0

    .line 1755
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->clear()V

    .line 1758
    :cond_0
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 1759
    .local v6, itemDrawRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/paneview/PaneLocation;->obtain()Lcom/sonyericsson/paneview/PaneLocation;

    move-result-object v16

    .line 1760
    .local v16, newLocation:Lcom/sonyericsson/paneview/PaneLocation;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v19

    .line 1761
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

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v17

    .line 1764
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

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    move-object v5, v0

    move-object v0, v5

    move v1, v11

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneAdapter;->getLocation(ILcom/sonyericsson/paneview/PaneLocation;)V

    .line 1769
    const/4 v14, 0x0

    .line 1771
    .local v14, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    if-eqz v18, :cond_5

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    move-object v5, v0

    invoke-interface {v5, v11}, Lcom/sonyericsson/paneview/PaneAdapter;->getItemId(I)J

    move-result-wide v12

    .line 1775
    .local v12, id:J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    check-cast v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1781
    .restart local v14       #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :goto_1
    if-eqz v14, :cond_6

    .line 1790
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

    .line 1796
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    move-object v5, v0

    invoke-interface {v5, v11}, Lcom/sonyericsson/paneview/RendererFactory;->getMoveRenderer(I)Lcom/sonyericsson/animation/Renderer;

    move-result-object v5

    iput-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1797
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v5, :cond_2

    .line 1798
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1799
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

    .line 1801
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-interface/range {v5 .. v10}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 1806
    :cond_2
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneLocation;->set(Lcom/sonyericsson/paneview/PaneLocation;)V

    .line 1807
    invoke-static {v14, v11}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$502(Lcom/sonyericsson/paneview/PaneView$AdapterItem;I)I

    .line 1809
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 1812
    const/4 v5, 0x0

    iput-boolean v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->viewValid:Z

    .line 1838
    :cond_3
    :goto_2
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v7

    if-le v5, v7, :cond_4

    .line 1839
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

    .line 1840
    .local v15, maxScroll:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    move v5, v0

    cmpl-float v5, v15, v5

    if-lez v5, :cond_4

    .line 1841
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    .line 1846
    .end local v15           #maxScroll:F
    :cond_4
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1778
    .end local v12           #id:J
    :cond_5
    int-to-long v12, v11

    .restart local v12       #id:J
    goto/16 :goto_1

    .line 1820
    :cond_6
    new-instance v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .end local v14           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    const/4 v5, 0x0

    invoke-direct {v14, v5}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;-><init>(Lcom/sonyericsson/paneview/PaneView$1;)V

    .line 1821
    .restart local v14       #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    invoke-static {}, Lcom/sonyericsson/paneview/PaneLocation;->obtain()Lcom/sonyericsson/paneview/PaneLocation;

    move-result-object v5

    iput-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    .line 1822
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneLocation;->set(Lcom/sonyericsson/paneview/PaneLocation;)V

    .line 1823
    invoke-static {v14, v11}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$502(Lcom/sonyericsson/paneview/PaneView$AdapterItem;I)I

    .line 1824
    invoke-static {v14, v12, v13}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$602(Lcom/sonyericsson/paneview/PaneView$AdapterItem;J)J

    .line 1827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    move-object v5, v0

    if-eqz v5, :cond_3

    if-eqz p3, :cond_3

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    move-object v5, v0

    invoke-interface {v5, v11}, Lcom/sonyericsson/paneview/RendererFactory;->getAddRenderer(I)Lcom/sonyericsson/animation/Renderer;

    move-result-object v5

    iput-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1829
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v5, :cond_3

    .line 1830
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1831
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

    .line 1833
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-interface/range {v5 .. v10}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    goto/16 :goto_2

    .line 1849
    .end local v12           #id:J
    .end local v14           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->updateMaxScroll(Ljava/util/Collection;)V

    .line 1851
    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1852
    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/paneview/PaneLocation;->recycle()V

    .line 1853
    invoke-static {v6}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1854
    return-void
.end method

.method private getContainingItem(II)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1507
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1511
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

    .line 1512
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1513
    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1514
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1515
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    move-object v3, v1

    .line 1522
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :goto_0
    return-object v3

    .line 1521
    :cond_1
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1522
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getFocusRectInRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "view"
    .parameter "rect"

    .prologue
    .line 2562
    invoke-virtual {p1, p2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2563
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/paneview/PaneView;->offsetRectToRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2564
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

    .line 2595
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2596
    .local v4, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v5}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v3

    .line 2598
    .local v3, scroll:I
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 2600
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

    .line 2601
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2602
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2603
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

    .line 2605
    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-lez v5, :cond_0

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 2606
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 2607
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2608
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2613
    :goto_1
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 2614
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v5, v4, p1, v8}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0

    .line 2610
    :cond_1
    invoke-direct {p0, v1, v2, v8}, Lcom/sonyericsson/paneview/PaneView;->ensureItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;Z)V

    goto :goto_1

    .line 2620
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_2
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2622
    return-object v4
.end method

.method private getLeftPane(I)I
    .locals 1
    .parameter "pane"

    .prologue
    .line 2693
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_0

    .line 2694
    add-int/lit8 v0, p1, 0x1

    .line 2696
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
    .line 2395
    sub-float v0, p2, p1

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v0

    return v0
.end method

.method private getRightPane(I)I
    .locals 1
    .parameter "pane"

    .prologue
    .line 2707
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_0

    .line 2708
    const/4 v0, 0x1

    sub-int v0, p1, v0

    .line 2710
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

    .line 1881
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1884
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

    .line 1886
    .local v7, deletedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    if-ne v7, v0, :cond_1

    .line 1887
    iput-object v10, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1891
    :cond_1
    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1892
    const/4 v6, 0x0

    .line 1896
    .local v6, deleteRenderer:Lcom/sonyericsson/animation/Renderer;
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 1897
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    invoke-interface {v0}, Lcom/sonyericsson/paneview/RendererFactory;->getDeleteRenderer()Lcom/sonyericsson/animation/Renderer;

    move-result-object v6

    .line 1899
    :cond_2
    if-eqz v6, :cond_3

    .line 1902
    new-instance v9, Lcom/sonyericsson/paneview/PaneView$Item;

    invoke-direct {v9, v10}, Lcom/sonyericsson/paneview/PaneView$Item;-><init>(Lcom/sonyericsson/paneview/PaneView$1;)V

    .line 1903
    .local v9, item:Lcom/sonyericsson/paneview/PaneView$Item;
    invoke-static {}, Lcom/sonyericsson/paneview/PaneLocation;->obtain()Lcom/sonyericsson/paneview/PaneLocation;

    move-result-object v0

    iput-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    .line 1904
    iget-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v3, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/paneview/PaneLocation;->set(Lcom/sonyericsson/paneview/PaneLocation;)V

    .line 1905
    iget-object v0, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iput-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->view:Landroid/view/View;

    .line 1906
    iput-object v6, v9, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1907
    iget-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1908
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

    .line 1910
    iget-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 1911
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDeletedItems:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1914
    .end local v9           #item:Lcom/sonyericsson/paneview/PaneView$Item;
    :cond_3
    iget-object v0, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->removeViewInLayout(Landroid/view/View;)V

    .line 1918
    iput-object v10, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    goto :goto_0

    .line 1924
    .end local v6           #deleteRenderer:Lcom/sonyericsson/animation/Renderer;
    .end local v7           #deletedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->clearItems(Ljava/util/HashMap;)V

    .line 1926
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1927
    return-void
.end method

.method private interactionEnd()V
    .locals 1

    .prologue
    .line 1571
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    if-eqz v0, :cond_0

    .line 1572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    .line 1573
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    invoke-interface {v0}, Lcom/sonyericsson/paneview/PaneView$InteractionListener;->onInteractionEnd()V

    .line 1575
    :cond_0
    return-void
.end method

.method private interactionStart()V
    .locals 1

    .prologue
    .line 1564
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    if-eqz v0, :cond_0

    .line 1565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    .line 1566
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    invoke-interface {v0}, Lcom/sonyericsson/paneview/PaneView$InteractionListener;->onInteractionStart()V

    .line 1568
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

    .line 1939
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

    .line 1942
    :cond_0
    const/4 v2, 0x0

    .line 1953
    :goto_0
    return v2

    .line 1944
    :cond_1
    const/4 v1, 0x0

    .line 1945
    .local v1, visible:Z
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1946
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v2, p1, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1947
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

    .line 1949
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1950
    const/4 v1, 0x1

    .line 1952
    :cond_2
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    move v2, v1

    .line 1953
    goto :goto_0
.end method

.method private layoutItem(Lcom/sonyericsson/paneview/PaneView$AdapterItem;F)V
    .locals 4
    .parameter "item"
    .parameter "placement"

    .prologue
    .line 2209
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2210
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v1, v1, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2211
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

    .line 2213
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/paneview/PaneView;->ensureItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;Z)V

    .line 2214
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->unionInvalidRectWithView(Landroid/view/View;)V

    .line 2215
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2216
    return-void
.end method

.method private offsetRectToRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "view"
    .parameter "rect"

    .prologue
    .line 2548
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2550
    .local v0, root:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 2551
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2553
    :cond_0
    return-void
.end method

.method private onDataChanged(Z)V
    .locals 6
    .parameter "enableAnimations"

    .prologue
    const/4 v5, 0x1

    .line 1669
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1670
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .line 1671
    .local v0, newItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 1678
    .local v1, oldItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->clearItems(Ljava/util/HashMap;)V

    .line 1680
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    if-eqz v2, :cond_4

    .line 1682
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-interface {v2}, Lcom/sonyericsson/paneview/PaneAdapter;->getNumberOfPanes()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    .line 1686
    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/paneview/PaneView;->getAdapterItems(Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    .line 1693
    :goto_1
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1694
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/paneview/PaneView;->handleDeletedItems(Ljava/util/HashMap;Z)V

    .line 1698
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    .line 1701
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 1702
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1703
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    new-instance v3, Lcom/sonyericsson/paneview/PaneView$7;

    invoke-direct {v3, p0}, Lcom/sonyericsson/paneview/PaneView$7;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1711
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    if-eqz v2, :cond_1

    .line 1712
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v3

    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/paneview/PaneView$ScrollListener;->onScroll(FI)V

    .line 1716
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1717
    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    sub-int/2addr v2, v5

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    .line 1721
    :cond_2
    iget-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusDesired:Z

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->setFocusable(Z)V

    .line 1722
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 1725
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->requestLayout()V

    .line 1726
    return-void

    .line 1673
    .end local v0           #newItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    .end local v1           #oldItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 1674
    .restart local v0       #newItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .restart local v1       #oldItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    goto :goto_0

    .line 1688
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

    .line 2721
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_1

    .line 2722
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getNumberOfPanes()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v0, v3

    .line 2724
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2722
    goto :goto_0

    .line 2724
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

    .line 2735
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_1

    .line 2736
    if-lez p1, :cond_0

    move v0, v3

    .line 2738
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2736
    goto :goto_0

    .line 2738
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
    .line 2420
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-nez v0, :cond_0

    .line 2421
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mWidthWithMargin:I

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 2424
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
    .line 2405
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-nez v0, :cond_0

    .line 2406
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mWidthWithMargin:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2409
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
    .line 2343
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    if-eqz v1, :cond_0

    .line 2344
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v2

    iget-object v3, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/paneview/PaneView$ItemViewListener;->onViewRemoved(ILandroid/view/View;)V

    .line 2347
    :cond_0
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeViewInLayout(Landroid/view/View;)V

    .line 2348
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/paneview/PaneAdapter;->getItemViewType(I)I

    move-result v0

    .line 2349
    .local v0, viewType:I
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/paneview/PaneView;->addViewToCache(Landroid/view/View;I)V

    .line 2350
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 2351
    return-void
.end method

.method private removeViewFromCache(I)Landroid/view/View;
    .locals 4
    .parameter "viewType"

    .prologue
    const/4 v3, 0x0

    .line 2377
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 2378
    .local v0, viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    move-object v1, v3

    .line 2384
    .end local p0
    :goto_0
    return-object v1

    .line 2381
    .restart local p0
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    .line 2382
    goto :goto_0

    .line 2384
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
    .line 2845
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 2846
    .local v0, delta:I
    if-lez v0, :cond_1

    .line 2847
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->pixelsToPosition(F)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->scroll(F)V

    .line 2854
    :cond_0
    :goto_0
    return-void

    .line 2849
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2850
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2851
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

    .line 1318
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sonyericsson/paneview/RendererFactory;->getStandardRenderer(I)Lcom/sonyericsson/animation/Renderer;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1319
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v0, :cond_0

    .line 1320
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1321
    .local v1, itemDrawRect:Landroid/graphics/Rect;
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    .line 1322
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1323
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

    .line 1325
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 1326
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1328
    .end local v1           #itemDrawRect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private setupTransformer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 977
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/sonyericsson/paneview/Transformer;->beginSetup(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 978
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 979
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

    .line 980
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v3, v3, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 981
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

    .line 983
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 984
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sonyericsson/paneview/PaneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/sonyericsson/paneview/Transformer;->setupItem(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 986
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_0
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 988
    iput-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 990
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v3}, Lcom/sonyericsson/paneview/Transformer;->finishSetup()V

    .line 995
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #rect:Landroid/graphics/Rect;
    :goto_1
    return-void

    .line 992
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v3}, Lcom/sonyericsson/paneview/Transformer;->cleanup()V

    .line 993
    iput-object v6, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    goto :goto_1
.end method

.method private srcBlitChild(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 11
    .parameter "canvas"
    .parameter "child"
    .parameter "cache"

    .prologue
    .line 2136
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 2137
    .local v7, cl:I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v9

    .line 2138
    .local v9, ct:I
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v8

    .line 2139
    .local v8, cr:I
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 2141
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

    .line 2153
    :goto_0
    return-void

    .line 2145
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 2147
    .local v10, restoreTo:I
    int-to-float v0, v7

    int-to-float v1, v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2148
    const/4 v0, 0x0

    const/4 v1, 0x0

    sub-int v2, v8, v7

    sub-int v3, v6, v9

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2150
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2152
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method private startDynamicsRunnable()V
    .locals 1

    .prologue
    .line 1553
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable(Z)V

    .line 1554
    return-void
.end method

.method private startDynamicsRunnable(Z)V
    .locals 1
    .parameter "startInteraction"

    .prologue
    .line 1557
    if-eqz p1, :cond_0

    .line 1558
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->interactionStart()V

    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->post(Ljava/lang/Runnable;)Z

    .line 1561
    return-void
.end method

.method private unionInvalidRectWithView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 2429
    if-eqz p1, :cond_0

    .line 2431
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

    .line 2433
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
    .line 1857
    .local p1, adapterItems:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    iget-boolean v4, p0, Lcom/sonyericsson/paneview/PaneView;->mKeepMaxScroll:Z

    if-eqz v4, :cond_1

    .line 1870
    :cond_0
    return-void

    .line 1860
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v1

    .line 1861
    .local v1, height:I
    const/4 v4, 0x0

    iput v4, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    .line 1862
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

    .line 1863
    .local v0, adapterItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v4, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v4, v1, :cond_2

    .line 1864
    iget-object v4, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/paneview/PaneView;->pixelsToPosition(F)F

    move-result v3

    .line 1865
    .local v3, maxScroll:F
    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 1866
    iput v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    goto :goto_0
.end method

.method private updatePanePosition()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1582
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v7}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v4

    .line 1583
    .local v4, position:F
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v7}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v7

    invoke-direct {p0, v7}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v6

    .line 1584
    .local v6, scroll:I
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 1586
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

    .line 1587
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v7, v7, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1588
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

    .line 1590
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v8

    invoke-virtual {v5, v10, v10, v7, v8}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1592
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v7, :cond_2

    .line 1593
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1595
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/sonyericsson/paneview/PaneView;->addViewAndLayoutParams(Landroid/view/View;)V

    .line 1600
    :cond_1
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget-object v9, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1601
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget-object v9, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1608
    :goto_1
    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/sonyericsson/paneview/PaneView;->unionInvalidRectWithView(Landroid/view/View;)V

    goto :goto_0

    .line 1606
    :cond_2
    invoke-direct {p0, v1, v5, v11}, Lcom/sonyericsson/paneview/PaneView;->ensureItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;Z)V

    goto :goto_1

    .line 1609
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

    .line 1615
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 1616
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v7, :cond_0

    .line 1617
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v8, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v7, v8}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 1618
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1619
    iput-boolean v10, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    goto/16 :goto_0

    .line 1624
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_5
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_7

    .line 1627
    float-to-int v3, v4

    .line 1628
    .local v3, pane1:I
    if-ltz v3, :cond_6

    iget v7, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    if-ge v3, v7, :cond_6

    .line 1629
    iget v7, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateOffsetX:I

    invoke-virtual {p0, v3}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v8

    add-int v2, v7, v8

    .line 1630
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

    .line 1634
    .end local v2           #left:I
    :cond_6
    iget v7, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    sub-int/2addr v7, v11

    if-ge v3, v7, :cond_7

    .line 1635
    iget v7, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateOffsetX:I

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v8

    add-int v2, v7, v8

    .line 1636
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

    .line 1641
    .end local v2           #left:I
    .end local v3           #pane1:I
    :cond_7
    invoke-static {v5}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1645
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    if-eqz v7, :cond_8

    .line 1646
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    iget v8, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    invoke-interface {v7, v4, v8}, Lcom/sonyericsson/paneview/PaneView$ScrollListener;->onScroll(FI)V

    .line 1650
    :cond_8
    invoke-virtual {p0, v10, v10}, Lcom/sonyericsson/paneview/PaneView;->awakenScrollBars(IZ)Z

    .line 1653
    iget-object v7, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/sonyericsson/paneview/PaneView;->invalidate(Landroid/graphics/Rect;)V

    .line 1654
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

    .line 1476
    move v0, p3

    .line 1477
    .local v0, tmpSnapPosition:F
    iget-boolean v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-nez v1, :cond_2

    .line 1478
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

    .line 1480
    add-float/2addr v0, v3

    .line 1495
    :cond_0
    :goto_0
    return v0

    .line 1481
    :cond_1
    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    cmpg-float v1, p2, p3

    if-gez v1, :cond_0

    cmpl-float v1, p3, v4

    if-lez v1, :cond_0

    .line 1483
    sub-float/2addr v0, v3

    goto :goto_0

    .line 1488
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

    .line 1489
    sub-float/2addr v0, v3

    goto :goto_0

    .line 1490
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

    .line 1492
    add-float/2addr v0, v3

    goto :goto_0
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 1012
    invoke-super {p0}, Landroid/widget/AdapterView;->cancelLongPress()V

    .line 1013
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/GestureDetector;->cancelLongPress()V

    .line 1014
    return-void
.end method

.method public clearAllRenderers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 672
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

    .line 673
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$Item;
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    if-eqz v2, :cond_0

    .line 674
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v2, v3}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 675
    iput-object v4, v1, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    goto :goto_0

    .line 679
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

    .line 680
    .restart local v1       #item:Lcom/sonyericsson/paneview/PaneView$Item;
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    if-eqz v2, :cond_2

    .line 681
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v2, v3}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 682
    iput-object v4, v1, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    goto :goto_1

    .line 685
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$Item;
    :cond_3
    return-void
.end method

.method public clearViews()V
    .locals 3

    .prologue
    .line 691
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

    .line 692
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 693
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    goto :goto_0

    .line 696
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_1
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1195
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 1196
    const/4 v3, 0x0

    .line 1202
    :goto_0
    return v3

    .line 1199
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    .line 1200
    .local v2, scrollPosition:F
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    invoke-static {v2, v4, v3}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v0

    .line 1201
    .local v0, clampedScrollPosition:F
    sub-float v3, v0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1202
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

    .line 1208
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 1209
    const/4 v3, 0x0

    .line 1219
    :goto_0
    return v3

    .line 1212
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    .line 1213
    .local v2, scrollPosition:F
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    invoke-static {v2, v4, v3}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v0

    .line 1214
    .local v0, clampedScrollPosition:F
    sub-float v3, v0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1216
    .local v1, outside:F
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 1217
    add-float v3, v0, v1

    mul-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_0

    .line 1219
    :cond_1
    mul-float v3, v5, v0

    float-to-int v3, v3

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 1226
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1227
    const/4 v0, 0x0

    .line 1230
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

    .line 1261
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1263
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->drawBackplate(Landroid/graphics/Canvas;)V

    .line 1265
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v2}, Lcom/sonyericsson/paneview/Transformer;->isSetupFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1266
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->drawUsingTransformer(Landroid/graphics/Canvas;)V

    .line 1300
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->drawFocusRect(Landroid/graphics/Canvas;)V

    .line 1315
    return-void

    .line 1268
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

    .line 1274
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1275
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v2, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v2, v2, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1276
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

    .line 1281
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v2, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1282
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v2, v1}, Lcom/sonyericsson/paneview/PaneView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 1287
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItemBackgroundDrawn:Z

    .line 1289
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1294
    .end local v1           #rect:Landroid/graphics/Rect;
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 1296
    .local v0, position:F
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/paneview/PaneView;->drawDeletedItems(Landroid/graphics/Canvas;F)V

    .line 1297
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/paneview/PaneView;->drawItems(Landroid/graphics/Canvas;F)V

    goto/16 :goto_0

    .line 1284
    .end local v0           #position:F
    .restart local v1       #rect:Landroid/graphics/Rect;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v2, v1}, Lcom/sonyericsson/paneview/PaneView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1291
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_2
    iput-boolean v5, p0, Lcom/sonyericsson/paneview/PaneView;->mItemBackgroundDrawn:Z

    goto :goto_2
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 2
    .parameter "direction"

    .prologue
    .line 2864
    invoke-virtual {p0, p0, p1}, Lcom/sonyericsson/paneview/PaneView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2866
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
    .line 2871
    const/4 v0, 0x0

    .line 2874
    .local v0, focusCandidate:Landroid/view/View;
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 2876
    iget-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPreventExternalFocus:Z

    if-eqz v2, :cond_2

    .line 2880
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2887
    :goto_0
    iget-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPreferExternalFocus:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2890
    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/paneview/PaneView;->detectUserPaneSwitch(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2891
    const/4 v0, 0x0

    .line 2895
    :cond_0
    if-nez v0, :cond_3

    .line 2896
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/paneview/PaneView;->focusSearchOffScreen(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2906
    :cond_1
    :goto_1
    return-object v0

    .line 2884
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2897
    :cond_3
    const/16 v2, 0x21

    if-eq p2, v2, :cond_4

    const/16 v2, 0x82

    if-ne p2, v2, :cond_1

    :cond_4
    iget-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPreferExternalFocus:Z

    if-nez v2, :cond_1

    .line 2899
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/paneview/PaneView;->focusSearchOffScreen(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2901
    .local v1, offScreenFocus:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2902
    move-object v0, v1

    goto :goto_1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getAdapter()Lcom/sonyericsson/paneview/PaneAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/sonyericsson/paneview/PaneAdapter;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1242
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getCurrentPane()I
    .locals 1

    .prologue
    .line 842
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
    .line 1247
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1251
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1252
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingTop:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1253
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingRight:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1254
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingBottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1255
    return-void
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2460
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2461
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/paneview/PaneView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2466
    :goto_0
    return-void

    .line 2464
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getNumberOfPanes()I
    .locals 1

    .prologue
    .line 851
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    return v0
.end method

.method public getPaneAbsoluteOffset(I)I
    .locals 2
    .parameter "pane"

    .prologue
    .line 880
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
    .line 870
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
    .line 860
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
    .line 515
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 519
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1236
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getVelocityThreshold()I
    .locals 1

    .prologue
    .line 1063
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    return v0
.end method

.method public hasEnabledItems(I)Z
    .locals 4
    .parameter "pane"

    .prologue
    .line 1080
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

    .line 1081
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v2, v2, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    if-ne v2, p1, :cond_0

    .line 1082
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1083
    const/4 v2, 0x1

    .line 1087
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
    .line 1056
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    return v0
.end method

.method public isInteracting()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    return v0
.end method

.method public keepMaxScroll(Z)V
    .locals 1
    .parameter "keepMaxScroll"

    .prologue
    .line 828
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mKeepMaxScroll:Z

    .line 829
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mKeepMaxScroll:Z

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->updateMaxScroll(Ljava/util/Collection;)V

    .line 831
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 832
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable()V

    .line 834
    :cond_0
    return-void
.end method

.method public moveToLeftPane()Z
    .locals 2

    .prologue
    .line 909
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    .line 912
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
    .line 935
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
    .line 890
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    if-ge p1, v0, :cond_0

    .line 891
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

    .line 893
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Dynamics;->setMaxPosition(F)V

    .line 894
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Dynamics;->setMinPosition(F)V

    .line 897
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable()V

    .line 898
    const/4 v0, 0x1

    .line 900
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToPreviousPane()Z
    .locals 2

    .prologue
    .line 944
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
    .line 922
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    .line 925
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
    .line 2494
    if-eqz p1, :cond_0

    .line 2495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 2497
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2498
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1036
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTouchIsLocked:Z

    if-nez v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/paneview/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1042
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

    .line 1163
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 1165
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v4}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    .line 1167
    .local v2, position:F
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1168
    .local v3, viewRect:Landroid/graphics/Rect;
    sub-int v4, p4, p2

    sub-int v5, p5, p3

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1170
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

    .line 1171
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v4, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    invoke-direct {p0, v4, v2, v3}, Lcom/sonyericsson/paneview/PaneView;->isLocationVisible(Lcom/sonyericsson/paneview/PaneLocation;FLandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1174
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->layoutItem(Lcom/sonyericsson/paneview/PaneView$AdapterItem;F)V

    goto :goto_0

    .line 1175
    :cond_2
    iget-object v4, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1178
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    goto :goto_0

    .line 1182
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/paneview/PaneView;->updateMaxScroll(Ljava/util/Collection;)V

    .line 1184
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v4}, Lcom/sonyericsson/paneview/Transformer;->isSetupFinished()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1185
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->setupTransformer()V

    .line 1188
    :cond_4
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1189
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/paneview/PaneView;->invalidate(Landroid/graphics/Rect;)V

    .line 1190
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 1150
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 1151
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

    .line 1152
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1155
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

    .line 1159
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

    .line 2507
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    .line 2508
    const/16 p1, 0x42

    .line 2513
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 2514
    new-instance p2, Landroid/graphics/Rect;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 2515
    .restart local p2
    sparse-switch p1, :sswitch_data_0

    .line 2531
    :cond_1
    :goto_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    invoke-virtual {v5, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    .line 2533
    .local v1, focusCandidate:Landroid/view/View;
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v7

    .line 2537
    :goto_2
    return v5

    .line 2509
    .end local v1           #focusCandidate:Landroid/view/View;
    :cond_2
    if-ne p1, v7, :cond_0

    .line 2510
    const/16 p1, 0x11

    goto :goto_0

    .line 2518
    :sswitch_0
    const/4 v4, 0x0

    .line 2519
    .local v4, top:I
    const/4 v2, 0x0

    .line 2520
    .local v2, left:I
    invoke-virtual {p2, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 2524
    .end local v2           #left:I
    .end local v4           #top:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v0

    .line 2525
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v3

    .line 2526
    .local v3, right:I
    invoke-virtual {p2, v3, v0, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .end local v0           #bottom:I
    .end local v3           #right:I
    .restart local v1       #focusCandidate:Landroid/view/View;
    :cond_3
    move v5, v6

    .line 2537
    goto :goto_2

    .line 2515
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
    .line 1139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->onSizeChanged(IIII)V

    .line 1140
    int-to-float v0, p1

    int-to-float v1, p1

    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mMarginF:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/paneview/PaneView;->mWidthWithMargin:I

    .line 1142
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    .line 1146
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1019
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

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/GestureDetector;->cancelTouch()V

    .line 1022
    const/4 v0, 0x0

    .line 1031
    :goto_0
    return v0

    .line 1025
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTouchIsLocked:Z

    if-nez v0, :cond_2

    .line 1027
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/paneview/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1031
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 2474
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->findItem(Landroid/view/View;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v0

    .line 2475
    .local v0, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    if-eqz v0, :cond_1

    .line 2476
    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 2477
    iget-boolean v1, p0, Lcom/sonyericsson/paneview/PaneView;->mVerticalScrollEnabled:Z

    if-eqz v1, :cond_0

    .line 2480
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->scrollToView(Landroid/view/View;)V

    .line 2486
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2487
    return-void

    .line 2483
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    goto :goto_0
.end method

.method public restoreViews()V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 703
    return-void
.end method

.method public scroll(F)V
    .locals 6
    .parameter "deltaPosition"

    .prologue
    const/4 v5, 0x0

    .line 807
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 808
    .local v0, currentPosition:F
    add-float v1, v0, p1

    .line 810
    .local v1, newPosition:F
    cmpg-float v2, v1, v5

    if-gez v2, :cond_1

    .line 811
    const/4 v1, 0x0

    .line 816
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v5, v3, v4}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 817
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 818
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 819
    return-void

    .line 812
    :cond_1
    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 813
    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    check-cast p1, Lcom/sonyericsson/paneview/PaneAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V

    return-void
.end method

.method public setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDataSetObserver:Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

    invoke-interface {v0, v1}, Lcom/sonyericsson/paneview/PaneAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 528
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDataSetObserver:Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

    invoke-interface {v0, v1}, Lcom/sonyericsson/paneview/PaneAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 534
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->onDataChanged(Z)V

    .line 535
    return-void
.end method

.method public setBackplate(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "backplateDrawable"

    .prologue
    .line 763
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    .line 765
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 771
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->createSrcBlitPaint()V

    .line 773
    :cond_1
    return-void
.end method

.method public setBackplateModifiers(II)V
    .locals 0
    .parameter "backPlateOffsetX"
    .parameter "backPlateWidth"

    .prologue
    .line 783
    iput p1, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateOffsetX:I

    .line 784
    iput p2, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateWidth:I

    .line 785
    return-void
.end method

.method public setDoMirror(Z)V
    .locals 0
    .parameter "doMirror"

    .prologue
    .line 1049
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    .line 1050
    return-void
.end method

.method public setEnableStandardRenderers(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 654
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    .line 655
    iget-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    if-eqz v2, :cond_1

    .line 656
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

    .line 657
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 658
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->setStandardRenderer(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    goto :goto_0

    .line 662
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

    .line 663
    .restart local v1       #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    goto :goto_1

    .line 666
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
    .line 751
    iput p1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingLeft:I

    .line 752
    iput p2, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingTop:I

    .line 753
    iput p3, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingRight:I

    .line 754
    iput p4, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusPaddingBottom:I

    .line 755
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .parameter "focusable"

    .prologue
    .line 2858
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusDesired:Z

    .line 2859
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 2860
    return-void
.end method

.method public setFocusedItemDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "focusedItemDrawable"

    .prologue
    .line 738
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusedItemDrawable:Landroid/graphics/drawable/Drawable;

    .line 739
    return-void
.end method

.method public setInteractionListener(Lcom/sonyericsson/paneview/PaneView$InteractionListener;)V
    .locals 0
    .parameter "interactionListener"

    .prologue
    .line 607
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    .line 608
    return-void
.end method

.method public setItemViewListener(Lcom/sonyericsson/paneview/PaneView$ItemViewListener;)V
    .locals 0
    .parameter "itemViewListener"

    .prologue
    .line 627
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    .line 628
    return-void
.end method

.method public setPaneDynamics(Lcom/sonyericsson/util/Dynamics;)V
    .locals 4
    .parameter "dynamics"

    .prologue
    .line 550
    if-nez p1, :cond_0

    .line 551
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "dynamics cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 554
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 555
    .local v0, currentPosition:F
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getVelocity()F

    move-result v1

    .line 557
    .local v1, currentVelocity:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 558
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    .line 560
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/GestureDetector;->setEnableHorizontalDrag(Z)V

    .line 561
    return-void
.end method

.method public setPaneMargin(F)V
    .locals 0
    .parameter "paneMargin"

    .prologue
    .line 711
    iput p1, p0, Lcom/sonyericsson/paneview/PaneView;->mMarginF:F

    .line 712
    return-void
.end method

.method public setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V
    .locals 0
    .parameter "paneViewTouchListener"

    .prologue
    .line 720
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    .line 721
    return-void
.end method

.method public setPosition(F)V
    .locals 4
    .parameter "position"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 794
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/Dynamics;->setMaxPosition(F)V

    .line 795
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/Dynamics;->setMinPosition(F)V

    .line 796
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 797
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 798
    return-void
.end method

.method public setPreferExternalFocus(Z)V
    .locals 0
    .parameter "preferExternal"

    .prologue
    .line 1111
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mPreferExternalFocus:Z

    .line 1112
    return-void
.end method

.method public setPreventExternalFocus(Z)V
    .locals 0
    .parameter "preventExternal"

    .prologue
    .line 1098
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mPreventExternalFocus:Z

    .line 1099
    return-void
.end method

.method public setRejectPaddingTouch(Z)V
    .locals 0
    .parameter "rejectPaddingTouch"

    .prologue
    .line 597
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mRejectPaddingTouch:Z

    .line 598
    return-void
.end method

.method public setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V
    .locals 0
    .parameter "rendererFactory"

    .prologue
    .line 638
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    .line 639
    return-void
.end method

.method public setScrollDynamics(Lcom/sonyericsson/util/Dynamics;)V
    .locals 4
    .parameter "dynamics"

    .prologue
    .line 564
    if-nez p1, :cond_0

    .line 565
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "dynamics cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 568
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 569
    .local v0, currentPosition:F
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getVelocity()F

    move-result v1

    .line 571
    .local v1, currentVelocity:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 572
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    .line 574
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/GestureDetector;->setEnableVerticalDrag(Z)V

    .line 575
    return-void
.end method

.method public setScrollListener(Lcom/sonyericsson/paneview/PaneView$ScrollListener;)V
    .locals 3
    .parameter "scrollListener"

    .prologue
    .line 584
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    .line 586
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v1

    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneView$ScrollListener;->onScroll(FI)V

    .line 589
    :cond_0
    return-void
.end method

.method public setScrollPosition(F)V
    .locals 4
    .parameter "position"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 802
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 803
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 804
    return-void
.end method

.method public setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "selectedItemDrawable"

    .prologue
    .line 729
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

    .line 730
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 506
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

    .line 507
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 508
    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    goto :goto_0

    .line 511
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_1
    return-void
.end method

.method public setSrcBlit(Z)V
    .locals 1
    .parameter "srcBlit"

    .prologue
    .line 1131
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlit:Z

    .line 1132
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1133
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->createSrcBlitPaint()V

    .line 1135
    :cond_0
    return-void
.end method

.method public setTouchLocked(Z)V
    .locals 1
    .parameter "locked"

    .prologue
    .line 1004
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mTouchIsLocked:Z

    .line 1005
    if-eqz p1, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/GestureDetector;->cancelLongPress()V

    .line 1008
    :cond_0
    return-void
.end method

.method public setVelocityThreshold(I)V
    .locals 0
    .parameter "velocityThreshold"

    .prologue
    .line 1070
    iput p1, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    .line 1071
    return-void
.end method

.method public setVerticalScrollEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1120
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mVerticalScrollEnabled:Z

    .line 1121
    return-void
.end method

.method public transform(Lcom/sonyericsson/paneview/Transformer;)V
    .locals 1
    .parameter "transformer"

    .prologue
    .line 956
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v0}, Lcom/sonyericsson/paneview/Transformer;->cleanup()V

    .line 959
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    .line 960
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    if-eqz v0, :cond_1

    .line 962
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 963
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    .line 964
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->requestLayout()V

    .line 971
    :goto_0
    return-void

    .line 966
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 967
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable()V

    .line 968
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mFocusDesired:Z

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->setFocusable(Z)V

    .line 969
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->setDescendantFocusability(I)V

    goto :goto_0
.end method
