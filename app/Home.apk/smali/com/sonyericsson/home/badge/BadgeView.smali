.class public Lcom/sonyericsson/home/badge/BadgeView;
.super Landroid/view/View;
.source "BadgeView.java"


# static fields
.field private static final COLORS:[I

.field private static final POSITIONS:[F

.field private static sBackground:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/String;

.field private mTextHeight:F

.field private mTextX:F

.field private mTextY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 27
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/home/badge/BadgeView;->POSITIONS:[F

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/home/badge/BadgeView;->COLORS:[I

    return-void

    .line 27
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 32
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object v1, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v1, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    sget-object v1, Lcom/sonyericsson/home/badge/BadgeView;->sBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/home/badge/BadgeView;->sBackground:Landroid/graphics/drawable/Drawable;

    .line 71
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 72
    .local v0, paddingRect:Landroid/graphics/Rect;
    sget-object v1, Lcom/sonyericsson/home/badge/BadgeView;->sBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 73
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaddingLeft:I

    .line 74
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaddingRight:I

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget-object v2, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/home/badge/BadgeView;->mTextHeight:F

    .line 76
    return-void
.end method

.method private setTextPosition(II)V
    .locals 10
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v9, 0x4000

    const/4 v1, 0x0

    .line 122
    int-to-float v0, p1

    iget-object v2, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/sonyericsson/home/badge/BadgeView;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v9

    iput v0, p0, Lcom/sonyericsson/home/badge/BadgeView;->mTextX:F

    .line 123
    iget v0, p0, Lcom/sonyericsson/home/badge/BadgeView;->mTextX:F

    iget v2, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaddingLeft:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 124
    iget v0, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaddingLeft:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/home/badge/BadgeView;->mTextX:F

    .line 127
    iget-object v8, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaddingRight:I

    sub-int v2, p1, v2

    int-to-float v3, v2

    sget-object v5, Lcom/sonyericsson/home/badge/BadgeView;->COLORS:[I

    sget-object v6, Lcom/sonyericsson/home/badge/BadgeView;->POSITIONS:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 132
    :goto_0
    int-to-float v0, p2

    iget v1, p0, Lcom/sonyericsson/home/badge/BadgeView;->mTextHeight:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v9

    iput v0, p0, Lcom/sonyericsson/home/badge/BadgeView;->mTextY:F

    .line 133
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 108
    sget-object v0, Lcom/sonyericsson/home/badge/BadgeView;->sBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sonyericsson/home/badge/BadgeView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/home/badge/BadgeView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    sget-object v0, Lcom/sonyericsson/home/badge/BadgeView;->sBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeView;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeView;->mText:Ljava/lang/String;

    iget v1, p0, Lcom/sonyericsson/home/badge/BadgeView;->mTextX:F

    iget v2, p0, Lcom/sonyericsson/home/badge/BadgeView;->mTextY:F

    iget-object v3, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 113
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 90
    sget-object v5, Lcom/sonyericsson/home/badge/BadgeView;->sBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 91
    .local v1, minWidth:I
    iget-object v5, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/sonyericsson/home/badge/BadgeView;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    iget v6, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaddingLeft:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sonyericsson/home/badge/BadgeView;->mPaddingRight:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v4, v5

    .line 92
    .local v4, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 93
    .local v3, wantedWidth:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 94
    .local v2, mode:I
    const/high16 v5, 0x4000

    if-eq v2, v5, :cond_0

    const/high16 v5, -0x8000

    if-ne v2, v5, :cond_1

    if-le v4, v3, :cond_1

    .line 95
    :cond_0
    move v4, v3

    .line 97
    :cond_1
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 100
    sget-object v5, Lcom/sonyericsson/home/badge/BadgeView;->sBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 102
    .local v0, height:I
    invoke-direct {p0, v4, v0}, Lcom/sonyericsson/home/badge/BadgeView;->setTextPosition(II)V

    .line 103
    invoke-virtual {p0, v4, v0}, Lcom/sonyericsson/home/badge/BadgeView;->setMeasuredDimension(II)V

    .line 104
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sonyericsson/home/badge/BadgeView;->mText:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/home/badge/BadgeView;->requestLayout()V

    .line 86
    return-void
.end method
