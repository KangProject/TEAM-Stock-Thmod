.class public Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;
.super Landroid/view/animation/Animation;
.source "FingerFollowTranslateAnimation.java"


# instance fields
.field private mDx:F

.field private mDy:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 37
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;->setDuration(J)V

    .line 38
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 54
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;->mDx:F

    iget v2, p0, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;->mDy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 56
    return-void
.end method

.method public setTranslation(FF)V
    .locals 0
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 48
    iput p1, p0, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;->mDx:F

    .line 49
    iput p2, p0, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;->mDy:F

    .line 50
    return-void
.end method
