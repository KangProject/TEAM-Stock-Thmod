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

.field private mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

.field private mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

.field private mInvalidRect:Landroid/graphics/Rect;

.field private mIsInteracting:Z

.field private mItemBackgroundDrawn:Z

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
    .line 377
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 281
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 287
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .line 290
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    .line 293
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    .line 302
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    .line 311
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDeletedItems:Ljava/util/LinkedList;

    .line 344
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDebugTextPaint:Landroid/graphics/Paint;

    .line 346
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    .line 358
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    .line 379
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 381
    .local v0, touchSlop:I
    new-instance v1, Lcom/sonyericsson/paneview/GestureDetector;

    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->createGestureListener()Lcom/sonyericsson/paneview/GestureDetector$GestureListener;

    move-result-object v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/sonyericsson/paneview/GestureDetector;-><init>(Lcom/sonyericsson/paneview/GestureDetector$GestureListener;IJ)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    .line 384
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;-><init>(Lcom/sonyericsson/paneview/PaneView;Lcom/sonyericsson/paneview/PaneView$1;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDataSetObserver:Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

    .line 386
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->createDynamicsRunnable()V

    .line 388
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/paneview/PaneView$1;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    .line 400
    new-instance v1, Lcom/sonyericsson/paneview/PaneView$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/paneview/PaneView$2;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    .line 417
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/paneview/PaneView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->pixelsToPosition(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/paneview/PaneView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
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
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/paneview/PaneView;->updateSnapPosition(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/util/Dynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/paneview/PaneView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    return v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->interactionStart()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/paneview/PaneView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->onDataChanged(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->interactionEnd()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/paneview/PaneView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonyericsson/paneview/PaneView;Lcom/sonyericsson/paneview/PaneView$AdapterItem;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/paneview/PaneView;II)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/paneview/PaneView;->getContainingItem(II)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/paneview/PaneView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/paneview/PaneView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable(Z)V

    return-void
.end method

.method private addItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/view/View;)V
    .locals 6
    .parameter "item"
    .parameter "view"

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 1972
    if-nez p2, :cond_0

    .line 2001
    :goto_0
    return-void

    .line 1977
    :cond_0
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1979
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 1983
    :cond_1
    iput-object p2, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 1984
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1987
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    if-eqz v1, :cond_2

    .line 1988
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$400(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v2

    invoke-interface {v1, v2, p2}, Lcom/sonyericsson/paneview/PaneView$ItemViewListener;->onViewAdded(ILandroid/view/View;)V

    .line 1992
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1993
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_3

    .line 1994
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1996
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p0, p2, v1, v0, v4}, Lcom/sonyericsson/paneview/PaneView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1999
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v1, v1, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    or-int/2addr v1, v5

    iget-object v2, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v2, v2, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    or-int/2addr v2, v5

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method private addViewToCache(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "viewType"

    .prologue
    .line 2028
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 2029
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 2030
    .local v0, viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 2031
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2032
    .restart local v0       #viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2036
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
    .line 1659
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

    .line 1660
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneLocation;->recycle()V

    .line 1661
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    goto :goto_0

    .line 1663
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1664
    return-void
.end method

.method private createDynamicsRunnable()V
    .locals 1

    .prologue
    .line 1251
    new-instance v0, Lcom/sonyericsson/paneview/PaneView$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/paneview/PaneView$4;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    .line 1271
    return-void
.end method

.method private createGestureListener()Lcom/sonyericsson/paneview/GestureDetector$GestureListener;
    .locals 1

    .prologue
    .line 1100
    new-instance v0, Lcom/sonyericsson/paneview/PaneView$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/paneview/PaneView$3;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    return-object v0
.end method

.method private createSrcBlitPaint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1851
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    .line 1852
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1853
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1854
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1855
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1856
    return-void
.end method

.method private drawBackplate(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1072
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 1073
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 1074
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    .line 1075
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1076
    .local v1, tmpCanvas:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1077
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1080
    .end local v1           #tmpCanvas:Landroid/graphics/Canvas;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    float-to-int v0, v2

    .line 1082
    .local v0, pane1:I
    if-ltz v0, :cond_1

    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    if-ge v0, v2, :cond_1

    .line 1083
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1087
    :cond_1
    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_2

    .line 1088
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1092
    .end local v0           #pane1:I
    :cond_2
    return-void
.end method

.method private drawDeletedItems(Landroid/graphics/Canvas;F)V
    .locals 6
    .parameter "canvas"
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 1731
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mDeletedItems:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1733
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/paneview/PaneView$Item;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1734
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/paneview/PaneView$Item;

    .line 1736
    .local v0, deletedItem:Lcom/sonyericsson/paneview/PaneView$Item;
    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/paneview/PaneView;->drawItemUsingRenderer(Landroid/graphics/Canvas;Lcom/sonyericsson/paneview/PaneView$Item;F)Z

    move-result v2

    .line 1738
    .local v2, newFrame:Z
    if-nez v2, :cond_0

    .line 1740
    iget-object v3, v0, Lcom/sonyericsson/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/paneview/PaneView;->removeViewInLayout(Landroid/view/View;)V

    .line 1744
    iput-object v5, v0, Lcom/sonyericsson/paneview/PaneView$Item;->view:Landroid/view/View;

    .line 1747
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v4, v0, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v3, v4}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 1748
    iput-object v5, v0, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1751
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1758
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->invalidate()V

    goto :goto_0

    .line 1760
    .end local v0           #deletedItem:Lcom/sonyericsson/paneview/PaneView$Item;
    .end local v2           #newFrame:Z
    :cond_1
    return-void
.end method

.method private drawItemUsingRenderer(Landroid/graphics/Canvas;Lcom/sonyericsson/paneview/PaneView$Item;F)Z
    .locals 7
    .parameter "canvas"
    .parameter "item"
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 1868
    iget-object v0, p2, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v0, :cond_0

    .line 1870
    const/4 v0, 0x0

    .line 1890
    :goto_0
    return v0

    .line 1875
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1876
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

    .line 1879
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1880
    .local v3, targetRect:Landroid/graphics/Rect;
    iget-object v0, p2, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1881
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

    .line 1884
    iget-object v0, p2, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    iget-object v1, p2, Lcom/sonyericsson/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z

    move-result v6

    .line 1887
    .local v6, newFrame:Z
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1888
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v0, v6

    .line 1890
    goto :goto_0
.end method

.method private drawItems(Landroid/graphics/Canvas;F)V
    .locals 8
    .parameter "canvas"
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 1769
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1770
    .local v4, viewRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1772
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

    .line 1773
    .local v2, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1778
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v5, :cond_3

    .line 1779
    invoke-direct {p0, p1, v2, p2}, Lcom/sonyericsson/paneview/PaneView;->drawItemUsingRenderer(Landroid/graphics/Canvas;Lcom/sonyericsson/paneview/PaneView$Item;F)Z

    move-result v3

    .line 1780
    .local v3, newFrame:Z
    if-nez v3, :cond_2

    iget-boolean v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    if-nez v5, :cond_2

    .line 1782
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v6, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v5, v6}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 1783
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1784
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    invoke-direct {p0, v5, p2, v4}, Lcom/sonyericsson/paneview/PaneView;->isLocationVisible(Lcom/sonyericsson/paneview/PaneLocation;FLandroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1787
    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 1790
    :cond_1
    iget-boolean v5, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    if-eqz v5, :cond_2

    .line 1793
    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->setStandardRenderer(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 1799
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->invalidate()V

    goto :goto_0

    .line 1801
    .end local v3           #newFrame:Z
    :cond_3
    const/4 v0, 0x0

    .line 1803
    .local v0, cache:Landroid/graphics/Bitmap;
    iget-boolean v5, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlit:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/sonyericsson/paneview/PaneView;->mItemBackgroundDrawn:Z

    if-nez v5, :cond_4

    .line 1804
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1807
    :cond_4
    if-eqz v0, :cond_5

    .line 1808
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, p1, v5, v0}, Lcom/sonyericsson/paneview/PaneView;->srcBlitChild(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 1812
    :goto_1
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/sonyericsson/paneview/PaneView;->unionInvalidRectWithView(Landroid/view/View;)V

    goto :goto_0

    .line 1810
    :cond_5
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/sonyericsson/paneview/PaneView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 1816
    .end local v0           #cache:Landroid/graphics/Bitmap;
    .end local v2           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_6
    invoke-static {v4}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1817
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "canvas"
    .parameter "rect"

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1718
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1719
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1721
    :cond_0
    return-void
.end method

.method private drawUsingTransformer(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 1673
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v5}, Lcom/sonyericsson/paneview/Transformer;->update()V

    .line 1675
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1676
    .local v3, rect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1677
    .local v4, viewRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1680
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

    .line 1681
    .local v2, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$400(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/paneview/PaneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1682
    .local v0, adapterItem:Ljava/lang/Object;
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v5, v0, v3}, Lcom/sonyericsson/paneview/Transformer;->getDrawRect(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1683
    invoke-static {v4, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1684
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-nez v5, :cond_1

    .line 1685
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v5, v5

    invoke-direct {p0, v2, v5}, Lcom/sonyericsson/paneview/PaneView;->layoutItem(Lcom/sonyericsson/paneview/PaneView$AdapterItem;F)V

    .line 1688
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v5, v0}, Lcom/sonyericsson/paneview/Transformer;->isSelected(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$400(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1689
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/paneview/PaneView;->drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1692
    :cond_2
    iget-object v5, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1693
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    iget-object v6, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-interface {v5, v0, v6}, Lcom/sonyericsson/paneview/Transformer;->addItemToDraw(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_0

    .line 1698
    .end local v0           #adapterItem:Ljava/lang/Object;
    .end local v2           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_3
    invoke-static {v4}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1699
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1703
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v5, p1}, Lcom/sonyericsson/paneview/Transformer;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1706
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->invalidate()V

    .line 1708
    :cond_4
    return-void
.end method

.method private ensureItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;)V
    .locals 8
    .parameter "item"
    .parameter "rect"

    .prologue
    .line 1918
    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$400(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v0

    .line 1920
    .local v0, adapterPosition:I
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-interface {v3}, Lcom/sonyericsson/paneview/PaneAdapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$1000(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-interface {v5, v0}, Lcom/sonyericsson/paneview/PaneAdapter;->getItemId(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 1922
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "ID has changed!A posible cause of this is that the client has changed the data without notifiying us (via the observer on the adapter).If the IDs are not stable, hasStableIds() should return false."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1928
    :cond_0
    iget-object v3, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-boolean v3, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->viewValid:Z

    if-nez v3, :cond_5

    .line 1931
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    iget-object v4, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-interface {v3, v0, v4, p0}, Lcom/sonyericsson/paneview/PaneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1933
    .local v1, view:Landroid/view/View;
    iget-object v3, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eq v1, v3, :cond_1

    .line 1937
    const-string v3, "PaneView"

    const-string v4, "convertView does not seem to be handled efficiently by the adaptor"

    invoke-static {v3, v4}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 1942
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/paneview/PaneView;->addItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/view/View;)V

    .line 1945
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->viewValid:Z

    .line 1954
    .end local v1           #view:Landroid/view/View;
    :cond_2
    :goto_0
    iget-object v3, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    if-eqz v3, :cond_3

    .line 1955
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->setStandardRenderer(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 1958
    :cond_3
    iget-object v3, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 1960
    iget-object v3, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1962
    :cond_4
    return-void

    .line 1947
    :cond_5
    iget-object v3, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-nez v3, :cond_2

    .line 1949
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-interface {v3, v0}, Lcom/sonyericsson/paneview/PaneAdapter;->getItemViewType(I)I

    move-result v2

    .line 1950
    .local v2, viewType:I
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-direct {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->removeViewFromCache(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v0, v4, p0}, Lcom/sonyericsson/paneview/PaneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1951
    .restart local v1       #view:Landroid/view/View;
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/paneview/PaneView;->addItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/view/View;)V

    goto :goto_0
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
    .line 1442
    .local p1, newItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    .local p2, oldItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    move-object v5, v0

    invoke-interface {v5}, Lcom/sonyericsson/paneview/PaneAdapter;->hasStableIds()Z

    move-result v18

    .line 1443
    .local v18, stableIDs:Z
    if-nez v18, :cond_0

    .line 1446
    const/16 p3, 0x0

    .line 1451
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->clear()V

    .line 1454
    :cond_0
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 1455
    .local v6, itemDrawRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/paneview/PaneLocation;->obtain()Lcom/sonyericsson/paneview/PaneLocation;

    move-result-object v16

    .line 1456
    .local v16, newLocation:Lcom/sonyericsson/paneview/PaneLocation;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v19

    .line 1457
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

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v17

    .line 1460
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

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    move-object v5, v0

    move-object v0, v5

    move v1, v11

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneAdapter;->getLocation(ILcom/sonyericsson/paneview/PaneLocation;)V

    .line 1465
    const/4 v14, 0x0

    .line 1467
    .local v14, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    if-eqz v18, :cond_5

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    move-object v5, v0

    invoke-interface {v5, v11}, Lcom/sonyericsson/paneview/PaneAdapter;->getItemId(I)J

    move-result-wide v12

    .line 1471
    .local v12, id:J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    check-cast v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1477
    .restart local v14       #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :goto_1
    if-eqz v14, :cond_6

    .line 1486
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

    .line 1492
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    move-object v5, v0

    invoke-interface {v5, v11}, Lcom/sonyericsson/paneview/RendererFactory;->getMoveRenderer(I)Lcom/sonyericsson/animation/Renderer;

    move-result-object v5

    iput-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1493
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v5, :cond_2

    .line 1494
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1495
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

    .line 1497
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-interface/range {v5 .. v10}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 1502
    :cond_2
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneLocation;->set(Lcom/sonyericsson/paneview/PaneLocation;)V

    .line 1503
    invoke-static {v14, v11}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$402(Lcom/sonyericsson/paneview/PaneView$AdapterItem;I)I

    .line 1505
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 1508
    const/4 v5, 0x0

    iput-boolean v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->viewValid:Z

    .line 1534
    :cond_3
    :goto_2
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v7

    if-le v5, v7, :cond_4

    .line 1535
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

    .line 1536
    .local v15, maxScroll:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    move v5, v0

    cmpl-float v5, v15, v5

    if-lez v5, :cond_4

    .line 1537
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    .line 1542
    .end local v15           #maxScroll:F
    :cond_4
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1474
    .end local v12           #id:J
    :cond_5
    int-to-long v12, v11

    .restart local v12       #id:J
    goto/16 :goto_1

    .line 1516
    :cond_6
    new-instance v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .end local v14           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    const/4 v5, 0x0

    invoke-direct {v14, v5}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;-><init>(Lcom/sonyericsson/paneview/PaneView$1;)V

    .line 1517
    .restart local v14       #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    invoke-static {}, Lcom/sonyericsson/paneview/PaneLocation;->obtain()Lcom/sonyericsson/paneview/PaneLocation;

    move-result-object v5

    iput-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    .line 1518
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneLocation;->set(Lcom/sonyericsson/paneview/PaneLocation;)V

    .line 1519
    invoke-static {v14, v11}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$402(Lcom/sonyericsson/paneview/PaneView$AdapterItem;I)I

    .line 1520
    invoke-static {v14, v12, v13}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$1002(Lcom/sonyericsson/paneview/PaneView$AdapterItem;J)J

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    move-object v5, v0

    if-eqz v5, :cond_3

    if-eqz p3, :cond_3

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    move-object v5, v0

    invoke-interface {v5, v11}, Lcom/sonyericsson/paneview/RendererFactory;->getAddRenderer(I)Lcom/sonyericsson/animation/Renderer;

    move-result-object v5

    iput-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1525
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v5, :cond_3

    .line 1526
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1527
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

    .line 1529
    iget-object v5, v14, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-interface/range {v5 .. v10}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    goto/16 :goto_2

    .line 1545
    .end local v12           #id:J
    .end local v14           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->updateMaxScroll(Ljava/util/Collection;)V

    .line 1547
    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1548
    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/paneview/PaneLocation;->recycle()V

    .line 1549
    invoke-static {v6}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1550
    return-void
.end method

.method private getContainingItem(II)Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1228
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1232
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

    .line 1233
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1234
    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1235
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1236
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    move-object v3, v1

    .line 1243
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :goto_0
    return-object v3

    .line 1242
    :cond_1
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1243
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getPaneXOffset(FF)I
    .locals 1
    .parameter "position"
    .parameter "pane"

    .prologue
    .line 2063
    sub-float v0, p2, p1

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v0

    return v0
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

    .line 1577
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1580
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

    .line 1582
    .local v7, deletedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    if-ne v7, v0, :cond_1

    .line 1583
    iput-object v10, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1587
    :cond_1
    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1588
    const/4 v6, 0x0

    .line 1592
    .local v6, deleteRenderer:Lcom/sonyericsson/animation/Renderer;
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 1593
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    invoke-interface {v0}, Lcom/sonyericsson/paneview/RendererFactory;->getDeleteRenderer()Lcom/sonyericsson/animation/Renderer;

    move-result-object v6

    .line 1595
    :cond_2
    if-eqz v6, :cond_3

    .line 1598
    new-instance v9, Lcom/sonyericsson/paneview/PaneView$Item;

    invoke-direct {v9, v10}, Lcom/sonyericsson/paneview/PaneView$Item;-><init>(Lcom/sonyericsson/paneview/PaneView$1;)V

    .line 1599
    .local v9, item:Lcom/sonyericsson/paneview/PaneView$Item;
    invoke-static {}, Lcom/sonyericsson/paneview/PaneLocation;->obtain()Lcom/sonyericsson/paneview/PaneLocation;

    move-result-object v0

    iput-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    .line 1600
    iget-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v3, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/paneview/PaneLocation;->set(Lcom/sonyericsson/paneview/PaneLocation;)V

    .line 1601
    iget-object v0, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iput-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->view:Landroid/view/View;

    .line 1602
    iput-object v6, v9, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1603
    iget-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1604
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

    .line 1606
    iget-object v0, v9, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 1607
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDeletedItems:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1610
    .end local v9           #item:Lcom/sonyericsson/paneview/PaneView$Item;
    :cond_3
    iget-object v0, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->removeViewInLayout(Landroid/view/View;)V

    .line 1614
    iput-object v10, v7, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    goto :goto_0

    .line 1620
    .end local v6           #deleteRenderer:Lcom/sonyericsson/animation/Renderer;
    .end local v7           #deletedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->clearItems(Ljava/util/HashMap;)V

    .line 1622
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1623
    return-void
.end method

.method private interactionEnd()V
    .locals 1

    .prologue
    .line 1292
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    if-eqz v0, :cond_0

    .line 1293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    .line 1294
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    invoke-interface {v0}, Lcom/sonyericsson/paneview/PaneView$InteractionListener;->onInteractionEnd()V

    .line 1296
    :cond_0
    return-void
.end method

.method private interactionStart()V
    .locals 1

    .prologue
    .line 1285
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    if-eqz v0, :cond_0

    .line 1286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    .line 1287
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    invoke-interface {v0}, Lcom/sonyericsson/paneview/PaneView$InteractionListener;->onInteractionStart()V

    .line 1289
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

    .line 1635
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

    .line 1638
    :cond_0
    const/4 v2, 0x0

    .line 1649
    :goto_0
    return v2

    .line 1640
    :cond_1
    const/4 v1, 0x0

    .line 1641
    .local v1, visible:Z
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1642
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v2, p1, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1643
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

    .line 1645
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1646
    const/4 v1, 0x1

    .line 1648
    :cond_2
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    move v2, v1

    .line 1649
    goto :goto_0
.end method

.method private layoutItem(Lcom/sonyericsson/paneview/PaneView$AdapterItem;F)V
    .locals 4
    .parameter "item"
    .parameter "placement"

    .prologue
    .line 1901
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1902
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v1, v1, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1903
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

    .line 1905
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/paneview/PaneView;->ensureItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;)V

    .line 1906
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->unionInvalidRectWithView(Landroid/view/View;)V

    .line 1907
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1908
    return-void
.end method

.method private onDataChanged(Z)V
    .locals 6
    .parameter "enableAnimations"

    .prologue
    const/4 v5, 0x1

    .line 1369
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1370
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .line 1371
    .local v0, newItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 1378
    .local v1, oldItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->clearItems(Ljava/util/HashMap;)V

    .line 1380
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    if-eqz v2, :cond_4

    .line 1382
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-interface {v2}, Lcom/sonyericsson/paneview/PaneAdapter;->getNumberOfPanes()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    .line 1386
    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/paneview/PaneView;->getAdapterItems(Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    .line 1393
    :goto_1
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1394
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/paneview/PaneView;->handleDeletedItems(Ljava/util/HashMap;Z)V

    .line 1398
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    .line 1401
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 1402
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1403
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    new-instance v3, Lcom/sonyericsson/paneview/PaneView$5;

    invoke-direct {v3, p0}, Lcom/sonyericsson/paneview/PaneView$5;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1411
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    if-eqz v2, :cond_1

    .line 1412
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v3

    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/paneview/PaneView$ScrollListener;->onScroll(FI)V

    .line 1416
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1417
    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    sub-int/2addr v2, v5

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)V

    .line 1421
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->requestLayout()V

    .line 1422
    return-void

    .line 1373
    .end local v0           #newItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    .end local v1           #oldItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 1374
    .restart local v0       #newItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .restart local v1       #oldItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    goto :goto_0

    .line 1388
    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    goto :goto_1
.end method

.method private pixelsToPosition(F)F
    .locals 2
    .parameter "pixels"

    .prologue
    .line 2089
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-nez v0, :cond_0

    .line 2090
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mWidthWithMargin:I

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 2094
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
    .line 2073
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-nez v0, :cond_0

    .line 2074
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mWidthWithMargin:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 2078
    :goto_0
    return v0

    :cond_0
    neg-float v0, p1

    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mWidthWithMargin:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 2011
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    if-eqz v1, :cond_0

    .line 2012
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$400(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v2

    iget-object v3, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/paneview/PaneView$ItemViewListener;->onViewRemoved(ILandroid/view/View;)V

    .line 2015
    :cond_0
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeViewInLayout(Landroid/view/View;)V

    .line 2016
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$400(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/paneview/PaneAdapter;->getItemViewType(I)I

    move-result v0

    .line 2017
    .local v0, viewType:I
    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/paneview/PaneView;->addViewToCache(Landroid/view/View;I)V

    .line 2018
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 2019
    return-void
.end method

.method private removeViewFromCache(I)Landroid/view/View;
    .locals 4
    .parameter "viewType"

    .prologue
    const/4 v3, 0x0

    .line 2045
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 2046
    .local v0, viewTypeCache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    move-object v1, v3

    .line 2052
    .end local p0
    :goto_0
    return-object v1

    .line 2049
    .restart local p0
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    .line 2050
    goto :goto_0

    .line 2052
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v1, p0

    goto :goto_0
.end method

.method private setStandardRenderer(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 1059
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    invoke-static {p1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$400(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sonyericsson/paneview/RendererFactory;->getStandardRenderer(I)Lcom/sonyericsson/animation/Renderer;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1060
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v0, :cond_0

    .line 1061
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1062
    .local v1, itemDrawRect:Landroid/graphics/Rect;
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    .line 1063
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1064
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

    .line 1066
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 1067
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1069
    .end local v1           #itemDrawRect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private srcBlitChild(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 11
    .parameter "canvas"
    .parameter "child"
    .parameter "cache"

    .prologue
    .line 1828
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 1829
    .local v7, cl:I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1830
    .local v9, ct:I
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v8

    .line 1831
    .local v8, cr:I
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1833
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

    .line 1845
    :goto_0
    return-void

    .line 1837
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1839
    .local v10, restoreTo:I
    int-to-float v0, v7

    int-to-float v1, v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1840
    const/4 v0, 0x0

    const/4 v1, 0x0

    sub-int v2, v8, v7

    sub-int v3, v6, v9

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1842
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1844
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method private startDynamicsRunnable()V
    .locals 1

    .prologue
    .line 1274
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable(Z)V

    .line 1275
    return-void
.end method

.method private startDynamicsRunnable(Z)V
    .locals 1
    .parameter "startInteraction"

    .prologue
    .line 1278
    if-eqz p1, :cond_0

    .line 1279
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->interactionStart()V

    .line 1281
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->post(Ljava/lang/Runnable;)Z

    .line 1282
    return-void
.end method

.method private unionInvalidRectWithView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 2099
    if-eqz p1, :cond_0

    .line 2101
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

    .line 2103
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
    .line 1553
    .local p1, adapterItems:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/paneview/PaneView$AdapterItem;>;"
    iget-boolean v4, p0, Lcom/sonyericsson/paneview/PaneView;->mKeepMaxScroll:Z

    if-eqz v4, :cond_1

    .line 1566
    :cond_0
    return-void

    .line 1556
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v1

    .line 1557
    .local v1, height:I
    const/4 v4, 0x0

    iput v4, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    .line 1558
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

    .line 1559
    .local v0, adapterItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v4, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v4, v1, :cond_2

    .line 1560
    iget-object v4, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/paneview/PaneView;->pixelsToPosition(F)F

    move-result v3

    .line 1561
    .local v3, maxScroll:F
    iget v4, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 1562
    iput v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    goto :goto_0
.end method

.method private updatePanePosition()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1303
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v5}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    .line 1304
    .local v2, position:F
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v5}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/paneview/PaneView;->positionToPixels(F)I

    move-result v4

    .line 1305
    .local v4, scroll:I
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1307
    .local v3, rect:Landroid/graphics/Rect;
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

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 1308
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1309
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v5, v5, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    int-to-float v5, v5

    invoke-direct {p0, v2, v5}, Lcom/sonyericsson/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v5

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    neg-int v6, v4

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1311
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v6

    invoke-virtual {v3, v8, v8, v5, v6}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1313
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 1317
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1318
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget-object v7, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1325
    :goto_1
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/sonyericsson/paneview/PaneView;->unionInvalidRectWithView(Landroid/view/View;)V

    goto :goto_0

    .line 1323
    :cond_1
    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/paneview/PaneView;->ensureItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1326
    :cond_2
    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v5, :cond_0

    iget-boolean v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    if-eqz v5, :cond_0

    .line 1331
    :cond_3
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    .line 1332
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v5, :cond_0

    .line 1333
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v6, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v5, v6}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 1334
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    .line 1335
    iput-boolean v8, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    goto/16 :goto_0

    .line 1340
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_4
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_5

    .line 1341
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1344
    :cond_5
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1348
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    if-eqz v5, :cond_6

    .line 1349
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    iget v6, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    invoke-interface {v5, v2, v6}, Lcom/sonyericsson/paneview/PaneView$ScrollListener;->onScroll(FI)V

    .line 1353
    :cond_6
    iget-object v5, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/sonyericsson/paneview/PaneView;->invalidate(Landroid/graphics/Rect;)V

    .line 1354
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

    .line 1198
    move v0, p3

    .line 1199
    .local v0, tmpSnapPosition:F
    iget-boolean v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    if-nez v1, :cond_2

    .line 1200
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

    .line 1201
    add-float/2addr v0, v3

    .line 1215
    :cond_0
    :goto_0
    return v0

    .line 1202
    :cond_1
    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    cmpg-float v1, p2, p3

    if-gez v1, :cond_0

    cmpl-float v1, p3, v4

    if-lez v1, :cond_0

    .line 1203
    sub-float/2addr v0, v3

    goto :goto_0

    .line 1208
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

    .line 1209
    sub-float/2addr v0, v3

    goto :goto_0

    .line 1210
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

    .line 1212
    add-float/2addr v0, v3

    goto :goto_0
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 835
    invoke-super {p0}, Landroid/widget/AdapterView;->cancelLongPress()V

    .line 836
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/GestureDetector;->cancelLongPress()V

    .line 837
    return-void
.end method

.method public clearAllRenderers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 580
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

    .line 581
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$Item;
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    if-eqz v2, :cond_0

    .line 582
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v2, v3}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 583
    iput-object v4, v1, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    goto :goto_0

    .line 587
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

    .line 588
    .restart local v1       #item:Lcom/sonyericsson/paneview/PaneView$Item;
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    if-eqz v2, :cond_2

    .line 589
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v2, v3}, Lcom/sonyericsson/paneview/RendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 590
    iput-object v4, v1, Lcom/sonyericsson/paneview/PaneView$Item;->renderer:Lcom/sonyericsson/animation/Renderer;

    goto :goto_1

    .line 593
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$Item;
    :cond_3
    return-void
.end method

.method public clearViews()V
    .locals 3

    .prologue
    .line 599
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

    .line 600
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 601
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    goto :goto_0

    .line 604
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_1
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 966
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 967
    const/4 v3, 0x0

    .line 973
    :goto_0
    return v3

    .line 970
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    .line 971
    .local v2, scrollPosition:F
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    invoke-static {v2, v4, v3}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v0

    .line 972
    .local v0, clampedScrollPosition:F
    sub-float v3, v0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 973
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

    .line 979
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 980
    const/4 v3, 0x0

    .line 990
    :goto_0
    return v3

    .line 983
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    .line 984
    .local v2, scrollPosition:F
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    invoke-static {v2, v4, v3}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v0

    .line 985
    .local v0, clampedScrollPosition:F
    sub-float v3, v0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 987
    .local v1, outside:F
    iget v3, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 988
    add-float v3, v0, v1

    mul-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_0

    .line 990
    :cond_1
    mul-float v3, v5, v0

    float-to-int v3, v3

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 997
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 998
    const/4 v0, 0x0

    .line 1001
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

    .line 1019
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1021
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->drawBackplate(Landroid/graphics/Canvas;)V

    .line 1022
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    if-eqz v2, :cond_0

    .line 1023
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->drawUsingTransformer(Landroid/graphics/Canvas;)V

    .line 1056
    :goto_0
    return-void

    .line 1025
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$400(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1029
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1030
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    iget-object v2, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v2, v2, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1031
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

    .line 1035
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/paneview/PaneView;->drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1036
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mItemBackgroundDrawn:Z

    .line 1042
    .end local v1           #rect:Landroid/graphics/Rect;
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 1044
    .local v0, position:F
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/paneview/PaneView;->drawDeletedItems(Landroid/graphics/Canvas;F)V

    .line 1045
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/paneview/PaneView;->drawItems(Landroid/graphics/Canvas;F)V

    goto :goto_0

    .line 1039
    .end local v0           #position:F
    :cond_1
    iput-boolean v5, p0, Lcom/sonyericsson/paneview/PaneView;->mItemBackgroundDrawn:Z

    goto :goto_1
.end method

.method public enableQuickLongPress(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/paneview/GestureDetector;->enableQuickLongPress(Z)V

    .line 660
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getAdapter()Lcom/sonyericsson/paneview/PaneAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/sonyericsson/paneview/PaneAdapter;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1013
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getCurrentPane()I
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v0}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getNumberOfPanes()I
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    return v0
.end method

.method public getPaneAbsoluteOffset(I)I
    .locals 2
    .parameter "pane"

    .prologue
    .line 755
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
    .line 745
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
    .line 735
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
    .line 427
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1007
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getVelocityThreshold()I
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    return v0
.end method

.method public isDoMirror()Z
    .locals 1

    .prologue
    .line 895
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    return v0
.end method

.method public isInteracting()Z
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mIsInteracting:Z

    return v0
.end method

.method public keepMaxScroll(Z)V
    .locals 1
    .parameter "keepMaxScroll"

    .prologue
    .line 703
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mKeepMaxScroll:Z

    .line 704
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mKeepMaxScroll:Z

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->updateMaxScroll(Ljava/util/Collection;)V

    .line 706
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 707
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable()V

    .line 709
    :cond_0
    return-void
.end method

.method public moveToNextPane()V
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)V

    .line 776
    return-void
.end method

.method public moveToPane(I)V
    .locals 2
    .parameter "pane"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Dynamics;->setMaxPosition(F)V

    .line 765
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Dynamics;->setMinPosition(F)V

    .line 768
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable()V

    .line 769
    return-void
.end method

.method public moveToPreviousPane()V
    .locals 2

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)V

    .line 783
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTouchIsLocked:Z

    if-nez v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/paneview/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 865
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

    .line 938
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 940
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v4}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v2

    .line 942
    .local v2, position:F
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 943
    .local v3, viewRect:Landroid/graphics/Rect;
    sub-int v4, p4, p2

    sub-int v5, p5, p3

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 945
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

    .line 946
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v4, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    invoke-direct {p0, v4, v2, v3}, Lcom/sonyericsson/paneview/PaneView;->isLocationVisible(Lcom/sonyericsson/paneview/PaneLocation;FLandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 949
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->layoutItem(Lcom/sonyericsson/paneview/PaneView$AdapterItem;F)V

    goto :goto_0

    .line 950
    :cond_2
    iget-object v4, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 953
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeItemView(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    goto :goto_0

    .line 957
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/paneview/PaneView;->updateMaxScroll(Ljava/util/Collection;)V

    .line 959
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 960
    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/paneview/PaneView;->invalidate(Landroid/graphics/Rect;)V

    .line 961
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 925
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 926
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

    .line 927
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 930
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

    .line 934
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 914
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->onSizeChanged(IIII)V

    .line 915
    int-to-float v0, p1

    int-to-float v1, p1

    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mMarginF:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/paneview/PaneView;->mWidthWithMargin:I

    .line 917
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 919
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    .line 921
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 842
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

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/GestureDetector;->cancelTouch()V

    .line 845
    const/4 v0, 0x0

    .line 854
    :goto_0
    return v0

    .line 848
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView;->mTouchIsLocked:Z

    if-nez v0, :cond_2

    .line 850
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/paneview/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 854
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public restoreViews()V
    .locals 0

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 611
    return-void
.end method

.method public scroll(F)V
    .locals 6
    .parameter "deltaPosition"

    .prologue
    const/4 v5, 0x0

    .line 682
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 683
    .local v0, currentPosition:F
    add-float v1, v0, p1

    .line 685
    .local v1, newPosition:F
    cmpg-float v2, v1, v5

    if-gez v2, :cond_1

    .line 686
    const/4 v1, 0x0

    .line 691
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v5, v3, v4}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 692
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 693
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 694
    return-void

    .line 687
    :cond_1
    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 688
    iget v1, p0, Lcom/sonyericsson/paneview/PaneView;->mMaxScroll:F

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    check-cast p1, Lcom/sonyericsson/paneview/PaneAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/paneview/PaneView;->setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V

    return-void
.end method

.method public setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDataSetObserver:Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

    invoke-interface {v0, v1}, Lcom/sonyericsson/paneview/PaneAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 436
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    .line 438
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mDataSetObserver:Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;

    invoke-interface {v0, v1}, Lcom/sonyericsson/paneview/PaneAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 442
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->onDataChanged(Z)V

    .line 443
    return-void
.end method

.method public setBackplateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "backplateDrawable"

    .prologue
    .line 646
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    .line 648
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 654
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->createSrcBlitPaint()V

    .line 656
    :cond_1
    return-void
.end method

.method public setDoMirror(Z)V
    .locals 0
    .parameter "doMirror"

    .prologue
    .line 888
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mDoMirror:Z

    .line 889
    return-void
.end method

.method public setEnableStandardRenderers(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 562
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    .line 563
    iget-boolean v2, p0, Lcom/sonyericsson/paneview/PaneView;->mStandardRenderersEnabled:Z

    if-eqz v2, :cond_1

    .line 564
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

    .line 565
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->renderer:Lcom/sonyericsson/animation/Renderer;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 566
    invoke-direct {p0, v1}, Lcom/sonyericsson/paneview/PaneView;->setStandardRenderer(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)V

    goto :goto_0

    .line 570
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

    .line 571
    .restart local v1       #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->rendererIsStandard:Z

    goto :goto_1

    .line 574
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_2
    return-void
.end method

.method public setInteractionListener(Lcom/sonyericsson/paneview/PaneView$InteractionListener;)V
    .locals 0
    .parameter "interactionListener"

    .prologue
    .line 515
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mInteractionListener:Lcom/sonyericsson/paneview/PaneView$InteractionListener;

    .line 516
    return-void
.end method

.method public setItemViewListener(Lcom/sonyericsson/paneview/PaneView$ItemViewListener;)V
    .locals 0
    .parameter "itemViewListener"

    .prologue
    .line 535
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mItemViewListener:Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    .line 536
    return-void
.end method

.method public setPaneDynamics(Lcom/sonyericsson/util/Dynamics;)V
    .locals 4
    .parameter "dynamics"

    .prologue
    .line 458
    if-nez p1, :cond_0

    .line 459
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "dynamics cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 463
    .local v0, currentPosition:F
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getVelocity()F

    move-result v1

    .line 465
    .local v1, currentVelocity:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 466
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    .line 468
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/GestureDetector;->setEnableHorizontalDrag(Z)V

    .line 469
    return-void
.end method

.method public setPaneMargin(F)V
    .locals 0
    .parameter "paneMargin"

    .prologue
    .line 619
    iput p1, p0, Lcom/sonyericsson/paneview/PaneView;->mMarginF:F

    .line 620
    return-void
.end method

.method public setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V
    .locals 0
    .parameter "paneViewTouchListener"

    .prologue
    .line 628
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneViewTouchListener:Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    .line 629
    return-void
.end method

.method public setPosition(F)V
    .locals 4
    .parameter "position"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 669
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/Dynamics;->setMaxPosition(F)V

    .line 670
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/Dynamics;->setMinPosition(F)V

    .line 671
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 672
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 673
    return-void
.end method

.method public setRejectPaddingTouch(Z)V
    .locals 0
    .parameter "rejectPaddingTouch"

    .prologue
    .line 505
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mRejectPaddingTouch:Z

    .line 506
    return-void
.end method

.method public setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V
    .locals 0
    .parameter "rendererFactory"

    .prologue
    .line 546
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mRendererFactory:Lcom/sonyericsson/paneview/RendererFactory;

    .line 547
    return-void
.end method

.method public setScrollDynamics(Lcom/sonyericsson/util/Dynamics;)V
    .locals 4
    .parameter "dynamics"

    .prologue
    .line 472
    if-nez p1, :cond_0

    .line 473
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "dynamics cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 476
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v0

    .line 477
    .local v0, currentPosition:F
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/Dynamics;->getVelocity()F

    move-result v1

    .line 479
    .local v1, currentVelocity:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 480
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    .line 482
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/GestureDetector;->setEnableVerticalDrag(Z)V

    .line 483
    return-void
.end method

.method public setScrollListener(Lcom/sonyericsson/paneview/PaneView$ScrollListener;)V
    .locals 3
    .parameter "scrollListener"

    .prologue
    .line 492
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    .line 494
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollListener:Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView;->mPaneDynamics:Lcom/sonyericsson/util/Dynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/Dynamics;->getPosition()F

    move-result v1

    iget v2, p0, Lcom/sonyericsson/paneview/PaneView;->mNumberOfPanes:I

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/paneview/PaneView$ScrollListener;->onScroll(FI)V

    .line 497
    :cond_0
    return-void
.end method

.method public setScrollPosition(F)V
    .locals 4
    .parameter "position"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/util/Dynamics;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonyericsson/util/Dynamics;->setState(FFJ)V

    .line 677
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 678
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 679
    return-void
.end method

.method public setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "selectedItemDrawable"

    .prologue
    .line 637
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

    .line 638
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 422
    return-void
.end method

.method public setSrcBlit(Z)V
    .locals 1
    .parameter "srcBlit"

    .prologue
    .line 877
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlit:Z

    .line 878
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 879
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->createSrcBlitPaint()V

    .line 881
    :cond_0
    return-void
.end method

.method public setTouchLocked(Z)V
    .locals 1
    .parameter "locked"

    .prologue
    .line 827
    iput-boolean p1, p0, Lcom/sonyericsson/paneview/PaneView;->mTouchIsLocked:Z

    .line 828
    if-eqz p1, :cond_0

    .line 829
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/GestureDetector;->cancelLongPress()V

    .line 831
    :cond_0
    return-void
.end method

.method public setVelocityThreshold(I)V
    .locals 0
    .parameter "velocityThreshold"

    .prologue
    .line 909
    iput p1, p0, Lcom/sonyericsson/paneview/PaneView;->mVelocityThreshold:I

    .line 910
    return-void
.end method

.method public transform(Lcom/sonyericsson/paneview/Transformer;)V
    .locals 6
    .parameter "transformer"

    .prologue
    .line 794
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    if-eqz v3, :cond_0

    .line 795
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v3}, Lcom/sonyericsson/paneview/Transformer;->cleanup()V

    .line 797
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    .line 798
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    if-eqz v3, :cond_2

    .line 799
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/sonyericsson/paneview/Transformer;->beginSetup(II)Z

    .line 800
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 801
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

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 802
    .local v1, item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget-object v3, v3, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 803
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

    .line 805
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 806
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView;->mAdapter:Lcom/sonyericsson/paneview/PaneAdapter;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$400(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sonyericsson/paneview/PaneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/sonyericsson/paneview/Transformer;->setupItem(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 808
    .end local v1           #item:Lcom/sonyericsson/paneview/PaneView$AdapterItem;
    :cond_1
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 810
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 812
    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView;->mTransformer:Lcom/sonyericsson/paneview/Transformer;

    invoke-interface {v3}, Lcom/sonyericsson/paneview/Transformer;->finishSetup()V

    .line 818
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #rect:Landroid/graphics/Rect;
    :goto_1
    return-void

    .line 815
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->updatePanePosition()V

    .line 816
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView;->startDynamicsRunnable()V

    goto :goto_1
.end method
