.class public Lcom/sonyericsson/animation/JumpRenderer;
.super Ljava/lang/Object;
.source "JumpRenderer.java"

# interfaces
.implements Lcom/sonyericsson/animation/Renderer;


# static fields
.field private static final DURATION:J = 0x2b7L

.field private static final MAX_SCALE:F = 1.3f

.field private static final mInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/sonyericsson/animation/JumpRenderer$1;

    invoke-direct {v0}, Lcom/sonyericsson/animation/JumpRenderer$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/animation/JumpRenderer;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/animation/JumpRenderer;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/animation/JumpRenderer;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 56
    return-void
.end method

.method public static createAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/high16 v0, 0x3f00

    .line 65
    invoke-static {v1, v0, v1, v0}, Lcom/sonyericsson/animation/JumpRenderer;->createAnimation(IFIF)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public static createAnimation(IFIF)Landroid/view/animation/Animation;
    .locals 9
    .parameter "pivotXType"
    .parameter "pivotXValue"
    .parameter "pivotYType"
    .parameter "pivotYValue"

    .prologue
    const v2, 0x3fa66666

    const/high16 v1, 0x3f80

    .line 81
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v5, p0

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 84
    .local v0, jump:Landroid/view/animation/Animation;
    sget-object v1, Lcom/sonyericsson/animation/JumpRenderer;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 85
    const-wide/16 v1, 0x2b7

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 86
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z
    .locals 9
    .parameter "view"
    .parameter "canvas"
    .parameter "rect"
    .parameter "now"

    .prologue
    const/4 v8, 0x0

    const v7, 0x442dc000

    .line 90
    iget-wide v3, p0, Lcom/sonyericsson/animation/JumpRenderer;->mStartTime:J

    sub-long v3, p4, v3

    long-to-float v0, v3

    .line 93
    .local v0, animTime:F
    cmpl-float v3, v0, v7

    if-lez v3, :cond_0

    .line 94
    const/high16 v1, 0x3f80

    .line 100
    .local v1, scale:F
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 101
    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 102
    iget v3, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    invoke-static {p1}, Lcom/sonyericsson/util/ViewSnapshot;->getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 104
    .local v2, snapshot:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 105
    iget-object v3, p0, Lcom/sonyericsson/animation/JumpRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 109
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 111
    cmpl-float v3, v0, v7

    if-lez v3, :cond_2

    .line 112
    const/4 v3, 0x0

    .line 115
    :goto_2
    return v3

    .line 96
    .end local v1           #scale:F
    .end local v2           #snapshot:Landroid/graphics/Bitmap;
    :cond_0
    const/high16 v3, 0x3f80

    const v4, 0x3e999998

    sget-object v5, Lcom/sonyericsson/animation/JumpRenderer;->mInterpolator:Landroid/view/animation/Interpolator;

    div-float v6, v0, v7

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .restart local v1       #scale:F
    goto :goto_0

    .line 107
    .restart local v2       #snapshot:Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 115
    :cond_2
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public getCurrentRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "outRect"

    .prologue
    .line 119
    return-void
.end method

.method public offset(IIJ)V
    .locals 0
    .parameter "dx"
    .parameter "dy"
    .parameter "now"

    .prologue
    .line 122
    return-void
.end method

.method public sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .parameter "command"
    .parameter "x"
    .parameter "y"
    .parameter "extras"

    .prologue
    .line 125
    return-void
.end method

.method public start(Landroid/graphics/Rect;IIJ)V
    .locals 0
    .parameter "rect"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "now"

    .prologue
    .line 128
    iput-wide p4, p0, Lcom/sonyericsson/animation/JumpRenderer;->mStartTime:J

    .line 129
    return-void
.end method
