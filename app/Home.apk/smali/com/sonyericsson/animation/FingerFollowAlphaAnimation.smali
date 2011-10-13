.class public Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;
.super Landroid/view/animation/Animation;
.source "FingerFollowAlphaAnimation.java"


# instance fields
.field private mAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 36
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;->setDuration(J)V

    .line 37
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 51
    iget v0, p0, Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;->mAlpha:F

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 52
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 46
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;->mAlpha:F

    .line 47
    return-void
.end method
