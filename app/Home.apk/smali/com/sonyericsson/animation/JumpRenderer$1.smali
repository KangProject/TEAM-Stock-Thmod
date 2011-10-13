.class final Lcom/sonyericsson/animation/JumpRenderer$1;
.super Ljava/lang/Object;
.source "JumpRenderer.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/animation/JumpRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .parameter "input"

    .prologue
    .line 44
    const-wide v0, 0x40011eb851eb851fL

    const-wide v2, -0x3ff2666666666666L

    float-to-double v4, p1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
