.class public Lcom/sonyericsson/home/layer/HintView;
.super Landroid/view/View;
.source "HintView.java"


# static fields
.field public static final HINT_TYPE_ACTION:I = 0x2

.field public static final HINT_TYPE_DELETE:I = 0x3

.field public static final HINT_TYPE_FREE:I = 0x0

.field public static final HINT_TYPE_OCCUPIED:I = 0x1


# instance fields
.field private final mCornerRadius:I

.field private mDeleteBitmap:Landroid/graphics/Bitmap;

.field private mFreeBitmap:Landroid/graphics/Bitmap;

.field private mOccupiedBitmap:Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/HintView;->mPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/HintView;->mRect:Landroid/graphics/RectF;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/home/layer/HintView;->mCornerRadius:I

    .line 65
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 66
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020033

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/HintView;->mOccupiedBitmap:Landroid/graphics/Bitmap;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020032

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/HintView;->mFreeBitmap:Landroid/graphics/Bitmap;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020031

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/HintView;->mDeleteBitmap:Landroid/graphics/Bitmap;

    .line 74
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 75
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/HintView;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sonyericsson/home/layer/HintView;->mCornerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/home/layer/HintView;->mCornerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/HintView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 80
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/HintView;->mRect:Landroid/graphics/RectF;

    sub-int v1, p4, p2

    int-to-float v1, v1

    sub-int v2, p5, p3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 86
    return-void
.end method

.method public setHintType(I)V
    .locals 4
    .parameter "mHintType"

    .prologue
    .line 95
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/home/layer/HintView;->mOccupiedBitmap:Landroid/graphics/Bitmap;

    .line 103
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 105
    .local v1, bitmapShader:Landroid/graphics/BitmapShader;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/HintView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object v2, p0, Lcom/sonyericsson/home/layer/HintView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 107
    iget-object v2, p0, Lcom/sonyericsson/home/layer/HintView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 108
    return-void

    .line 97
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bitmapShader:Landroid/graphics/BitmapShader;
    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/home/layer/HintView;->mDeleteBitmap:Landroid/graphics/Bitmap;

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 100
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/HintView;->mFreeBitmap:Landroid/graphics/Bitmap;

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method
