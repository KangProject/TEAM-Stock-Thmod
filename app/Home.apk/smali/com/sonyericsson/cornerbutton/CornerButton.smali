.class public abstract Lcom/sonyericsson/cornerbutton/CornerButton;
.super Landroid/view/View;
.source "CornerButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;,
        Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;
    }
.end annotation


# static fields
.field private static final COLLAPSED_ICON_OFFSET:I = 0x19

.field protected static final COLLAPSED_RADIUS:I = 0x3c

.field private static final DEFAULT_MAX_ICON_SIZE:I = 0x30

.field private static final EXPANDED_RADIUS:[I = null

.field private static final HIGHLIGHT_WIDTH_CONSTANT:I = 0xa

.field private static final HIGHLIGHT_WIDTH_NOMINATOR:I = 0x41

.field private static final ICON_OFFSET:I = 0x28

.field public static final MAX_CORNERBUTTON_ACTIONS:I = 0x4

.field protected static final OFFSET:I = 0xa

.field private static final UPDATE_DELAY_TIME:I = 0xf


# instance fields
.field private final mActionAnglesRunnable:Ljava/lang/Runnable;

.field protected final mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

.field private final mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

.field protected mCenterX:I

.field protected mCenterY:I

.field private mClicked:Z

.field private mClientActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/cornerbutton/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mExpanded:Z

.field private mHidden:Z

.field private final mHighlight:Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

.field private final mHighlightAngleRunnable:Ljava/lang/Runnable;

.field private final mInvalidRect:Landroid/graphics/Rect;

.field private mLargeNullRadiusSquared:F

.field private mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

.field private mLongPressListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;

.field private final mLongPressRunnable:Ljava/lang/Runnable;

.field private final mOldInvalidRect:Landroid/graphics/Rect;

.field private mOverAction:Lcom/sonyericsson/cornerbutton/Action;

.field private final mRadiusRunnable:Ljava/lang/Runnable;

.field private mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

.field private final mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

.field private final mShowHideRunnable:Ljava/lang/Runnable;

.field private mSmallNullRadiusSquared:F

.field private final mTempRectF:Landroid/graphics/RectF;

.field private mTouchAngle:F

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mTouchSlop2:I

.field private mTouchX:I

.field private mTouchY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/cornerbutton/CornerButton;->EXPANDED_RADIUS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x3ct 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    .line 212
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClientActionList:Ljava/util/ArrayList;

    .line 179
    iput v6, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSmallNullRadiusSquared:F

    .line 182
    const v2, 0x7f7fffff

    iput v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLargeNullRadiusSquared:F

    .line 185
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    .line 188
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOldInvalidRect:Landroid/graphics/Rect;

    .line 191
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTempRectF:Landroid/graphics/RectF;

    .line 215
    new-instance v2, Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    const/16 v3, 0x3c

    invoke-direct {v2, v3}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;-><init>(I)V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    .line 216
    new-instance v2, Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    const/16 v3, 0x14

    const/16 v4, 0x19

    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->shouldReverseActions()Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;-><init>(IIZ)V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    .line 218
    new-instance v2, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    invoke-direct {v2}, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlight:Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    .line 220
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cornerbutton/CornerButton;->setFocusable(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->getDirection()F

    move-result v0

    .line 224
    .local v0, direction:F
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->setDirection(F)V

    .line 225
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setDirection(F)V

    .line 226
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    const/high16 v3, 0x4240

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->setMaxIconSize(I)V

    .line 229
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 230
    .local v1, touchSlop:I
    mul-int v2, v1, v1

    iput v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchSlop2:I

    .line 232
    new-instance v2, Lcom/sonyericsson/cornerbutton/CornerButton$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cornerbutton/CornerButton$1;-><init>(Lcom/sonyericsson/cornerbutton/CornerButton;)V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mRadiusRunnable:Ljava/lang/Runnable;

    .line 249
    new-instance v2, Lcom/sonyericsson/cornerbutton/CornerButton$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cornerbutton/CornerButton$2;-><init>(Lcom/sonyericsson/cornerbutton/CornerButton;)V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlightAngleRunnable:Ljava/lang/Runnable;

    .line 258
    new-instance v2, Lcom/sonyericsson/cornerbutton/CornerButton$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cornerbutton/CornerButton$3;-><init>(Lcom/sonyericsson/cornerbutton/CornerButton;)V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActionAnglesRunnable:Ljava/lang/Runnable;

    .line 267
    new-instance v2, Lcom/sonyericsson/cornerbutton/CornerButton$4;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cornerbutton/CornerButton$4;-><init>(Lcom/sonyericsson/cornerbutton/CornerButton;)V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 281
    new-instance v2, Lcom/sonyericsson/cornerbutton/CornerButton$5;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cornerbutton/CornerButton$5;-><init>(Lcom/sonyericsson/cornerbutton/CornerButton;)V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideRunnable:Ljava/lang/Runnable;

    .line 293
    new-instance v2, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v2}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    .line 294
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v3, 0x4348

    const v4, 0x3f19999a

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 295
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v3, 0x3f80

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 296
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/CornerButtonArc;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cornerbutton/CornerButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->isHighlightOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlight:Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cornerbutton/CornerButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->updateInvalidRect()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/cornerbutton/CornerButton;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/cornerbutton/CornerButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/cornerbutton/CornerButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/Action;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/util/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    return-object v0
.end method

.method private checkOverAction()V
    .locals 5

    .prologue
    .line 918
    const/4 v0, 0x0

    .line 919
    .local v0, overAction:Lcom/sonyericsson/cornerbutton/Action;
    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchX:I

    iget v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchX:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchY:I

    iget v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchY:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-float v1, v2

    .line 920
    .local v1, radiusSquared:F
    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSmallNullRadiusSquared:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLargeNullRadiusSquared:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 921
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    iget v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchAngle:F

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getClosestAction(F)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    .line 924
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOverAction:Lcom/sonyericsson/cornerbutton/Action;

    if-eq v0, v2, :cond_2

    .line 925
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOverAction:Lcom/sonyericsson/cornerbutton/Action;

    if-eqz v2, :cond_1

    .line 926
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 928
    :cond_1
    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOverAction:Lcom/sonyericsson/cornerbutton/Action;

    .line 929
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    invoke-interface {v2, v0}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;->onOverAction(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 931
    :cond_2
    return-void
.end method

.method private getRealDrawingRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 812
    invoke-super {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 813
    return-void
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchX:I

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchY:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHidden:Z

    if-nez v0, :cond_0

    .line 832
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->handleTouchStart()V

    .line 833
    invoke-direct {p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 834
    const/4 v0, 0x1

    .line 836
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleTouchEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 895
    iput-boolean v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    .line 896
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOverAction:Lcom/sonyericsson/cornerbutton/Action;

    .line 897
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setClicked(Z)V

    .line 898
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 899
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchX:I

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchY:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    invoke-interface {v0}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;->onDragOutside()V

    .line 866
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->isDrag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 870
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-eqz v0, :cond_2

    .line 871
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->checkOverAction()V

    .line 873
    :cond_2
    return-void
.end method

.method private handleTouchStart()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 845
    iput-boolean v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    .line 846
    iget v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchX:I

    iput v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchDownX:I

    .line 847
    iget v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchY:I

    iput v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchDownY:I

    .line 848
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-nez v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setClicked(Z)V

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 852
    return-void
.end method

.method private handleTouchUp(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    invoke-interface {v0}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;->onOutsideClick()V

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 885
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    invoke-interface {v0}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;->onCollapsedClick()V

    goto :goto_0

    .line 886
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOverAction:Lcom/sonyericsson/cornerbutton/Action;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;->onItemClick(Lcom/sonyericsson/cornerbutton/Action;)V

    goto :goto_0
.end method

.method private isDrag()Z
    .locals 4

    .prologue
    .line 908
    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchX:I

    iget v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchDownX:I

    sub-int v0, v2, v3

    .line 909
    .local v0, dx:I
    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchY:I

    iget v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchDownY:I

    sub-int v1, v2, v3

    .line 910
    .local v1, dy:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchSlop2:I

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isHighlightOn()Z
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static keyCodeToFocusDirection(I)I
    .locals 1
    .parameter "keyCode"

    .prologue
    const/16 v0, 0x82

    .line 1068
    packed-switch p0, :pswitch_data_0

    .line 1078
    :goto_0
    :pswitch_0
    return v0

    .line 1070
    :pswitch_1
    const/16 v0, 0x11

    goto :goto_0

    .line 1072
    :pswitch_2
    const/16 v0, 0x42

    goto :goto_0

    .line 1074
    :pswitch_3
    const/16 v0, 0x21

    goto :goto_0

    .line 1068
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onKey(IILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 1005
    const/4 v1, 0x0

    .line 1006
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 1008
    .local v2, keyAction:I
    if-eq v2, v5, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v3}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNumberOfActions()I

    move-result v3

    if-lez v3, :cond_0

    .line 1009
    const/4 v0, 0x0

    .line 1010
    .local v0, action:Lcom/sonyericsson/cornerbutton/Action;
    sparse-switch p1, :sswitch_data_0

    .line 1034
    .end local v0           #action:Lcom/sonyericsson/cornerbutton/Action;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    move v3, v5

    .line 1045
    :goto_1
    return v3

    .line 1015
    .restart local v0       #action:Lcom/sonyericsson/cornerbutton/Action;
    :sswitch_0
    iget-boolean v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-eqz v3, :cond_0

    .line 1016
    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    invoke-static {p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->keyCodeToFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/cornerbutton/CornerButton;->getNextFocus(Lcom/sonyericsson/cornerbutton/Action;I)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    .line 1017
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    if-eqz v3, :cond_1

    .line 1018
    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    invoke-interface {v3, v0}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;->onFocusedAction(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 1020
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1026
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 1027
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->onSelectKeyPressed()V

    .line 1029
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1037
    .end local v0           #action:Lcom/sonyericsson/cornerbutton/Action;
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 1045
    const/4 v3, 0x0

    goto :goto_1

    .line 1039
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1

    .line 1041
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1

    .line 1043
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1

    .line 1010
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch

    .line 1037
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onSelectKeyPressed()V
    .locals 2

    .prologue
    .line 1054
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    if-eqz v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    invoke-interface {v0}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;->onCollapsedClick()V

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;->onItemClick(Lcom/sonyericsson/cornerbutton/Action;)V

    goto :goto_0
.end method

.method private setExpandedRadius()V
    .locals 4

    .prologue
    .line 819
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNumberOfActions()I

    move-result v0

    .line 820
    .local v0, numberOfActions:I
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    sget-object v2, Lcom/sonyericsson/cornerbutton/CornerButton;->EXPANDED_RADIUS:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setExpandedRadius(I)V

    .line 821
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    sget-object v2, Lcom/sonyericsson/cornerbutton/CornerButton;->EXPANDED_RADIUS:[I

    aget v2, v2, v0

    const/16 v3, 0x28

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->setExpandedRadius(I)V

    .line 822
    return-void
.end method

.method private setHighlightAngle(F)V
    .locals 2
    .parameter "angle"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlight:Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->animateTo(F)V

    .line 949
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlight:Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->getRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->setRadius(F)V

    .line 950
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->updateInvalidRect()V

    .line 951
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlightAngleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 952
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlightAngleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->post(Ljava/lang/Runnable;)Z

    .line 953
    return-void
.end method

.method private updateInvalidRect()V
    .locals 14

    .prologue
    .line 960
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v9}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->getDrawRadius()F

    move-result v1

    .line 961
    .local v1, arcRadius:F
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v9}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getRadius()F

    move-result v9

    const/high16 v10, 0x4220

    add-float v0, v9, v10

    .line 962
    .local v0, actionRadius:F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 963
    .local v3, maxRadius:F
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->isHighlightOn()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 964
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlight:Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    invoke-virtual {v9}, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->getRadius()F

    move-result v2

    .line 965
    .local v2, highlightRadius:F
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 968
    .end local v2           #highlightRadius:F
    :cond_0
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v9}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v9

    mul-float/2addr v3, v9

    .line 969
    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_1

    .line 970
    const/4 v3, 0x0

    .line 974
    :cond_1
    const/high16 v9, 0x3f80

    add-float/2addr v9, v3

    float-to-int v8, v9

    .line 977
    .local v8, radius:I
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    invoke-direct {p0, v9}, Lcom/sonyericsson/cornerbutton/CornerButton;->getRealDrawingRect(Landroid/graphics/Rect;)V

    .line 980
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    iget v10, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    sub-int/2addr v10, v8

    iget v11, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    sub-int/2addr v11, v8

    iget v12, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    add-int/2addr v12, v8

    iget v13, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    add-int/2addr v13, v8

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 984
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOldInvalidRect:Landroid/graphics/Rect;

    iget v5, v9, Landroid/graphics/Rect;->left:I

    .line 985
    .local v5, oldLeft:I
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOldInvalidRect:Landroid/graphics/Rect;

    iget v7, v9, Landroid/graphics/Rect;->top:I

    .line 986
    .local v7, oldTop:I
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOldInvalidRect:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->right:I

    .line 987
    .local v6, oldRight:I
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOldInvalidRect:Landroid/graphics/Rect;

    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    .line 990
    .local v4, oldBottom:I
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mOldInvalidRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 993
    iget-object v9, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v5, v7, v6, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 994
    return-void
.end method


# virtual methods
.method public cancelTouch()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 618
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 619
    iput-boolean v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClicked:Z

    .line 620
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setClicked(Z)V

    .line 621
    return-void
.end method

.method public collapse()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->collapse()V

    .line 512
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->collapse()V

    .line 513
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mRadiusRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 514
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mRadiusRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->post(Ljava/lang/Runnable;)Z

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    .line 517
    return-void
.end method

.method public contains(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->contains(II)Z

    move-result v0

    return v0
.end method

.method public expand(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->setExpandedRadius()V

    .line 495
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->expand(Z)V

    .line 496
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->expand(Z)V

    .line 498
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mRadiusRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mRadiusRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->post(Ljava/lang/Runnable;)Z

    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    .line 502
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setClicked(Z)V

    .line 503
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 504
    return-void
.end method

.method public getAction(II)Lcom/sonyericsson/cornerbutton/Action;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 433
    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    sub-int v2, p2, v2

    neg-int v2, v2

    int-to-double v2, v2

    iget v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    sub-int v4, p1, v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L

    div-double/2addr v2, v4

    double-to-float v1, v2

    .line 434
    .local v1, angle:F
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getClosestAction(F)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    .line 435
    .local v0, action:Lcom/sonyericsson/cornerbutton/Action;
    return-object v0
.end method

.method public getActionPosition(Lcom/sonyericsson/cornerbutton/Action;)Landroid/graphics/Point;
    .locals 3
    .parameter "action"

    .prologue
    .line 445
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->contains(Lcom/sonyericsson/cornerbutton/Action;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getActionPosition(Lcom/sonyericsson/cornerbutton/Action;)Landroid/graphics/Point;

    move-result-object v0

    .line 447
    .local v0, point:Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 448
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    move-object v1, v0

    .line 451
    .end local v0           #point:Landroid/graphics/Point;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/cornerbutton/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClientActionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCenterPoint()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 562
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getCollapsedIconBounds()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 571
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getCollapsedIconBound()Landroid/graphics/Rect;

    move-result-object v0

    .line 572
    .local v0, rect:Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 573
    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 575
    :cond_0
    return-object v0
.end method

.method protected abstract getDirection()F
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "outRect"

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->getFocusRect(Landroid/graphics/Rect;)V

    .line 639
    return-void
.end method

.method protected getFocusRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "outRect"

    .prologue
    .line 792
    invoke-super {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 793
    return-void
.end method

.method public getMaxIconSize()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getMaxIconSize()I

    move-result v0

    return v0
.end method

.method protected getNextFocus(Lcom/sonyericsson/cornerbutton/Action;I)Lcom/sonyericsson/cornerbutton/Action;
    .locals 1
    .parameter "focusedAction"
    .parameter "direction"

    .prologue
    .line 803
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumberOfActions()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNumberOfActions()I

    move-result v0

    return v0
.end method

.method public getSelectedAction()Lcom/sonyericsson/cornerbutton/Action;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    return-object v0
.end method

.method public getTopmostAction()Lcom/sonyericsson/cornerbutton/Action;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getTopmostAction()Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    return-object v0
.end method

.method public hide(Z)V
    .locals 5
    .parameter "animate"

    .prologue
    const/4 v3, 0x0

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 542
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 543
    if-eqz p1, :cond_0

    .line 544
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 549
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->post(Ljava/lang/Runnable;)Z

    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->setFocusable(Z)V

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHidden:Z

    .line 554
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNumberOfActions()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mExpanded:Z

    return v0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNumberOfActions()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHidden:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mRadiusRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 708
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlightAngleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 709
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActionAnglesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 710
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 711
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 712
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/high16 v8, 0x437f

    .line 731
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v7

    .line 737
    .local v7, showHideScale:F
    mul-float v0, v7, v8

    const/4 v1, 0x0

    invoke-static {v0, v1, v8}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v0

    float-to-int v6, v0

    .line 738
    .local v6, alpha:I
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTempRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 742
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTempRectF:Landroid/graphics/RectF;

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v6, v1}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 743
    iget v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 744
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 746
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->draw(Landroid/graphics/Canvas;)V

    .line 747
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->isHighlightOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlight:Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->draw(Landroid/graphics/Canvas;)V

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->draw(Landroid/graphics/Canvas;)V

    .line 752
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setFocused(Z)V

    .line 717
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 718
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 693
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/cornerbutton/CornerButton;->onKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 698
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cornerbutton/CornerButton;->onKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 703
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/cornerbutton/CornerButton;->onKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 722
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 724
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->setCenterPos(IIF)V

    .line 725
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->updateInvalidRect()V

    .line 726
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 661
    const/4 v0, 0x1

    .line 663
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchX:I

    .line 664
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mCenterY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchY:I

    .line 665
    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchY:I

    neg-int v1, v1

    int-to-double v1, v1

    iget v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchX:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L

    div-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mTouchAngle:F

    .line 667
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 681
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->handleTouchEnd()V

    .line 684
    :goto_1
    if-eqz v0, :cond_0

    .line 685
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->updateInvalidRect()V

    .line 686
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->invalidate(Landroid/graphics/Rect;)V

    .line 688
    :cond_0
    return v0

    .line 669
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 670
    goto :goto_1

    .line 673
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->handleTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 677
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->handleTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setActions(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/cornerbutton/Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    const/4 v5, 0x1

    .line 353
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, i:I
    :goto_0
    const/4 v4, 0x4

    if-le v0, v4, :cond_0

    .line 354
    sub-int v4, v0, v5

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 353
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 357
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v4}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNumberOfActions()I

    move-result v2

    .line 358
    .local v2, previousNumberOfActions:I
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->setActions(Ljava/util/ArrayList;)V

    .line 359
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mClientActionList:Ljava/util/ArrayList;

    .line 361
    if-nez v2, :cond_1

    .line 362
    invoke-direct {p0}, Lcom/sonyericsson/cornerbutton/CornerButton;->setExpandedRadius()V

    .line 363
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mRadiusRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 364
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mRadiusRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/cornerbutton/CornerButton;->post(Ljava/lang/Runnable;)Z

    .line 367
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v4}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNumberOfActions()I

    move-result v1

    .line 368
    .local v1, numberOfActions:I
    if-lez v1, :cond_2

    .line 369
    const/16 v4, 0x41

    div-int/2addr v4, v1

    add-int/lit8 v3, v4, 0xa

    .line 371
    .local v3, width:I
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHighlight:Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    invoke-virtual {v4, v3}, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->setWidth(I)V

    .line 372
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    if-eqz v4, :cond_2

    .line 373
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    invoke-virtual {v4}, Lcom/sonyericsson/cornerbutton/Action;->getAngle()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/cornerbutton/CornerButton;->setHighlightAngle(F)V

    .line 376
    .end local v3           #width:I
    :cond_2
    iget-boolean v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHidden:Z

    if-nez v4, :cond_3

    .line 377
    invoke-virtual {p0, v5}, Lcom/sonyericsson/cornerbutton/CornerButton;->setFocusable(Z)V

    .line 380
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActionAnglesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 381
    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActionAnglesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/cornerbutton/CornerButton;->post(Ljava/lang/Runnable;)Z

    .line 382
    return-void
.end method

.method protected abstract setCenterPos(IIF)V
.end method

.method public setCollapsedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->setCollapsedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 342
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1
    .parameter "focusable"

    .prologue
    .line 643
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getNumberOfActions()I

    move-result v0

    if-lez v0, :cond_0

    .line 644
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 648
    :goto_0
    return-void

    .line 646
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method

.method public setGlow(Z)V
    .locals 1
    .parameter "glow"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mArc:Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setClicked(Z)V

    .line 630
    return-void
.end method

.method public setListener(Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;

    .line 305
    return-void
.end method

.method public setLongPressListener(Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLongPressListener:Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;

    .line 314
    return-void
.end method

.method public setMaxIconSize(I)V
    .locals 1
    .parameter "iconMaxSize"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->setMaxIconSize(I)V

    .line 323
    return-void
.end method

.method public setNullRadii(FF)V
    .locals 1
    .parameter "smallNullRadiusSquared"
    .parameter "largeNullRadiusSquared"

    .prologue
    .line 476
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 479
    :cond_0
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    .line 480
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 483
    :cond_1
    iput p1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSmallNullRadiusSquared:F

    .line 484
    iput p2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mLargeNullRadiusSquared:F

    .line 485
    return-void
.end method

.method public setSelectedAction(Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    .line 410
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->contains(Lcom/sonyericsson/cornerbutton/Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/Action;->getAngle()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->setHighlightAngle(F)V

    .line 414
    :cond_0
    return-void
.end method

.method protected shouldReverseActions()Z
    .locals 1

    .prologue
    .line 781
    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .locals 5

    .prologue
    const/high16 v1, 0x3f80

    .line 524
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 525
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 528
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 529
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mShowHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->post(Ljava/lang/Runnable;)Z

    .line 530
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->setFocusable(Z)V

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton;->mHidden:Z

    .line 533
    return-void
.end method
