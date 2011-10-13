.class public Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;
.super Ljava/lang/Object;
.source "EditModeDrawFilter.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneView$DrawFilter;


# static fields
.field private static final AMPLITUDE:F = 5.0f

.field private static final COLS:I = 0x5

.field private static final FREQUENCY_FACTOR:D = 0.0030

.field private static final ROWS:I = 0x5

.field private static final STRENGTH_THRESHOLD:F = 0.1f


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mDrawMesh:[F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mSourceMesh:[F

.field private mStrength:F

.field private mTargetStrength:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x32

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mSourceMesh:[F

    .line 48
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mDrawMesh:[F

    .line 51
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mCanvas:Landroid/graphics/Canvas;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 15
    .parameter "canvas"

    .prologue
    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 96
    .local v9, currentTime:J
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mTargetStrength:F

    const v1, 0x3e4ccccd

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mStrength:F

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mStrength:F

    .line 98
    const/4 v12, 0x0

    .local v12, y:I
    :goto_0
    const/4 v0, 0x5

    if-ge v12, v0, :cond_1

    .line 99
    const/4 v11, 0x0

    .local v11, x:I
    :goto_1
    const/4 v0, 0x5

    if-ge v11, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mDrawMesh:[F

    mul-int/lit8 v1, v12, 0x5

    add-int/2addr v1, v11

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mSourceMesh:[F

    mul-int/lit8 v3, v12, 0x5

    add-int/2addr v3, v11

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x0

    aget v2, v2, v3

    iget v3, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mStrength:F

    const/high16 v4, 0x40a0

    mul-float/2addr v3, v4

    add-int v4, v11, v12

    int-to-double v4, v4

    long-to-double v6, v9

    const-wide v13, 0x3f689374bc6a7efaL

    mul-double/2addr v6, v13

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mDrawMesh:[F

    mul-int/lit8 v1, v12, 0x5

    add-int/2addr v1, v11

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mSourceMesh:[F

    mul-int/lit8 v3, v12, 0x5

    add-int/2addr v3, v11

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    iget v3, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mStrength:F

    const/high16 v4, 0x40a0

    mul-float/2addr v3, v4

    add-int v4, v11, v12

    int-to-double v4, v4

    long-to-double v6, v9

    const-wide v13, 0x3f689374bc6a7efaL

    mul-double/2addr v6, v13

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 99
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 98
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 106
    .end local v11           #x:I
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x4

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mDrawMesh:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->isActive()Z

    move-result v0

    return v0
.end method

.method public getOffScreenCanvas()Landroid/graphics/Canvas;
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mTargetStrength:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mStrength:F

    const v1, 0x3dcccccd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 67
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mBitmap:Landroid/graphics/Bitmap;

    .line 72
    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 73
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mBitmap:Landroid/graphics/Bitmap;

    .line 74
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    new-instance v0, Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-direct {v0, v4, v4}, Lcom/sonyericsson/graphics/mesh/Mesh;-><init>(II)V

    .line 77
    .local v0, mesh:Lcom/sonyericsson/graphics/mesh/Mesh;
    int-to-float v1, p1

    int-to-float v2, p2

    invoke-static {v0, v3, v3, v1, v2}, Lcom/sonyericsson/graphics/mesh/MeshUtils;->setupMeshAsRect(Lcom/sonyericsson/graphics/mesh/Mesh;FFFF)V

    .line 78
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mSourceMesh:[F

    invoke-virtual {v0, v1}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexArray([F)[F

    .line 80
    .end local v0           #mesh:Lcom/sonyericsson/graphics/mesh/Mesh;
    :cond_1
    return-void
.end method

.method public startEffect()V
    .locals 1

    .prologue
    .line 115
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mTargetStrength:F

    .line 116
    return-void
.end method

.method public stopEffect()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/EditModeDrawFilter;->mTargetStrength:F

    .line 123
    return-void
.end method
