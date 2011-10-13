.class public Lcom/sonyericsson/home/layer/stage/StageGlowView;
.super Landroid/widget/ImageView;
.source "StageGlowView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x5dcL

.field protected static final ANIMATION_DURATION:F = 1200.0f


# instance fields
.field private mAnimating:Z

.field private mAnimationStartTime:J

.field private mGlowMask:Landroid/graphics/Bitmap;

.field private final mGlowPaint:Landroid/graphics/Paint;

.field private final mHandler:Landroid/os/Handler;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mSparkleRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mAnimating:Z

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/sonyericsson/home/layer/stage/StageGlowView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/stage/StageGlowView$1;-><init>(Lcom/sonyericsson/home/layer/stage/StageGlowView;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 64
    new-instance v0, Lcom/sonyericsson/home/layer/stage/StageGlowView$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/stage/StageGlowView$2;-><init>(Lcom/sonyericsson/home/layer/stage/StageGlowView;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mSparkleRunnable:Ljava/lang/Runnable;

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mGlowPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mGlowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/stage/StageGlowView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mAnimating:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/layer/stage/StageGlowView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/stage/StageGlowView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mAnimationStartTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/home/layer/stage/StageGlowView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mAnimationStartTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/stage/StageGlowView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mSparkleRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/stage/StageGlowView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mGlowMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mAnimationStartTime:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    const/high16 v3, 0x4496

    div-float v7, v0, v3

    .line 102
    .local v7, t:F
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mGlowMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mGlowMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/stage/StageGlowView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v1, v0, v3

    .line 105
    .local v1, startX:F
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mGlowMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mGlowMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mGlowMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mGlowMask:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 109
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mGlowMask:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mGlowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    .end local v1           #startX:F
    .end local v7           #t:F
    :cond_0
    return-void
.end method

.method public setGlowMask(I)V
    .locals 1
    .parameter "stageGlowMask"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/stage/StageGlowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mGlowMask:Landroid/graphics/Bitmap;

    .line 119
    return-void
.end method

.method public sparkle()V
    .locals 4

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mAnimating:Z

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mSparkleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView;->mSparkleRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :cond_0
    return-void
.end method
