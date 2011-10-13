.class public Lcom/sonyericsson/cornerbutton/CornerButtonArc;
.super Ljava/lang/Object;
.source "CornerButtonArc.java"


# static fields
.field private static final ARC_WIDTH:F = 3.0f

.field private static final ARC_WIDTH_HALF:F = 1.5f

.field private static final CLICKED_GLOW_SIZE:I = 0xa

.field private static final DAMPING_COLLAPSE:F = 0.7f

.field private static final DAMPING_EXPAND:F = 0.5f

.field private static final STIFFNESS:I = 0x12c

.field private static final mArcSweepColors:[I

.field private static final mArcSweepPositions:[F

.field private static final mClickedGlowColors:[I

.field private static final mClickedGlowPosition:[F

.field private static final mFocusedArcSweepColors:[I

.field private static final mGlowColors:[I

.field private static final mGlowPositions:[F


# instance fields
.field private mArcShader:Landroid/graphics/Shader;

.field private final mArcSize:Landroid/graphics/RectF;

.field private mClicked:Z

.field private mClickedGlowShader:Landroid/graphics/Shader;

.field private final mCollapsedRadius:I

.field private mDirection:F

.field private mExpandedRadius:I

.field private mFocused:Z

.field private mFocusedArcShader:Landroid/graphics/Shader;

.field private mGlowShader:Landroid/graphics/Shader;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:Lcom/sonyericsson/util/SpringDynamics;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 36
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSweepColors:[I

    .line 41
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSweepPositions:[F

    .line 46
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mFocusedArcSweepColors:[I

    .line 51
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mGlowColors:[I

    .line 56
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mGlowPositions:[F

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mClickedGlowColors:[I

    .line 66
    new-array v0, v1, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mClickedGlowPosition:[F

    return-void

    .line 36
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0x0t
        0xfft 0xfft 0xfft 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 41
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 46
    :array_2
    .array-data 0x4
        0xfft 0xd4t 0x2t 0xfft
        0xfft 0xfft 0xfft 0x0t
        0xfft 0xfft 0xfft 0x0t
        0xfft 0xd4t 0x2t 0xfft
    .end array-data

    .line 51
    :array_3
    .array-data 0x4
        0x28t 0x1ct 0x12t 0xa0t
        0x28t 0x1ct 0x12t 0xa0t
        0x50t 0x40t 0x40t 0xa0t
    .end array-data

    .line 56
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 61
    :array_5
    .array-data 0x4
        0xfft 0xfft 0xfft 0x0t
        0xfft 0xfft 0xfft 0x40t
        0xfft 0xfft 0xfft 0x0t
    .end array-data

    .line 66
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter "collapsedRadius"

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSize:Landroid/graphics/RectF;

    .line 95
    new-instance v0, Landroid/graphics/SweepGradient;

    sget-object v1, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSweepColors:[I

    sget-object v2, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSweepPositions:[F

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcShader:Landroid/graphics/Shader;

    .line 98
    new-instance v0, Landroid/graphics/SweepGradient;

    sget-object v1, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mFocusedArcSweepColors:[I

    sget-object v2, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSweepPositions:[F

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mFocusedArcShader:Landroid/graphics/Shader;

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 118
    iput p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mCollapsedRadius:I

    .line 119
    iput p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mExpandedRadius:I

    .line 121
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setGlowShader(F)V

    .line 122
    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;F)V
    .locals 6
    .parameter "canvas"
    .parameter "radius"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x43b4

    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 334
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSize:Landroid/graphics/RectF;

    neg-float v1, p2

    neg-float v5, p2

    invoke-virtual {v0, v1, v5, p2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 335
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSize:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 339
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSize:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 340
    return-void
.end method

.method private drawClickedGlow(Landroid/graphics/Canvas;F)V
    .locals 6
    .parameter "canvas"
    .parameter "radius"

    .prologue
    const/high16 v3, -0x3ee0

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mClickedGlowShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSize:Landroid/graphics/RectF;

    neg-float v1, p2

    neg-float v2, p2

    invoke-virtual {v0, v1, v2, p2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSize:Landroid/graphics/RectF;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 320
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSize:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 321
    return-void
.end method

.method private drawDropShadow(Landroid/graphics/Canvas;F)V
    .locals 8
    .parameter "canvas"
    .parameter "radius"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x43b4

    const/4 v2, 0x0

    const/high16 v7, 0x3fc0

    .line 364
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSize:Landroid/graphics/RectF;

    neg-float v1, p2

    neg-float v5, p2

    add-float/2addr v5, v7

    add-float v6, p2, v7

    invoke-virtual {v0, v1, v5, p2, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 369
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSize:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 371
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSize:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 374
    return-void
.end method

.method private drawFocusedArc(Landroid/graphics/Canvas;F)V
    .locals 6
    .parameter "canvas"
    .parameter "radius"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mFocusedArcShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 352
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSize:Landroid/graphics/RectF;

    neg-float v1, p2

    neg-float v2, p2

    invoke-virtual {v0, v1, v2, p2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 354
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSize:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 355
    return-void
.end method

.method private drawNormalGlow(Landroid/graphics/Canvas;F)V
    .locals 6
    .parameter "canvas"
    .parameter "radius"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mGlowShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSize:Landroid/graphics/RectF;

    neg-float v1, p2

    neg-float v2, p2

    invoke-virtual {v0, v1, v2, p2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 305
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mArcSize:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 306
    return-void
.end method

.method private setClickedGlowShader(F)V
    .locals 7
    .parameter "radius"

    .prologue
    const/high16 v4, 0x4120

    const/4 v1, 0x0

    .line 289
    sget-object v0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mClickedGlowPosition:[F

    const/4 v2, 0x1

    add-float v3, p1, v4

    div-float v3, p1, v3

    aput v3, v0, v2

    .line 290
    new-instance v0, Landroid/graphics/RadialGradient;

    add-float v3, p1, v4

    sget-object v4, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mClickedGlowColors:[I

    sget-object v5, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mClickedGlowPosition:[F

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mClickedGlowShader:Landroid/graphics/Shader;

    .line 292
    return-void
.end method

.method private setGlowShader(F)V
    .locals 7
    .parameter "radius"

    .prologue
    const/4 v1, 0x0

    .line 278
    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v4, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mGlowColors:[I

    sget-object v5, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mGlowPositions:[F

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mGlowShader:Landroid/graphics/Shader;

    .line 280
    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v1, 0x4396

    const v2, 0x3f333333

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 169
    return-void
.end method

.method public contains(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->getRadius()F

    move-result v0

    .line 216
    .local v0, radius:F
    mul-float v1, v0, v0

    .line 217
    .local v1, radiusSquared:F
    mul-int v2, p1, p1

    mul-int v3, p2, p2

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->getRadius()F

    move-result v1

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 253
    .local v0, radius:F
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->drawDropShadow(Landroid/graphics/Canvas;F)V

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 255
    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mDirection:F

    neg-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 257
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->drawNormalGlow(Landroid/graphics/Canvas;F)V

    .line 259
    iget-boolean v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mClicked:Z

    if-eqz v1, :cond_0

    .line 260
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->drawClickedGlow(Landroid/graphics/Canvas;F)V

    .line 263
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mFocused:Z

    if-eqz v1, :cond_1

    .line 264
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->drawFocusedArc(Landroid/graphics/Canvas;F)V

    .line 269
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 270
    return-void

    .line 266
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->drawArc(Landroid/graphics/Canvas;F)V

    goto :goto_0
.end method

.method public expand(Z)V
    .locals 5
    .parameter "animate"

    .prologue
    const/high16 v4, 0x3f80

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v1, 0x4396

    const/high16 v2, 0x3f00

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    goto :goto_0
.end method

.method public getDrawRadius()F
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->getRadius()F

    move-result v0

    const/high16 v1, 0x4040

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mClicked:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    :goto_0
    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRadius()F
    .locals 3

    .prologue
    .line 195
    iget v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mCollapsedRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mExpandedRadius:I

    iget v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mCollapsedRadius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public setClicked(Z)V
    .locals 2
    .parameter "clicked"

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mClicked:Z

    .line 228
    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->getRadius()F

    move-result v0

    .line 229
    .local v0, radius:F
    iget-boolean v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mClicked:Z

    if-eqz v1, :cond_0

    .line 230
    invoke-direct {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setClickedGlowShader(F)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setGlowShader(F)V

    goto :goto_0
.end method

.method public setDirection(F)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 139
    iput p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mDirection:F

    .line 140
    return-void
.end method

.method public setExpandedRadius(I)V
    .locals 0
    .parameter "expandedRadius"

    .prologue
    .line 130
    iput p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mExpandedRadius:I

    .line 131
    return-void
.end method

.method public setFocused(Z)V
    .locals 0
    .parameter "focused"

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mFocused:Z

    .line 244
    return-void
.end method

.method public updateRadius(J)Z
    .locals 3
    .parameter "now"

    .prologue
    const v2, 0x3c23d70a

    .line 179
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 180
    invoke-virtual {p0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->getRadius()F

    move-result v0

    .line 181
    .local v0, radius:F
    iget-boolean v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mClicked:Z

    if-eqz v1, :cond_0

    .line 182
    invoke-direct {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setClickedGlowShader(F)V

    .line 186
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->mRadius:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v2, v2}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 184
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->setGlowShader(F)V

    goto :goto_0

    .line 186
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
