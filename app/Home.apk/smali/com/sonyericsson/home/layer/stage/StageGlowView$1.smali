.class Lcom/sonyericsson/home/layer/stage/StageGlowView$1;
.super Ljava/lang/Object;
.source "StageGlowView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/stage/StageGlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/stage/StageGlowView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/stage/StageGlowView;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView$1;->this$0:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .parameter "input"

    .prologue
    const-wide/high16 v6, 0x3fe0

    .line 63
    const-wide/high16 v0, 0x4010

    float-to-double v2, p1

    sub-double/2addr v2, v6

    const-wide/high16 v4, 0x4008

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    double-to-float v0, v0

    add-float/2addr v0, p1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    return v0
.end method
