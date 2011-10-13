.class public Lcom/sonyericsson/drawable/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 37
    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mWidth:I

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mHeight:I

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 46
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 55
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    const/4 v0, 0x0

    .line 82
    iput-object p1, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mWidth:I

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mHeight:I

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    iput v0, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mWidth:I

    .line 88
    iput v0, p0, Lcom/sonyericsson/drawable/FastBitmapDrawable;->mHeight:I

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 59
    return-void
.end method
