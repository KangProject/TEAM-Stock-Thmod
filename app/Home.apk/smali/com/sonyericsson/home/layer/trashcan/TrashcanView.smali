.class public Lcom/sonyericsson/home/layer/trashcan/TrashcanView;
.super Landroid/view/View;
.source "TrashcanView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;
    }
.end annotation


# static fields
.field private static final LID_MAX_OPEN_DEGREES:I = 0x78


# instance fields
.field private mCloseWhenTrashed:Z

.field private mCurrentTrashRect:Landroid/graphics/Rect;

.field private mLid:Landroid/graphics/drawable/Drawable;

.field private mLidDynamics:Lcom/sonyericsson/util/SpringDynamics;

.field private mLidRunnable:Ljava/lang/Runnable;

.field private mListener:Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;

.field private mStartTrashRect:Landroid/graphics/Rect;

.field private mTargetTrashRect:Landroid/graphics/Rect;

.field private mTrashDynamics:Lcom/sonyericsson/util/SpringDynamics;

.field private mTrashRenderer:Lcom/sonyericsson/animation/Renderer;

.field private mTrashRunnable:Ljava/lang/Runnable;

.field private mTrashView:Landroid/view/View;

.field private mTrashcan:Landroid/graphics/drawable/Drawable;

.field private waitingForTrash:Z

.field private wasNegative:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mStartTrashRect:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mCurrentTrashRect:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTargetTrashRect:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLidDynamics:Lcom/sonyericsson/util/SpringDynamics;

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLidDynamics:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v1, 0x42c8

    const v2, 0x3f19999a

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLidDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLidDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 110
    new-instance v0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$1;-><init>(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLidRunnable:Ljava/lang/Runnable;

    .line 130
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashDynamics:Lcom/sonyericsson/util/SpringDynamics;

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashDynamics:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v1, 0x4296

    const v2, 0x3f666666

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 134
    new-instance v0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;-><init>(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashRunnable:Ljava/lang/Runnable;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Lcom/sonyericsson/util/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLidDynamics:Lcom/sonyericsson/util/SpringDynamics;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mListener:Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mCloseWhenTrashed:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mCloseWhenTrashed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Lcom/sonyericsson/animation/Renderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashRenderer:Lcom/sonyericsson/animation/Renderer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;Lcom/sonyericsson/animation/Renderer;)Lcom/sonyericsson/animation/Renderer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashRenderer:Lcom/sonyericsson/animation/Renderer;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Lcom/sonyericsson/util/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashDynamics:Lcom/sonyericsson/util/SpringDynamics;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mCurrentTrashRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mStartTrashRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTargetTrashRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->waitingForTrash:Z

    return p1
.end method


# virtual methods
.method public close(I)V
    .locals 3
    .parameter "maxCloseDelay"

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->waitingForTrash:Z

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLidDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLidDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLidRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLidRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->post(Ljava/lang/Runnable;)Z

    .line 222
    :goto_0
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mCloseWhenTrashed:Z

    .line 214
    new-instance v0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$3;-><init>(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)V

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLidDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v6

    .line 302
    .local v6, lidPosition:F
    const/4 v0, 0x0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_3

    .line 303
    neg-float v6, v6

    .line 304
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->wasNegative:Z

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mListener:Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mListener:Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;->onLidBounce()V

    .line 309
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->wasNegative:Z

    .line 318
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 319
    neg-float v0, v6

    const/high16 v1, 0x42f0

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashRenderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashRenderer:Lcom/sonyericsson/animation/Renderer;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashView:Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mCurrentTrashRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z

    .line 328
    :cond_2
    return-void

    .line 310
    :cond_3
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->wasNegative:Z

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mListener:Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;

    if-eqz v0, :cond_4

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mListener:Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;->onLidBounce()V

    .line 314
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->wasNegative:Z

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 249
    iget-object v5, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLid:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 250
    iget-object v5, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 251
    .local v2, lidWidth:I
    iget-object v5, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 254
    .local v1, lidHeight:I
    mul-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    const v6, 0x3fdd70a4

    int-to-float v7, v1

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v4, v5

    .line 256
    .local v4, width:I
    iget-object v5, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 257
    .local v3, trashcanHeight:I
    add-int v0, v3, v2

    .line 259
    .local v0, height:I
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->setMeasuredDimension(II)V

    .line 264
    .end local v0           #height:I
    .end local v1           #lidHeight:I
    .end local v2           #lidWidth:I
    .end local v3           #trashcanHeight:I
    .end local v4           #width:I
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 21
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 268
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->getPaddingLeft()I

    move-result v10

    .line 271
    .local v10, paddingLeft:I
    sub-int v19, p1, v10

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->getPaddingRight()I

    move-result v20

    sub-int v18, v19, v20

    .line 273
    .local v18, widthNoPadding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLid:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 274
    .local v9, lidWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLid:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 276
    .local v6, lidHeight:I
    new-instance v5, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v5

    move/from16 v1, v19

    move/from16 v2, v20

    move v3, v9

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 277
    .local v5, lidBounds:Landroid/graphics/Rect;
    sub-int v19, v18, v9

    div-int/lit8 v19, v19, 0x2

    add-int v7, v19, v10

    .line 278
    .local v7, lidOffsetX:I
    sub-int v19, v9, v6

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->getPaddingTop()I

    move-result v20

    add-int v8, v19, v20

    .line 279
    .local v8, lidOffsetY:I
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLid:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    .line 283
    .local v17, trashcanWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .line 285
    .local v14, trashcanHeight:I
    new-instance v13, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v13

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v17

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 286
    .local v13, trashcanBounds:Landroid/graphics/Rect;
    sub-int v19, v18, v17

    div-int/lit8 v19, v19, 0x2

    add-int v15, v19, v10

    .line 287
    .local v15, trashcanOffsetX:I
    add-int v16, v8, v6

    .line 288
    .local v16, trashcanOffsetY:I
    move-object v0, v13

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 291
    div-int/lit8 v19, v18, 0x2

    add-int v11, v10, v19

    .line 292
    .local v11, trashX:I
    move/from16 v12, v16

    .line 293
    .local v12, trashY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTargetTrashRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v11

    move v2, v12

    move v3, v11

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 294
    return-void
.end method

.method public open()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLidDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLidDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLidRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLidRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->post(Ljava/lang/Runnable;)Z

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mCloseWhenTrashed:Z

    .line 198
    return-void
.end method

.method public setListener(Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mListener:Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;

    .line 174
    return-void
.end method

.method public setTrashcanDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "trashcan"
    .parameter "lid"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    .line 185
    iput-object p2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mLid:Landroid/graphics/drawable/Drawable;

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->requestLayout()V

    .line 187
    return-void
.end method

.method public trashItem(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;)V
    .locals 5
    .parameter "view"
    .parameter "renderer"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v4, 0x0

    .line 232
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->waitingForTrash:Z

    .line 233
    iput-object p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashView:Landroid/view/View;

    .line 234
    iput-object p2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashRenderer:Lcom/sonyericsson/animation/Renderer;

    .line 235
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 236
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 237
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 238
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mStartTrashRect:Landroid/graphics/Rect;

    invoke-interface {p2, v1}, Lcom/sonyericsson/animation/Renderer;->getCurrentRect(Landroid/graphics/Rect;)V

    .line 239
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mStartTrashRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    .line 240
    .local v0, offset:I
    if-gez v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mStartTrashRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 244
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->mTrashRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->post(Ljava/lang/Runnable;)Z

    .line 245
    return-void
.end method
