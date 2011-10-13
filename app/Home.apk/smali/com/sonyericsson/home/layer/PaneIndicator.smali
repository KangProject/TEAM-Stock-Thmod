.class public Lcom/sonyericsson/home/layer/PaneIndicator;
.super Landroid/view/View;
.source "PaneIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;
    }
.end annotation


# static fields
.field private static final DELTA:F = 18.0f

.field private static final HIDE_TIMEOUT:J = 0x3e8L

.field private static final MARGIN:F = 0.1f

.field private static final MAX_INDICATIONS:I = 0xb

.field private static final NO_PREVIOUS_VALUE:I = -0x1

.field private static final POSITON_TOLERANCE:F = 0.001f

.field private static final VELOCITY_TOLERANCE:F = 0.01f


# instance fields
.field private mDoMirror:Z

.field private mFadeInAnimation:Landroid/view/animation/Animation;

.field private mFadeOutAnimation:Landroid/view/animation/Animation;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private mInactiveTimeoutListener:Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;

.field private mIndicationBitmap:Landroid/graphics/Bitmap;

.field private mLeftArrow:Landroid/graphics/Bitmap;

.field private mMax:I

.field private mMaxDynamics:Lcom/sonyericsson/util/SpringDynamics;

.field private mMaxRunnable:Ljava/lang/Runnable;

.field private mMult:F

.field private mOffset:F

.field private mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

.field private mOffsetRunnable:Ljava/lang/Runnable;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPosition:F

.field private mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

.field private mPositionRunnable:Ljava/lang/Runnable;

.field private mRightArrow:Landroid/graphics/Bitmap;

.field private mSelectedIndicationBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v3, 0x42c8

    const v2, 0x3f666666

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    .line 68
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    .line 77
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMult:F

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxDynamics:Lcom/sonyericsson/util/SpringDynamics;

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 131
    new-instance v0, Lcom/sonyericsson/home/layer/PaneIndicator$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/PaneIndicator$1;-><init>(Lcom/sonyericsson/home/layer/PaneIndicator;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxRunnable:Ljava/lang/Runnable;

    .line 141
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v1, 0x4296

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 143
    new-instance v0, Lcom/sonyericsson/home/layer/PaneIndicator$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/PaneIndicator$2;-><init>(Lcom/sonyericsson/home/layer/PaneIndicator;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionRunnable:Ljava/lang/Runnable;

    .line 153
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 155
    new-instance v0, Lcom/sonyericsson/home/layer/PaneIndicator$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/PaneIndicator$3;-><init>(Lcom/sonyericsson/home/layer/PaneIndicator;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetRunnable:Ljava/lang/Runnable;

    .line 165
    const v0, 0x7f040008

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 166
    const v0, 0x7f040009

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mFadeOutAnimation:Landroid/view/animation/Animation;

    .line 168
    new-instance v0, Lcom/sonyericsson/home/layer/PaneIndicator$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/PaneIndicator$4;-><init>(Lcom/sonyericsson/home/layer/PaneIndicator;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mHideRunnable:Ljava/lang/Runnable;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/util/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxDynamics:Lcom/sonyericsson/util/SpringDynamics;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/util/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/util/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mInactiveTimeoutListener:Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;

    return-object v0
.end method


# virtual methods
.method public hide(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    const/4 v1, 0x4

    .line 210
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 211
    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->clearAnimation()V

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    .line 215
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->setVisibility(I)V

    .line 217
    :cond_1
    return-void
.end method

.method public isDoMirror()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mDoMirror:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .parameter "canvas"

    .prologue
    .line 300
    const/high16 v19, 0x4190

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMult:F

    move/from16 v20, v0

    mul-float v7, v19, v20

    .line 301
    .local v7, delta:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxDynamics:Lcom/sonyericsson/util/SpringDynamics;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v11

    .line 302
    .local v11, max:F
    const/high16 v19, 0x4130

    move v0, v11

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 303
    .local v17, totalWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMult:F

    move/from16 v19, v0

    const/high16 v20, 0x4190

    mul-float v19, v19, v20

    const/high16 v20, 0x3f80

    sub-float v20, v17, v20

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    mul-float v9, v19, v20

    .line 304
    .local v9, halfPixelWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v12

    .line 305
    .local v12, offset:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v15

    .line 306
    .local v15, postition:F
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 307
    .local v16, start:I
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v19

    add-int/lit8 v20, v16, 0xb

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 309
    .local v8, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f02003b

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/PaneIndicator;->mIndicationBitmap:Landroid/graphics/Bitmap;

    .line 314
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mSelectedIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f02003c

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/layer/PaneIndicator;->mSelectedIndicationBitmap:Landroid/graphics/Bitmap;

    .line 319
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    sub-float v19, v19, v9

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v13, v19, 0x2

    .line 323
    .local v13, offsetX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    div-int/lit8 v14, v19, 0x2

    .line 326
    .local v14, offsetY:I
    move/from16 v0, v16

    int-to-float v0, v0

    move v10, v0

    .local v10, i:F
    :goto_0
    move v0, v8

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v19, v10, v19

    if-gez v19, :cond_5

    .line 327
    const/16 v18, 0x0

    .line 329
    .local v18, value:F
    sub-float v19, v10, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x3f80

    cmpg-float v19, v19, v20

    if-gez v19, :cond_2

    .line 330
    const/high16 v19, 0x3f80

    sub-float v20, v10, v15

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    sub-float v18, v19, v20

    .line 334
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mDoMirror:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 335
    sub-float v19, v10, v12

    mul-float v6, v7, v19

    .line 341
    .local v6, center:F
    :goto_1
    const/16 v19, 0x0

    cmpl-float v19, v18, v19

    if-nez v19, :cond_4

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0xff

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move v0, v13

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v6, v20

    move v0, v14

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 326
    :goto_2
    const/high16 v19, 0x3f80

    add-float v10, v10, v19

    goto :goto_0

    .line 338
    .end local v6           #center:F
    :cond_3
    sub-int v19, v8, v16

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v10

    add-float v19, v19, v12

    const/high16 v20, 0x3f80

    sub-float v19, v19, v20

    mul-float v6, v7, v19

    .restart local v6       #center:F
    goto :goto_1

    .line 345
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/high16 v20, 0x437f

    const/high16 v21, 0x3f80

    sub-float v21, v21, v18

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move v0, v13

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v6, v20

    move v0, v14

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/high16 v20, 0x437f

    mul-float v20, v20, v18

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mSelectedIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mSelectedIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    sub-float v20, v6, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mSelectedIndicationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 354
    .end local v6           #center:F
    .end local v18           #value:F
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mDoMirror:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    .line 356
    const v19, 0x3dcccccd

    cmpl-float v19, v12, v19

    if-lez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 357
    neg-float v6, v7

    .line 358
    .restart local v6       #center:F
    const/high16 v19, 0x437f

    mul-float v19, v19, v12

    const/16 v20, 0x0

    const/high16 v21, 0x437f

    invoke-static/range {v19 .. v21}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move v5, v0

    .line 359
    .local v5, alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    sub-float v20, v6, v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 365
    .end local v5           #alpha:I
    .end local v6           #center:F
    :cond_6
    const/high16 v19, 0x4130

    add-float v19, v19, v12

    const v20, 0x3dcccccd

    add-float v19, v19, v20

    cmpg-float v19, v19, v11

    if-gez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 366
    const/high16 v19, 0x4130

    mul-float v6, v19, v7

    .line 367
    .restart local v6       #center:F
    const/high16 v19, 0x4130

    add-float v19, v19, v12

    sub-float v19, v11, v19

    const/high16 v20, 0x437f

    mul-float v19, v19, v20

    const/16 v20, 0x0

    const/high16 v21, 0x437f

    invoke-static/range {v19 .. v21}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move v5, v0

    .line 369
    .restart local v5       #alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    sub-float v20, v6, v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 396
    .end local v5           #alpha:I
    .end local v6           #center:F
    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 397
    return-void

    .line 377
    :cond_8
    const/high16 v19, 0x4130

    add-float v19, v19, v12

    const v20, 0x3dcccccd

    add-float v19, v19, v20

    cmpg-float v19, v19, v11

    if-gez v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 378
    neg-float v6, v7

    .line 379
    .restart local v6       #center:F
    const/high16 v19, 0x4130

    add-float v19, v19, v12

    sub-float v19, v11, v19

    const/high16 v20, 0x437f

    mul-float v19, v19, v20

    const/16 v20, 0x0

    const/high16 v21, 0x437f

    invoke-static/range {v19 .. v21}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move v5, v0

    .line 381
    .restart local v5       #alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    sub-float v20, v6, v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 387
    .end local v5           #alpha:I
    .end local v6           #center:F
    :cond_9
    const v19, 0x3dcccccd

    cmpl-float v19, v12, v19

    if-lez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 388
    const/high16 v19, 0x4130

    mul-float v6, v19, v7

    .line 389
    .restart local v6       #center:F
    const/high16 v19, 0x437f

    mul-float v19, v19, v12

    const/16 v20, 0x0

    const/high16 v21, 0x437f

    invoke-static/range {v19 .. v21}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move v5, v0

    .line 390
    .restart local v5       #alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    sub-float v20, v6, v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method public removeCallbacks()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 415
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 416
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 417
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 418
    return-void
.end method

.method public setAppearance(FLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "mult"
    .parameter "leftArrow"
    .parameter "rightArrow"

    .prologue
    .line 182
    iput p1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMult:F

    .line 183
    iput-object p2, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mLeftArrow:Landroid/graphics/Bitmap;

    .line 184
    iput-object p3, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mRightArrow:Landroid/graphics/Bitmap;

    .line 185
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->requestLayout()V

    .line 186
    return-void
.end method

.method public setDoMirror(Z)V
    .locals 0
    .parameter "doMirror"

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mDoMirror:Z

    .line 404
    return-void
.end method

.method public setOnInactiveTimeoutListener(Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;)V
    .locals 0
    .parameter "inactiveTimeoutListener"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mInactiveTimeoutListener:Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;

    .line 179
    return-void
.end method

.method public setPosition(FI)V
    .locals 8
    .parameter "position"
    .parameter "max"

    .prologue
    const/high16 v7, 0x4130

    const v6, 0x3dcccccd

    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 220
    iget v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    if-ne p2, v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 225
    :cond_0
    iget v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_7

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 231
    iget v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v4, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 246
    :cond_1
    :goto_1
    iput p1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    .line 248
    iget v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    if-eq v0, p2, :cond_2

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxDynamics:Lcom/sonyericsson/util/SpringDynamics;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxDynamics:Lcom/sonyericsson/util/SpringDynamics;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 253
    iget v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxDynamics:Lcom/sonyericsson/util/SpringDynamics;

    int-to-float v1, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 261
    :goto_2
    iput p2, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    .line 264
    :cond_2
    iget v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    if-le v0, v5, :cond_4

    iget v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    add-float/2addr v1, v7

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    add-float/2addr v1, v6

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    add-float/2addr v0, v6

    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    add-float/2addr v0, v7

    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 270
    :cond_3
    iget v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    add-float/2addr v0, v6

    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 273
    iget v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-static {v0, v4, v1}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    .line 280
    :goto_3
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->post(Ljava/lang/Runnable;)Z

    .line 287
    :cond_4
    iget v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    if-gt v0, v5, :cond_5

    iget v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_5

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffsetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->post(Ljava/lang/Runnable;)Z

    .line 292
    iput v4, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    .line 295
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    goto/16 :goto_0

    .line 236
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 239
    :cond_7
    iget v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPositionDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v4, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    goto/16 :goto_1

    .line 258
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMaxRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 277
    :cond_9
    iget v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mPosition:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4026

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mMax:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-static {v0, v4, v1}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mOffset:F

    goto :goto_3
.end method

.method public show()V
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->clearAnimation()V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->setVisibility(I)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/home/layer/PaneIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/PaneIndicator;->invalidate()V

    .line 202
    return-void
.end method
