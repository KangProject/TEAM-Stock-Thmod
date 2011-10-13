.class public Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;
.super Ljava/lang/Object;
.source "CornerButtonHighlight.java"


# static fields
.field private static final mHighlightRadialPositions:[F

.field private static final mHihglightRadialColors:[I


# instance fields
.field private final mHighlightAngle:Lcom/sonyericsson/util/SpringDynamics;

.field private final mHighlightSize:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mHihglightRadialColors:[I

    .line 26
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mHighlightRadialPositions:[F

    return-void

    .line 21
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0x0t
        0xfft 0xfft 0xfft 0x6t
        0xfft 0xfft 0xfft 0x60t
    .end array-data

    .line 26
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mHighlightAngle:Lcom/sonyericsson/util/SpringDynamics;

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mHighlightAngle:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v1, 0x4448

    const/high16 v2, 0x3f00

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mHighlightAngle:Lcom/sonyericsson/util/SpringDynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mPaint:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->setShader(F)V

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mHighlightSize:Landroid/graphics/RectF;

    .line 60
    return-void
.end method

.method private setShader(F)V
    .locals 7
    .parameter "radius"

    .prologue
    const/4 v1, 0x0

    .line 140
    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v4, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mHihglightRadialColors:[I

    sget-object v5, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mHighlightRadialPositions:[F

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 142
    .local v0, shader:Landroid/graphics/Shader;
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 143
    return-void
.end method


# virtual methods
.method public animateTo(F)V
    .locals 4
    .parameter "angle"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mHighlightAngle:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mHighlightAngle:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mHighlightAngle:Lcom/sonyericsson/util/SpringDynamics;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 108
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mHighlightAngle:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v0

    neg-float v0, v0

    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 130
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mHighlightSize:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iget v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mWidth:I

    int-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 132
    return-void
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mRadius:F

    return v0
.end method

.method public setRadius(F)V
    .locals 5
    .parameter "radius"

    .prologue
    .line 77
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 78
    const/4 p1, 0x0

    .line 80
    :cond_0
    iput p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mRadius:F

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mHighlightSize:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mRadius:F

    neg-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mRadius:F

    neg-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mRadius:F

    iget v4, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mRadius:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 82
    iget v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mRadius:F

    invoke-direct {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->setShader(F)V

    .line 83
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 68
    iput p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mWidth:I

    .line 69
    return-void
.end method

.method public updateAngle(J)Z
    .locals 2
    .parameter "now"

    .prologue
    const v1, 0x3dcccccd

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mHighlightAngle:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->mHighlightAngle:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
