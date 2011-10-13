.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x96000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0xfa0

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final OVERFLING_DISTANCE:I = 0x4

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x20

.field private static final PRESSED_STATE_DURATION:I = 0x7d

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0xa

.field private static SCROLL_FRICTION:F = 0.0f

.field private static final TAP_TIMEOUT:I = 0x73

.field private static final TOUCH_SLOP:I = 0x10

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field private static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDoubleTapSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mWindowTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 145
    const v0, 0x3c75c28f

    sput v0, Landroid/view/ViewConfiguration;->SCROLL_FRICTION:F

    .line 170
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v1, 0x10

    const/16 v0, 0xc

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 179
    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 180
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 181
    const/16 v0, 0xfa0

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 182
    const/16 v0, 0xa

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 183
    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 184
    const/16 v0, 0x20

    iput v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 185
    const/16 v0, 0x64

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 186
    iput v1, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 188
    const v0, 0x96000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 190
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 191
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/high16 v7, 0x4180

    const/high16 v5, 0x4140

    const/high16 v6, 0x3f00

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 205
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 207
    .local v0, density:F
    mul-float v4, v0, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 208
    mul-float v4, v0, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 209
    const/high16 v4, 0x4248

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 210
    const/high16 v4, 0x457a

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 211
    const/high16 v4, 0x4120

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 216
    iget v4, v2, Landroid/util/DisplayMetrics;->xdpi:F

    iget v5, v2, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float v3, v4, v5

    .line 217
    .local v3, physicalDpi:F
    iget v4, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v4

    .line 220
    .local v1, logicalDpi:F
    div-float v4, v3, v1

    mul-float v5, v0, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 222
    const/high16 v4, 0x4200

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 223
    const/high16 v4, 0x42c8

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 224
    mul-float v4, v0, v7

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 227
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x4

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 229
    const/4 v4, 0x0

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 230
    const/high16 v4, 0x4080

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 231
    return-void
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 5
    .parameter "context"

    .prologue
    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 242
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const/high16 v3, 0x42c8

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 244
    .local v1, density:I
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewConfiguration;

    .line 245
    .local v0, configuration:Landroid/view/ViewConfiguration;
    if-nez v0, :cond_0

    .line 246
    new-instance v0, Landroid/view/ViewConfiguration;

    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 247
    .restart local v0       #configuration:Landroid/view/ViewConfiguration;
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    :cond_0
    return-object v0
.end method

.method public static getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 399
    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .locals 1

    .prologue
    .line 343
    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 354
    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 293
    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .locals 2

    .prologue
    .line 520
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getJumpTapTimeout()I
    .locals 1

    .prologue
    .line 334
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 1

    .prologue
    .line 316
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 475
    const v0, 0x96000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    const/16 v0, 0xfa0

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 438
    const/16 v0, 0x32

    return v0
.end method

.method public static getPressedStateDuration()I
    .locals 1

    .prologue
    .line 308
    const/16 v0, 0x7d

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .locals 1

    .prologue
    .line 276
    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 261
    const/16 v0, 0xa

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .locals 1

    .prologue
    .line 283
    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .locals 1

    .prologue
    .line 530
    sget v0, Landroid/view/ViewConfiguration;->SCROLL_FRICTION:F

    return v0
.end method

.method public static getTapTimeout()I
    .locals 1

    .prologue
    .line 325
    const/16 v0, 0x73

    return v0
.end method

.method public static getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 372
    const/16 v0, 0x10

    return v0
.end method

.method public static getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 419
    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .locals 2

    .prologue
    .line 509
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getScaledDoubleTapSlop()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledTouchSlop()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method
