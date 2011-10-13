.class public Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;
.super Ljava/lang/Object;
.source "DesktopTransformer.java"

# interfaces
.implements Lcom/sonyericsson/paneview/Transformer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;,
        Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;
    }
.end annotation


# static fields
.field private static final DRAW_QUEUE_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALIDATE_TRANSFORM_CACHE_COUNT:I = 0x64


# instance fields
.field private final mBitmapsToDraw:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBottomMargin:I

.field private final mDrawQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mNbrOfEnabledTransformations:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mProgress:F

.field private mSetupFinished:Z

.field private mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

.field private mTransformCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformCacheInvalidationCounter:I

.field private final mTransformations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            "Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$1;

    invoke-direct {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->DRAW_QUEUE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "bottomMargin"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mPaint:Landroid/graphics/Paint;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mDrawQueue:Ljava/util/LinkedList;

    .line 104
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mBitmapsToDraw:Ljava/util/LinkedHashMap;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformCache:Ljava/util/HashMap;

    .line 131
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 140
    iput p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mBottomMargin:I

    .line 141
    return-void
.end method

.method private calculateDrawRect(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "transformation"
    .parameter "outRect"

    .prologue
    .line 466
    iget-object v2, p1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->start:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v0, v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    .line 467
    .local v0, start:Landroid/graphics/RectF;
    iget-object v2, p1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v1, v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    .line 468
    .local v1, target:Landroid/graphics/RectF;
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mProgress:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 469
    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mProgress:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 470
    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mProgress:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 471
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mProgress:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 472
    return-void
.end method

.method private fillAlg()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 478
    new-instance v11, Ljava/util/ArrayList;

    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mNbrOfEnabledTransformations:I

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 479
    .local v11, transformationsSorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .line 480
    .local v10, transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    iget-boolean v0, v10, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->enabled:Z

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, v10, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 485
    .end local v10           #transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    :cond_1
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$2;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 501
    const/high16 v6, 0x3f40

    .line 504
    .local v6, fillScale:F
    :cond_2
    const/high16 v0, 0x3e80

    add-float/2addr v6, v0

    .line 505
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5, v11}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 506
    .local v5, rectList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/RectF;>;"
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mWidth:I

    int-to-float v0, v0

    mul-float v2, v0, v6

    const v4, 0x7f7fffff

    move-object v0, p0

    move v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->fillArea(FFFFLjava/util/List;)F

    move-result v9

    .line 507
    .local v9, totalHeight:F
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    cmpl-float v0, v9, v0

    if-gtz v0, :cond_2

    .line 513
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    .line 514
    .local v8, rect:Landroid/graphics/RectF;
    iget v0, v8, Landroid/graphics/RectF;->left:F

    div-float/2addr v0, v6

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v8, Landroid/graphics/RectF;->left:F

    .line 515
    iget v0, v8, Landroid/graphics/RectF;->top:F

    div-float/2addr v0, v6

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v8, Landroid/graphics/RectF;->top:F

    .line 516
    iget v0, v8, Landroid/graphics/RectF;->right:F

    div-float/2addr v0, v6

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v8, Landroid/graphics/RectF;->right:F

    .line 517
    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v0, v6

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v8, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 519
    .end local v8           #rect:Landroid/graphics/RectF;
    :cond_3
    return-void
.end method

.method private fillArea(FFFFLjava/util/List;)F
    .locals 9
    .parameter "xmin"
    .parameter "xmax"
    .parameter "ymin"
    .parameter "ymax"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 532
    .local p5, rects:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    const/4 v7, 0x0

    .line 534
    .local v7, placedRect:Landroid/graphics/RectF;
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    .line 535
    .local v8, r:Landroid/graphics/RectF;
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v1, p2, p1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float v1, p4, p3

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 536
    move-object v7, v8

    .line 541
    .end local v8           #r:Landroid/graphics/RectF;
    :cond_1
    if-eqz v7, :cond_2

    .line 542
    invoke-interface {p5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 543
    invoke-virtual {v7, p1, p3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 546
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v1, p1, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v4, p3, v0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->fillArea(FFFFLjava/util/List;)F

    .line 550
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v3, p3, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->fillArea(FFFFLjava/util/List;)F

    move-result v0

    .line 553
    :goto_0
    return v0

    :cond_2
    move v0, p3

    goto :goto_0
.end method

.method private shouldInvalidateTransformCache(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 408
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformCacheInvalidationCounter:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addItemToDraw(Ljava/lang/Object;Landroid/view/View;)V
    .locals 6
    .parameter "item"
    .parameter "view"

    .prologue
    .line 281
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSetupFinished:Z

    if-nez v3, :cond_1

    .line 282
    const-string v3, "DesktopTransformer"

    const-string v4, "addItemToDraw() called when setup has not finished."

    invoke-static {v3, v4}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformCache:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 291
    .local v0, drawingCache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->shouldInvalidateTransformCache(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformCache:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 294
    const/4 v0, 0x0

    .line 297
    :cond_2
    if-nez v0, :cond_3

    .line 298
    invoke-static {p2}, Lcom/sonyericsson/util/ViewSnapshot;->getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 300
    .local v1, snapshot:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 301
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->getTargetWidth(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->getTargetHeight(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 304
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformCache:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .end local v1           #snapshot:Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v0, :cond_0

    .line 309
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .line 310
    .local v2, transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mDrawQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mBitmapsToDraw:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public beginSetup(II)Z
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 190
    iput-boolean v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSetupFinished:Z

    .line 191
    iput p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mWidth:I

    .line 192
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mBottomMargin:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mHeight:I

    .line 193
    iput v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mNbrOfEnabledTransformations:I

    .line 195
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mHeight:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public cleanup()V
    .locals 3

    .prologue
    .line 376
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSetupFinished:Z

    .line 377
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 380
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 381
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 383
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 384
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 14
    .parameter "canvas"

    .prologue
    .line 317
    iget-boolean v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSetupFinished:Z

    if-nez v11, :cond_0

    .line 318
    const-string v11, "DesktopTransformer"

    const-string v12, "finishDraw() called when setup has not finished."

    invoke-static {v11, v12}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_0
    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mDrawQueue:Ljava/util/LinkedList;

    sget-object v12, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->DRAW_QUEUE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 323
    iget v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mProgress:F

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    invoke-static {v11, v12, v13}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v5

    .line 325
    .local v5, progress:F
    new-instance v6, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mDrawQueue:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 326
    .local v6, rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mDrawQueue:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .line 327
    .local v10, transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    iget-object v11, v10, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->start:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget v8, v11, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->alpha:I

    .line 328
    .local v8, startAlpha:I
    iget-object v11, v10, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget v9, v11, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->alpha:I

    .line 329
    .local v9, targetAlpha:I
    int-to-float v11, v8

    sub-int v12, v9, v8

    int-to-float v12, v12

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    float-to-int v0, v11

    .line 330
    .local v0, alpha:I
    if-lez v0, :cond_1

    .line 332
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 334
    .local v1, drawRect:Landroid/graphics/Rect;
    invoke-direct {p0, v10, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->calculateDrawRect(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;Landroid/graphics/Rect;)V

    .line 336
    const/4 v4, 0x0

    .line 337
    .local v4, intersectsPreviousRect:Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 338
    .local v7, rectsSize:I
    const/4 v2, 0x0

    .end local v8           #startAlpha:I
    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_2

    .line 339
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    invoke-static {v1, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 340
    const/4 v4, 0x1

    .line 345
    :cond_2
    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 346
    if-eqz v4, :cond_4

    .line 347
    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mPaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 352
    :goto_2
    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mBitmapsToDraw:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #alpha:I
    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11, v1, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 354
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 338
    .restart local v0       #alpha:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 349
    :cond_4
    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mPaint:Landroid/graphics/Paint;

    iget-object v12, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_2

    .line 359
    .end local v0           #alpha:I
    .end local v1           #drawRect:Landroid/graphics/Rect;
    .end local v2           #i:I
    .end local v4           #intersectsPreviousRect:Z
    .end local v7           #rectsSize:I
    .end local v9           #targetAlpha:I
    .end local v10           #transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 360
    .restart local v7       #rectsSize:I
    const/4 v2, 0x0

    .end local p1
    .restart local v2       #i:I
    :goto_3
    if-ge v2, v7, :cond_6

    .line 361
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 364
    :cond_6
    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mDrawQueue:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->clear()V

    .line 365
    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mBitmapsToDraw:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->clear()V

    .line 368
    iget v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformCacheInvalidationCounter:I

    add-int/lit8 v11, v11, 0x1

    rem-int/lit8 v11, v11, 0x64

    iput v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformCacheInvalidationCounter:I

    .line 371
    const/4 v11, 0x0

    return v11
.end method

.method public finishSetup()V
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mHeight:I

    if-lez v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->fillAlg()V

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSetupFinished:Z

    .line 249
    :cond_0
    return-void
.end method

.method public getDrawRect(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "item"
    .parameter "outRect"

    .prologue
    .line 263
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSetupFinished:Z

    if-nez v3, :cond_0

    .line 264
    const-string v3, "DesktopTransformer"

    const-string v4, "getDrawRect() called when setup has not finished."

    invoke-static {v3, v4}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_0
    return-void

    .line 269
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-object v1, v0

    .line 270
    .local v1, info:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .line 271
    .local v2, transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    invoke-direct {p0, v2, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->calculateDrawRect(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getItemAt(II)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 160
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 161
    .local v1, mapping:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/sonyericsson/home/layer/desktop/DesktopItem;Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .line 162
    .local v2, transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    iget-boolean v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->enabled:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v3, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-object v3, p0

    .line 167
    .end local v1           #mapping:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/sonyericsson/home/layer/desktop/DesktopItem;Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;>;"
    .end local v2           #transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    :goto_0
    return-object v3

    .restart local p0
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTargetHeight(Ljava/lang/Object;)I
    .locals 6
    .parameter "item"

    .prologue
    .line 444
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-object v1, v0

    .line 445
    .local v1, info:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .line 450
    .local v3, transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    iget-boolean v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->enabled:Z

    if-eqz v4, :cond_0

    .line 451
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v2, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    .line 456
    .local v2, rect:Landroid/graphics/RectF;
    :goto_0
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    return v4

    .line 453
    .end local v2           #rect:Landroid/graphics/RectF;
    :cond_0
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->start:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v2, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    .restart local v2       #rect:Landroid/graphics/RectF;
    goto :goto_0
.end method

.method public getTargetWidth(Ljava/lang/Object;)I
    .locals 6
    .parameter "item"

    .prologue
    .line 420
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-object v1, v0

    .line 421
    .local v1, info:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .line 426
    .local v3, transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    iget-boolean v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->enabled:Z

    if-eqz v4, :cond_0

    .line 427
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v2, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    .line 432
    .local v2, rect:Landroid/graphics/RectF;
    :goto_0
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    return v4

    .line 429
    .end local v2           #rect:Landroid/graphics/RectF;
    :cond_0
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->start:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v2, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    .restart local v2       #rect:Landroid/graphics/RectF;
    goto :goto_0
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public isSetupFinished()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSetupFinished:Z

    return v0
.end method

.method public offsetSourceRects(I)V
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v4, 0x0

    .line 176
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .line 177
    .local v1, transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    iget-object v2, v1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->start:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    int-to-float v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 178
    iget-boolean v2, v1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->enabled:Z

    if-nez v2, :cond_0

    .line 179
    iget-object v2, v1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    int-to-float v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 182
    .end local v1           #transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    :cond_1
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 149
    iput p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mProgress:F

    .line 150
    return-void
.end method

.method public setupItem(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "item"
    .parameter "startRect"

    .prologue
    const/16 v9, 0xff

    const/4 v8, 0x0

    const/high16 v7, 0x4040

    const/4 v6, 0x0

    .line 200
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-object v1, v0

    .line 204
    .local v1, info:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    new-instance v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    invoke-direct {v3, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$1;)V

    .line 205
    .local v3, transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    new-instance v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    invoke-direct {v4, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$1;)V

    iput-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->start:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    .line 206
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 207
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 208
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->start:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    .line 209
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->start:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 210
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->start:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iput v9, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->alpha:I

    .line 212
    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v4

    instance-of v4, v4, Lcom/sonyericsson/home/data/WidgetInfo;

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v4

    instance-of v4, v4, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v4, :cond_1

    .line 215
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->enabled:Z

    .line 216
    iget v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mNbrOfEnabledTransformations:I

    iput v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->zOrder:I

    .line 217
    new-instance v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    invoke-direct {v4, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$1;)V

    iput-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    .line 218
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    .line 220
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 221
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iput v9, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->alpha:I

    .line 222
    iget v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mNbrOfEnabledTransformations:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mNbrOfEnabledTransformations:I

    .line 237
    :goto_0
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 240
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    return-void

    .line 226
    :cond_1
    iput-boolean v8, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->enabled:Z

    .line 227
    const/high16 v4, -0x8000

    iput v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->zOrder:I

    .line 228
    new-instance v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    invoke-direct {v4, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$1;)V

    iput-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    .line 229
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    .line 230
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 233
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iput v8, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->alpha:I

    .line 234
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method
