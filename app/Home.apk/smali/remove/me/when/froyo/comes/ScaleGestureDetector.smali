.class public Lremove/me/when/froyo/comes/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lremove/me/when/froyo/comes/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field private static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field private static final PRESSURE_THRESHOLD:F = 0.67f


# instance fields
.field private mBottomSlopEdge:F

.field private final mContext:Landroid/content/Context;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field private final mEdgeSlop:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private final mListener:Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mRightSlopEdge:F

.field private mScaleFactor:F

.field private mSloppyGesture:Z

.field private mTimeDelta:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 170
    .local v0, config:Landroid/view/ViewConfiguration;
    iput-object p1, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mListener:Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;

    .line 172
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mEdgeSlop:F

    .line 173
    return-void
.end method

.method private static getRawX(Landroid/view/MotionEvent;I)F
    .locals 3
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 325
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float v0, v1, v2

    .line 326
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    return v1
.end method

.method private static getRawY(Landroid/view/MotionEvent;I)F
    .locals 3
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 333
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float v0, v1, v2

    .line 334
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    return v1
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 375
    iget-object v0, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 377
    iput-object v2, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 379
    :cond_0
    iget-object v0, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 381
    iput-object v2, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 383
    :cond_1
    iput-boolean v1, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mSloppyGesture:Z

    .line 384
    iput-boolean v1, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mGestureInProgress:Z

    .line 385
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .locals 20
    .parameter "curr"

    .prologue
    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    .line 341
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 343
    const/high16 v16, -0x4080

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mCurrLen:F

    .line 344
    const/high16 v16, -0x4080

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mPrevLen:F

    .line 345
    const/high16 v16, -0x4080

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mScaleFactor:F

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object v9, v0

    .line 349
    .local v9, prev:Landroid/view/MotionEvent;
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 350
    .local v12, px0:F
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 351
    .local v14, py0:F
    const/16 v16, 0x1

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 352
    .local v13, px1:F
    const/16 v16, 0x1

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    .line 353
    .local v15, py1:F
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 354
    .local v5, cx0:F
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 355
    .local v7, cy0:F
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 356
    .local v6, cx1:F
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 358
    .local v8, cy1:F
    sub-float v10, v13, v12

    .line 359
    .local v10, pvx:F
    sub-float v11, v15, v14

    .line 360
    .local v11, pvy:F
    sub-float v3, v6, v5

    .line 361
    .local v3, cvx:F
    sub-float v4, v8, v7

    .line 362
    .local v4, cvy:F
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 363
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 364
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 365
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 367
    const/high16 v16, 0x3f00

    mul-float v16, v16, v3

    add-float v16, v16, v5

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusX:F

    .line 368
    const/high16 v16, 0x3f00

    mul-float v16, v16, v4

    add-float v16, v16, v7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusY:F

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v18

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mTimeDelta:J

    .line 370
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v16

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v17

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mCurrPressure:F

    .line 371
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v16

    const/16 v17, 0x1

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v17

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mPrevPressure:F

    .line 372
    return-void
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 4

    .prologue
    .line 433
    iget v2, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 434
    iget v0, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 435
    .local v0, cvx:F
    iget v1, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 436
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mCurrLen:F

    .line 438
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_0
    iget v2, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mCurrLen:F

    return v2
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 4

    .prologue
    .line 448
    iget v2, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 449
    iget v0, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 450
    .local v0, pvx:F
    iget v1, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 451
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mPrevLen:F

    .line 453
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_0
    iget v2, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mPrevLen:F

    return v2
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 464
    iget v0, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mScaleFactor:F

    .line 467
    :cond_0
    iget v0, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTimeDelta()J
    .locals 2

    .prologue
    .line 477
    iget-wide v0, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 177
    .local v3, action:I
    const/4 v6, 0x1

    .line 179
    .local v6, handled:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v17, v0

    if-nez v17, :cond_f

    .line 180
    move v0, v3

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 318
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 185
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 186
    .local v8, metrics:Landroid/util/DisplayMetrics;
    move-object v0, v8

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mEdgeSlop:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mRightSlopEdge:F

    .line 187
    move-object v0, v8

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mEdgeSlop:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 190
    invoke-direct/range {p0 .. p0}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->reset()V

    .line 192
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 193
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mTimeDelta:J

    .line 195
    invoke-direct/range {p0 .. p1}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 201
    move-object/from16 v0, p0

    iget v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mEdgeSlop:F

    move v5, v0

    .line 202
    .local v5, edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mRightSlopEdge:F

    move v11, v0

    .line 203
    .local v11, rightSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mBottomSlopEdge:F

    move v4, v0

    .line 204
    .local v4, bottomSlop:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    .line 205
    .local v13, x0:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    .line 206
    .local v15, y0:F
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v14

    .line 207
    .local v14, x1:F
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 209
    .local v16, y1:F
    cmpg-float v17, v13, v5

    if-ltz v17, :cond_1

    cmpg-float v17, v15, v5

    if-ltz v17, :cond_1

    cmpl-float v17, v13, v11

    if-gtz v17, :cond_1

    cmpl-float v17, v15, v4

    if-lez v17, :cond_3

    :cond_1
    const/16 v17, 0x1

    move/from16 v9, v17

    .line 211
    .local v9, p0sloppy:Z
    :goto_1
    cmpg-float v17, v14, v5

    if-ltz v17, :cond_2

    cmpg-float v17, v16, v5

    if-ltz v17, :cond_2

    cmpl-float v17, v14, v11

    if-gtz v17, :cond_2

    cmpl-float v17, v16, v4

    if-lez v17, :cond_4

    :cond_2
    const/16 v17, 0x1

    move/from16 v10, v17

    .line 215
    .local v10, p1sloppy:Z
    :goto_2
    if-eqz v9, :cond_5

    if-eqz v10, :cond_5

    .line 216
    const/high16 v17, -0x4080

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusX:F

    .line 217
    const/high16 v17, -0x4080

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusY:F

    .line 218
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 209
    .end local v9           #p0sloppy:Z
    .end local v10           #p1sloppy:Z
    :cond_3
    const/16 v17, 0x0

    move/from16 v9, v17

    goto :goto_1

    .line 211
    .restart local v9       #p0sloppy:Z
    :cond_4
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_2

    .line 219
    .restart local v10       #p1sloppy:Z
    :cond_5
    if-eqz v9, :cond_6

    .line 220
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusX:F

    .line 221
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusY:F

    .line 222
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 223
    :cond_6
    if-eqz v10, :cond_7

    .line 224
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusX:F

    .line 225
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusY:F

    .line 226
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 228
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mListener:Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lremove/me/when/froyo/comes/ScaleGestureDetector;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .line 234
    .end local v4           #bottomSlop:F
    .end local v5           #edgeSlop:F
    .end local v8           #metrics:Landroid/util/DisplayMetrics;
    .end local v9           #p0sloppy:Z
    .end local v10           #p1sloppy:Z
    .end local v11           #rightSlop:F
    .end local v13           #x0:F
    .end local v14           #x1:F
    .end local v15           #y0:F
    .end local v16           #y1:F
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 236
    move-object/from16 v0, p0

    iget v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mEdgeSlop:F

    move v5, v0

    .line 237
    .restart local v5       #edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mRightSlopEdge:F

    move v11, v0

    .line 238
    .restart local v11       #rightSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mBottomSlopEdge:F

    move v4, v0

    .line 239
    .restart local v4       #bottomSlop:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    .line 240
    .restart local v13       #x0:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    .line 241
    .restart local v15       #y0:F
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v14

    .line 242
    .restart local v14       #x1:F
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 244
    .restart local v16       #y1:F
    cmpg-float v17, v13, v5

    if-ltz v17, :cond_8

    cmpg-float v17, v15, v5

    if-ltz v17, :cond_8

    cmpl-float v17, v13, v11

    if-gtz v17, :cond_8

    cmpl-float v17, v15, v4

    if-lez v17, :cond_a

    :cond_8
    const/16 v17, 0x1

    move/from16 v9, v17

    .line 246
    .restart local v9       #p0sloppy:Z
    :goto_3
    cmpg-float v17, v14, v5

    if-ltz v17, :cond_9

    cmpg-float v17, v16, v5

    if-ltz v17, :cond_9

    cmpl-float v17, v14, v11

    if-gtz v17, :cond_9

    cmpl-float v17, v16, v4

    if-lez v17, :cond_b

    :cond_9
    const/16 v17, 0x1

    move/from16 v10, v17

    .line 249
    .restart local v10       #p1sloppy:Z
    :goto_4
    if-eqz v9, :cond_c

    if-eqz v10, :cond_c

    .line 250
    const/high16 v17, -0x4080

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusX:F

    .line 251
    const/high16 v17, -0x4080

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 244
    .end local v9           #p0sloppy:Z
    .end local v10           #p1sloppy:Z
    :cond_a
    const/16 v17, 0x0

    move/from16 v9, v17

    goto :goto_3

    .line 246
    .restart local v9       #p0sloppy:Z
    :cond_b
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_4

    .line 252
    .restart local v10       #p1sloppy:Z
    :cond_c
    if-eqz v9, :cond_d

    .line 253
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusX:F

    .line 254
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 255
    :cond_d
    if-eqz v10, :cond_e

    .line 256
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusX:F

    .line 257
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 259
    :cond_e
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mSloppyGesture:Z

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mListener:Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lremove/me/when/froyo/comes/ScaleGestureDetector;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .line 269
    .end local v4           #bottomSlop:F
    .end local v5           #edgeSlop:F
    .end local v9           #p0sloppy:Z
    .end local v10           #p1sloppy:Z
    .end local v11           #rightSlop:F
    .end local v13           #x0:F
    .end local v14           #x1:F
    .end local v15           #y0:F
    .end local v16           #y1:F
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 275
    :cond_f
    move v0, v3

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_0

    .line 302
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mCurrPressure:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mPrevPressure:F

    move/from16 v18, v0

    div-float v17, v17, v18

    const v18, 0x3f2b851f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mListener:Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;->onScale(Lremove/me/when/froyo/comes/ScaleGestureDetector;)Z

    move-result v12

    .line 310
    .local v12, updatePrevious:Z
    if-eqz v12, :cond_0

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/MotionEvent;->recycle()V

    .line 312
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 278
    .end local v12           #updatePrevious:Z
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 281
    const v17, 0xff00

    and-int v17, v17, v3

    shr-int/lit8 v17, v17, 0x8

    if-nez v17, :cond_11

    const/16 v17, 0x1

    move/from16 v7, v17

    .line 283
    .local v7, id:I
    :goto_5
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusX:F

    .line 284
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mFocusY:F

    .line 286
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mListener:Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lremove/me/when/froyo/comes/ScaleGestureDetector;)V

    .line 290
    :cond_10
    invoke-direct/range {p0 .. p0}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 281
    .end local v7           #id:I
    :cond_11
    const/16 v17, 0x0

    move/from16 v7, v17

    goto :goto_5

    .line 294
    :pswitch_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v17, v0

    if-nez v17, :cond_12

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lremove/me/when/froyo/comes/ScaleGestureDetector;->mListener:Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lremove/me/when/froyo/comes/ScaleGestureDetector;)V

    .line 298
    :cond_12
    invoke-direct/range {p0 .. p0}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 275
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
