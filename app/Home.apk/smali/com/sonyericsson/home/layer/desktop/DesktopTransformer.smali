.class public Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;
.super Ljava/lang/Object;
.source "DesktopTransformer.java"

# interfaces
.implements Lcom/sonyericsson/paneview/Transformer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;,
        Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;,
        Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;
    }
.end annotation


# static fields
.field private static final DAMPING:F = 4.0f

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

.field private static final DT_MAX:J = 0x14L

.field private static final INVALIDATE_TRANSFORM_CACHE_COUNT:I = 0x64

.field private static final MAX_EDGE_DISTANCE:F = 230.0f

.field private static final MAX_REPEL_FORCE:F = 40000.0f

.field private static final OVERFILL:F = 1.4f

.field private static final REPEL_FACTOR:F = 3.33E7f

.field private static final SHAKE_THRESHOLD:F = 3.0E-7f

.field private static final SHAKE_VELOCITY_FACTOR:F = 650.0f

.field private static final WAVE_FREQUENCY_FACTOR:F = 6.6666666E-4f


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

.field private final mMaxEdgeDistance:F

.field private mNbrOfEnabledTransformations:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mProgress:F

.field private final mRepelFactor:F

.field private mRunning:Z

.field private final mSensor:Landroid/hardware/Sensor;

.field private final mSensorEventListener:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSetupFinished:Z

.field private final mShakeVelocityFactor:F

.field private mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

.field private mTimeOfLastUpdate:J

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
    .line 124
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$1;

    invoke-direct {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->DRAW_QUEUE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/SensorManager;F)V
    .locals 5
    .parameter "bottomMargin"
    .parameter "sensorManager"
    .parameter "densityScaleFactor"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mPaint:Landroid/graphics/Paint;

    .line 164
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    .line 167
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mDrawQueue:Ljava/util/LinkedList;

    .line 170
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mBitmapsToDraw:Ljava/util/LinkedHashMap;

    .line 191
    iput-boolean v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mRunning:Z

    .line 194
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformCache:Ljava/util/HashMap;

    .line 203
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 278
    iput p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mBottomMargin:I

    .line 280
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 281
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 282
    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensorManager:Landroid/hardware/SensorManager;

    .line 283
    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;)V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensorEventListener:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;

    .line 284
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    iput-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensor:Landroid/hardware/Sensor;

    .line 291
    :goto_0
    const v1, 0x4bfe0f10

    mul-float/2addr v1, p3

    iput v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mRepelFactor:F

    .line 292
    const/high16 v1, 0x4366

    mul-float/2addr v1, p3

    iput v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mMaxEdgeDistance:F

    .line 293
    const v1, 0x44228000

    mul-float/2addr v1, p3

    iput v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mShakeVelocityFactor:F

    .line 294
    return-void

    .line 286
    :cond_0
    iput-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensorManager:Landroid/hardware/SensorManager;

    .line 287
    iput-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensorEventListener:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;

    .line 288
    iput-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensor:Landroid/hardware/Sensor;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mShakeVelocityFactor:F

    return v0
.end method

.method private calculateDrawRect(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "transformation"
    .parameter "outRect"

    .prologue
    .line 679
    iget-object v2, p1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->start:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v0, v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    .line 680
    .local v0, start:Landroid/graphics/RectF;
    iget-object v2, p1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v1, v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    .line 681
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

    .line 682
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

    .line 683
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

    .line 684
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

    .line 685
    return-void
.end method

.method private fillAlg()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 691
    new-instance v11, Ljava/util/ArrayList;

    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mNbrOfEnabledTransformations:I

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 692
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

    .line 693
    .local v10, transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    iget-boolean v0, v10, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->enabled:Z

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, v10, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 698
    .end local v10           #transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    :cond_1
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$2;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 716
    const/high16 v6, 0x3f40

    .line 719
    .local v6, fillScale:F
    :cond_2
    const/high16 v0, 0x3e80

    add-float/2addr v6, v0

    .line 720
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5, v11}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 721
    .local v5, rectList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/RectF;>;"
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mWidth:I

    int-to-float v0, v0

    mul-float v2, v0, v6

    const v4, 0x7f7fffff

    move-object v0, p0

    move v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->fillArea(FFFFLjava/util/List;)F

    move-result v9

    .line 722
    .local v9, totalHeight:F
    const v0, 0x3fb33333

    iget v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    mul-float/2addr v0, v6

    cmpl-float v0, v9, v0

    if-gtz v0, :cond_2

    .line 728
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    .line 729
    .local v8, rect:Landroid/graphics/RectF;
    iget v0, v8, Landroid/graphics/RectF;->left:F

    div-float/2addr v0, v6

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v8, Landroid/graphics/RectF;->left:F

    .line 730
    iget v0, v8, Landroid/graphics/RectF;->top:F

    div-float/2addr v0, v6

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v8, Landroid/graphics/RectF;->top:F

    .line 731
    iget v0, v8, Landroid/graphics/RectF;->right:F

    div-float/2addr v0, v6

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v8, Landroid/graphics/RectF;->right:F

    .line 732
    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v0, v6

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v8, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 734
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
    .line 747
    .local p5, rects:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    const/4 v7, 0x0

    .line 749
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

    .line 750
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

    .line 751
    move-object v7, v8

    .line 756
    .end local v8           #r:Landroid/graphics/RectF;
    :cond_1
    if-eqz v7, :cond_2

    .line 757
    invoke-interface {p5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 758
    invoke-virtual {v7, p1, p3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 761
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

    .line 765
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

    .line 768
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
    .line 621
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

.method private updateStep(F)V
    .locals 30
    .parameter "dt"

    .prologue
    .line 777
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mRepelFactor:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mNbrOfEnabledTransformations:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v19, v25, v26

    .line 778
    .local v19, scaledRepelFactor:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 780
    .local v14, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .line 781
    .local v20, t:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->enabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 782
    const/4 v7, 0x0

    .line 783
    .local v7, fx:F
    const/4 v8, 0x0

    .line 786
    .local v8, fy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .line 787
    .local v21, t2:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->enabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 788
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->centerX()F

    move-result v25

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->centerX()F

    move-result v26

    sub-float v5, v25, v26

    .line 789
    .local v5, dx:F
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->centerY()F

    move-result v25

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->centerY()F

    move-result v26

    sub-float v6, v25, v26

    .line 790
    .local v6, dy:F
    mul-float v25, v5, v5

    mul-float v26, v6, v6

    add-float v4, v25, v26

    .line 791
    .local v4, dist2:F
    move v0, v4

    float-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move v3, v0

    .line 792
    .local v3, dist:F
    div-float v12, v5, v3

    .line 793
    .local v12, nDx:F
    div-float v13, v6, v3

    .line 795
    .local v13, nDy:F
    const v25, 0x471c4000

    const/high16 v26, 0x3f80

    add-float v26, v26, v4

    div-float v26, v19, v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    mul-float v25, v25, v12

    add-float v7, v7, v25

    .line 796
    const v25, 0x471c4000

    const/high16 v26, 0x3f80

    add-float v26, v26, v4

    div-float v26, v19, v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    mul-float v25, v25, v13

    add-float v8, v8, v25

    goto/16 :goto_1

    .line 811
    .end local v3           #dist:F
    .end local v4           #dist2:F
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v12           #nDx:F
    .end local v13           #nDy:F
    .end local v21           #t2:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    :cond_2
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->centerX()F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x4000

    div-float v26, v26, v27

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->centerY()F

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    sub-float v27, v27, v28

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v27, v0

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40a0

    div-float v16, v25, v26

    .line 815
    .local v16, phase:F
    move-wide v0, v14

    long-to-float v0, v0

    move/from16 v25, v0

    const v26, 0x3a2ec33e

    mul-float v25, v25, v26

    add-float v25, v25, v16

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x3f80

    add-float v25, v25, v26

    const/high16 v26, 0x4000

    div-float v23, v25, v26

    .line 819
    .local v23, wave:F
    const v24, 0x3e99999a

    .line 820
    .local v24, waveAmplitudeFactor:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mMaxEdgeDistance:F

    move/from16 v25, v0

    const/high16 v26, 0x3f80

    const v27, 0x3e99999a

    mul-float v27, v27, v23

    mul-float v27, v27, v23

    sub-float v26, v26, v27

    mul-float v17, v25, v26

    .line 823
    .local v17, pixOutside:F
    const/16 v25, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    add-float v26, v26, v17

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 824
    .local v11, leftEdgeDist:F
    const v25, 0x471c4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mRepelFactor:F

    move/from16 v26, v0

    mul-float v27, v11, v11

    const/high16 v28, 0x3f80

    add-float v27, v27, v28

    div-float v26, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    add-float v7, v7, v25

    .line 825
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v26, v26, v17

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 827
    .local v18, rightEdgeDist:F
    const v25, 0x471c4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mRepelFactor:F

    move/from16 v26, v0

    mul-float v27, v18, v18

    const/high16 v28, 0x3f80

    add-float v27, v27, v28

    div-float v26, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    add-float v7, v7, v25

    .line 829
    const/16 v25, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    add-float v26, v26, v17

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 830
    .local v22, topEdgeDist:F
    const v25, 0x471c4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mRepelFactor:F

    move/from16 v26, v0

    mul-float v27, v22, v22

    const/high16 v28, 0x3f80

    add-float v27, v27, v28

    div-float v26, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    add-float v8, v8, v25

    .line 831
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v26, v26, v17

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 833
    .local v2, bottomEdgeDist:F
    const v25, 0x471c4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mRepelFactor:F

    move/from16 v26, v0

    mul-float v27, v2, v2

    const/high16 v28, 0x3f80

    add-float v27, v27, v28

    div-float v26, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    add-float v8, v8, v25

    .line 837
    move-object/from16 v0, v20

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->targetVx:F

    move/from16 v25, v0

    const/high16 v26, 0x4080

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->targetVx:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    mul-float v26, v26, p1

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->targetVx:F

    .line 838
    move-object/from16 v0, v20

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->targetVy:F

    move/from16 v25, v0

    const/high16 v26, 0x4080

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->targetVy:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    mul-float v26, v26, p1

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->targetVy:F

    .line 841
    move-object/from16 v0, v20

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->targetVx:F

    move/from16 v25, v0

    mul-float v26, v7, p1

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->targetVx:F

    .line 842
    move-object/from16 v0, v20

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->targetVy:F

    move/from16 v25, v0

    mul-float v26, v8, p1

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->targetVy:F

    .line 844
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->targetVx:F

    move/from16 v26, v0

    mul-float v26, v26, p1

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->targetVy:F

    move/from16 v27, v0

    mul-float v27, v27, p1

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_0

    .line 847
    .end local v2           #bottomEdgeDist:F
    .end local v7           #fx:F
    .end local v8           #fy:F
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #leftEdgeDist:F
    .end local v16           #phase:F
    .end local v17           #pixOutside:F
    .end local v18           #rightEdgeDist:F
    .end local v20           #t:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    .end local v22           #topEdgeDist:F
    .end local v23           #wave:F
    .end local v24           #waveAmplitudeFactor:F
    :cond_3
    return-void
.end method


# virtual methods
.method public addItemToDraw(Ljava/lang/Object;Landroid/view/View;)V
    .locals 6
    .parameter "item"
    .parameter "view"

    .prologue
    .line 490
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSetupFinished:Z

    if-nez v3, :cond_1

    .line 491
    const-string v3, "DesktopTransformer"

    const-string v4, "addItemToDraw() called when setup has not finished."

    invoke-static {v3, v4}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformCache:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 500
    .local v0, drawingCache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->shouldInvalidateTransformCache(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 501
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformCache:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 503
    const/4 v0, 0x0

    .line 506
    :cond_2
    if-nez v0, :cond_3

    .line 507
    invoke-static {p2}, Lcom/sonyericsson/util/ViewSnapshot;->getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 509
    .local v1, snapshot:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 510
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->getTargetWidth(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->getTargetHeight(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 513
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformCache:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    .end local v1           #snapshot:Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v0, :cond_0

    .line 518
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .line 519
    .local v2, transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mDrawQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 520
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

    .line 371
    iput-boolean v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSetupFinished:Z

    .line 372
    iput p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mWidth:I

    .line 373
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mBottomMargin:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mHeight:I

    .line 374
    iput v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mNbrOfEnabledTransformations:I

    .line 376
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
    .locals 4

    .prologue
    .line 585
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSetupFinished:Z

    .line 586
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 589
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

    .line 590
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 592
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 594
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_1

    .line 595
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensorEventListener:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 597
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 14
    .parameter "canvas"

    .prologue
    .line 526
    iget-boolean v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSetupFinished:Z

    if-nez v11, :cond_0

    .line 527
    const-string v11, "DesktopTransformer"

    const-string v12, "finishDraw() called when setup has not finished."

    invoke-static {v11, v12}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_0
    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mDrawQueue:Ljava/util/LinkedList;

    sget-object v12, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->DRAW_QUEUE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 532
    iget v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mProgress:F

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    invoke-static {v11, v12, v13}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v5

    .line 534
    .local v5, progress:F
    new-instance v6, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mDrawQueue:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 535
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

    .line 536
    .local v10, transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    iget-object v11, v10, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->start:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget v8, v11, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->alpha:I

    .line 537
    .local v8, startAlpha:I
    iget-object v11, v10, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget v9, v11, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->alpha:I

    .line 538
    .local v9, targetAlpha:I
    int-to-float v11, v8

    sub-int v12, v9, v8

    int-to-float v12, v12

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    float-to-int v0, v11

    .line 539
    .local v0, alpha:I
    if-lez v0, :cond_1

    .line 541
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 543
    .local v1, drawRect:Landroid/graphics/Rect;
    invoke-direct {p0, v10, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->calculateDrawRect(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;Landroid/graphics/Rect;)V

    .line 545
    const/4 v4, 0x0

    .line 546
    .local v4, intersectsPreviousRect:Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 547
    .local v7, rectsSize:I
    const/4 v2, 0x0

    .end local v8           #startAlpha:I
    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_2

    .line 548
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    invoke-static {v1, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 549
    const/4 v4, 0x1

    .line 554
    :cond_2
    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 555
    if-eqz v4, :cond_4

    .line 556
    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mPaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 561
    :goto_2
    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mBitmapsToDraw:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #alpha:I
    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11, v1, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 563
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 547
    .restart local v0       #alpha:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 558
    :cond_4
    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mPaint:Landroid/graphics/Paint;

    iget-object v12, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_2

    .line 568
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

    .line 569
    .restart local v7       #rectsSize:I
    const/4 v2, 0x0

    .end local p1
    .restart local v2       #i:I
    :goto_3
    if-ge v2, v7, :cond_6

    .line 570
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 569
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 573
    :cond_6
    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mDrawQueue:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->clear()V

    .line 574
    iget-object v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mBitmapsToDraw:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->clear()V

    .line 577
    iget v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformCacheInvalidationCounter:I

    add-int/lit8 v11, v11, 0x1

    rem-int/lit8 v11, v11, 0x64

    iput v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformCacheInvalidationCounter:I

    .line 580
    iget-boolean v11, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mRunning:Z

    return v11
.end method

.method public finishSetup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 426
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mHeight:I

    if-lez v0, :cond_0

    .line 427
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->fillAlg()V

    .line 428
    iput-boolean v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSetupFinished:Z

    .line 431
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTimeOfLastUpdate:J

    .line 432
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mRunning:Z

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensorEventListener:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 438
    :cond_1
    return-void
.end method

.method public getDrawRect(Ljava/lang/Object;Landroid/graphics/Rect;)Z
    .locals 6
    .parameter "item"
    .parameter "outRect"

    .prologue
    const/4 v5, 0x0

    .line 452
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSetupFinished:Z

    if-nez v3, :cond_0

    .line 453
    const-string v3, "DesktopTransformer"

    const-string v4, "getDrawRect() called when setup has not finished."

    invoke-static {v3, v4}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    .line 465
    :goto_0
    return v3

    .line 458
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-object v1, v0

    .line 459
    .local v1, info:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .line 460
    .local v2, transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    if-eqz v2, :cond_1

    .line 461
    invoke-direct {p0, v2, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->calculateDrawRect(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;Landroid/graphics/Rect;)V

    .line 462
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    .line 465
    goto :goto_0
.end method

.method public getItemAt(II)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 341
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

    .line 342
    .local v1, mapping:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/sonyericsson/home/layer/desktop/DesktopItem;Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .line 343
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

    .line 344
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-object v3, p0

    .line 348
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
    .line 657
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-object v1, v0

    .line 658
    .local v1, info:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .line 663
    .local v3, transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    iget-boolean v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->enabled:Z

    if-eqz v4, :cond_0

    .line 664
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v2, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    .line 669
    .local v2, rect:Landroid/graphics/RectF;
    :goto_0
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    return v4

    .line 666
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
    .line 633
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-object v1, v0

    .line 634
    .local v1, info:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .line 639
    .local v3, transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    iget-boolean v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->enabled:Z

    if-eqz v4, :cond_0

    .line 640
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v2, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    .line 645
    .local v2, rect:Landroid/graphics/RectF;
    :goto_0
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    return v4

    .line 642
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
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public isSetupFinished()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSetupFinished:Z

    return v0
.end method

.method public offsetSourceRects(I)V
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v4, 0x0

    .line 357
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

    .line 358
    .local v1, transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    iget-object v2, v1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->start:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    int-to-float v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 359
    iget-boolean v2, v1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->enabled:Z

    if-nez v2, :cond_0

    .line 360
    iget-object v2, v1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    int-to-float v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 363
    .end local v1           #transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mRunning:Z

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensorEventListener:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 304
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mRunning:Z

    .line 306
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 312
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mRunning:Z

    if-nez v0, :cond_1

    .line 313
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSetupFinished:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTimeOfLastUpdate:J

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensorEventListener:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$AccelerometerListener;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 320
    :cond_0
    iput-boolean v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mRunning:Z

    .line 322
    :cond_1
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 330
    iput p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mProgress:F

    .line 331
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

    .line 381
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-object v1, v0

    .line 385
    .local v1, info:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    new-instance v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    invoke-direct {v3, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$1;)V

    .line 386
    .local v3, transformation:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
    new-instance v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    invoke-direct {v4, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$1;)V

    iput-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->start:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    .line 387
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 388
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 389
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->start:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    .line 390
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->start:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 391
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->start:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iput v9, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->alpha:I

    .line 393
    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v4

    instance-of v4, v4, Lcom/sonyericsson/home/data/WidgetInfo;

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v4

    instance-of v4, v4, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v4, :cond_1

    .line 396
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->enabled:Z

    .line 397
    iget v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mNbrOfEnabledTransformations:I

    iput v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->zOrder:I

    .line 398
    new-instance v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    invoke-direct {v4, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$1;)V

    iput-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    .line 399
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    .line 401
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 402
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iput v9, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->alpha:I

    .line 403
    iget v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mNbrOfEnabledTransformations:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mNbrOfEnabledTransformations:I

    .line 418
    :goto_0
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 421
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTransformations:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    return-void

    .line 407
    :cond_1
    iput-boolean v8, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->enabled:Z

    .line 408
    const/high16 v4, -0x8000

    iput v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->zOrder:I

    .line 409
    new-instance v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    invoke-direct {v4, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$1;)V

    iput-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    .line 410
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    .line 411
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 414
    iget-object v4, v3, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

    iput v8, v4, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;->alpha:I

    .line 415
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
    .locals 8

    .prologue
    .line 470
    iget-boolean v6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mSetupFinished:Z

    if-nez v6, :cond_1

    .line 471
    const-string v6, "DesktopTransformer"

    const-string v7, "update() called when setup has not finished."

    invoke-static {v6, v7}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_0
    return-void

    .line 477
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 478
    .local v2, now:J
    iget-wide v6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTimeOfLastUpdate:J

    sub-long v0, v2, v6

    .line 479
    .local v0, dt:J
    iput-wide v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->mTimeOfLastUpdate:J

    .line 481
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 482
    const-wide/16 v6, 0x14

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 483
    .local v4, step:J
    sub-long/2addr v0, v4

    .line 484
    long-to-float v6, v4

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->updateStep(F)V

    goto :goto_0
.end method
