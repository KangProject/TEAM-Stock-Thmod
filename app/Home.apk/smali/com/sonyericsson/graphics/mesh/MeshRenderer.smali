.class public Lcom/sonyericsson/graphics/mesh/MeshRenderer;
.super Ljava/lang/Object;
.source "MeshRenderer.java"

# interfaces
.implements Lcom/sonyericsson/animation/Renderer;
.implements Lcom/sonyericsson/util/Recyclable;


# instance fields
.field private final mAlpha:Lcom/sonyericsson/util/SpringDynamics;

.field private mAnimTime:J

.field private mBadgeIcon:Landroid/graphics/Bitmap;

.field private mBadgeOffsetX:I

.field private mBadgeOffsetY:I

.field private mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

.field private mClosestVertexIndex:I

.field private final mConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/graphics/mesh/Constraint;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRect:Landroid/graphics/Rect;

.field private final mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

.field private final mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

.field private final mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

.field private final mMeshVertexArray:[F

.field private final mPaintBitmapMesh:Landroid/graphics/Paint;

.field private final mPhysicsBox:Lcom/sonyericsson/graphics/mesh/PhysicsBox;

.field private mScaleFactor:F

.field private mStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v5, 0x43c8

    const v4, 0x3f666666

    const/4 v1, 0x2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mPaintBitmapMesh:Landroid/graphics/Paint;

    .line 87
    new-instance v0, Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-direct {v0, v1, v1}, Lcom/sonyericsson/graphics/mesh/Mesh;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v0}, Lcom/sonyericsson/graphics/mesh/Mesh;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v1}, Lcom/sonyericsson/graphics/mesh/Mesh;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMeshVertexArray:[F

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    const v1, 0x443b8000

    invoke-static {v0, v1}, Lcom/sonyericsson/graphics/mesh/MeshUtils;->createConstraintListForMesh(Lcom/sonyericsson/graphics/mesh/Mesh;F)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mConstraints:Ljava/util/List;

    .line 92
    new-instance v0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;

    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v1}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mConstraints:Ljava/util/List;

    const/high16 v3, 0x4170

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/graphics/mesh/PhysicsBox;-><init>(Ljava/util/List;Ljava/util/List;F)V

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mPhysicsBox:Lcom/sonyericsson/graphics/mesh/PhysicsBox;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v1, 0x42c8

    const/high16 v2, 0x3f40

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 101
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    .line 102
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v5, v4}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v5, v4}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 106
    return-void
.end method

.method private moveTo(Landroid/graphics/Rect;)V
    .locals 9
    .parameter "rect"

    .prologue
    .line 271
    iget v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 274
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v5}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sonyericsson/graphics/mesh/MeshUtils;->findClosestVertex(FFLjava/util/List;)Lcom/sonyericsson/graphics/mesh/Vertex;

    move-result-object v0

    .line 276
    .local v0, closestVertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v3}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    .line 277
    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v3}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/graphics/mesh/Vertex;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sonyericsson/graphics/mesh/Vertex;->movable:Z

    .line 280
    .end local v0           #closestVertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v3}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/graphics/mesh/Vertex;

    .line 283
    .restart local v0       #closestVertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    iget v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    packed-switch v3, :pswitch_data_0

    .line 305
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 306
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v1, v3, v4

    .line 307
    .local v1, diffX:I
    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v2, v3, v4

    .line 308
    .local v2, diffY:I
    iget v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 309
    iget v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    int-to-float v4, v1

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    .line 311
    :cond_2
    iget v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 312
    iget v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    .line 316
    .end local v1           #diffX:I
    .end local v2           #diffY:I
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mConstraints:Ljava/util/List;

    iget-object v4, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v4}, Lcom/sonyericsson/graphics/mesh/Mesh;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v5}, Lcom/sonyericsson/graphics/mesh/Mesh;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mScaleFactor:F

    mul-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mScaleFactor:F

    mul-float/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sonyericsson/graphics/mesh/MeshUtils;->setupAbsoluteConstraintsForMeshRect(Ljava/util/List;IIFF)V

    .line 319
    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 320
    return-void

    .line 285
    :pswitch_0
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    .line 286
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    goto :goto_0

    .line 290
    :pswitch_1
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    .line 291
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    goto/16 :goto_0

    .line 295
    :pswitch_2
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    .line 296
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    goto/16 :goto_0

    .line 300
    :pswitch_3
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    .line 301
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    goto/16 :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z
    .locals 21
    .parameter "view"
    .parameter "canvas"
    .parameter "rect"
    .parameter "now"

    .prologue
    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    move-object v5, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    move-object v5, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    move-object v5, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    move-object v5, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 193
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v16, v5, v6

    .line 194
    .local v16, dx:I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v17, v5, v6

    .line 197
    .local v17, dy:I
    const/16 v5, 0x64

    move/from16 v0, v16

    move v1, v5

    if-gt v0, v1, :cond_0

    const/16 v5, -0x64

    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_0

    const/16 v5, 0x64

    move/from16 v0, v17

    move v1, v5

    if-gt v0, v1, :cond_0

    const/16 v5, -0x64

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_6

    .line 199
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    move-object v5, v0

    const/16 v6, 0x3e8

    sub-int v6, v6, v16

    const/16 v7, 0x32

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f666666

    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    move-object v5, v0

    const/16 v6, 0x3e8

    sub-int v6, v6, v17

    const/16 v7, 0x32

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f666666

    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 201
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v20

    .line 202
    .local v20, tempRect:Landroid/graphics/Rect;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, v20

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->moveTo(Landroid/graphics/Rect;)V

    .line 205
    invoke-static/range {v20 .. v20}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 210
    .end local v20           #tempRect:Landroid/graphics/Rect;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mPhysicsBox:Lcom/sonyericsson/graphics/mesh/PhysicsBox;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAnimTime:J

    move-wide v7, v0

    sub-long v7, p4, v7

    long-to-float v6, v7

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->update(F)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    move-object v5, v0

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f00

    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_1
    const/4 v5, 0x1

    move/from16 v18, v5

    .line 212
    .local v18, isAnimating:Z
    :goto_1
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAnimTime:J

    .line 215
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/util/ViewSnapshot;->getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 216
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mPaintBitmapMesh:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x0

    const/16 v9, 0xff

    invoke-static {v7, v8, v9}, Lcom/sonyericsson/util/MathUtil;->clamp(III)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sonyericsson/graphics/mesh/Mesh;->getWidth()I

    move-result v5

    const/4 v7, 0x1

    sub-int v7, v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sonyericsson/graphics/mesh/Mesh;->getHeight()I

    move-result v5

    const/4 v8, 0x1

    sub-int v8, v5, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMeshVertexArray:[F

    move-object v9, v0

    invoke-virtual {v5, v9}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexArray([F)[F

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mPaintBitmapMesh:Landroid/graphics/Paint;

    move-object v13, v0

    move-object/from16 v5, p2

    invoke-virtual/range {v5 .. v13}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_5

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v5, v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-eq v5, v7, :cond_4

    .line 228
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_3

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 230
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    .line 233
    :cond_3
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    .line 235
    new-instance v19, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 236
    .local v19, offscreenCanvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeOffsetX:I

    move v8, v0

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeOffsetY:I

    move v7, v0

    int-to-float v7, v7

    const/4 v8, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 241
    .end local v19           #offscreenCanvas:Landroid/graphics/Canvas;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sonyericsson/graphics/mesh/Mesh;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int v9, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sonyericsson/graphics/mesh/Mesh;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    sub-int v10, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMeshVertexArray:[F

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mPaintBitmapMesh:Landroid/graphics/Paint;

    move-object v15, v0

    move-object/from16 v7, p2

    invoke-virtual/range {v7 .. v15}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 248
    :cond_5
    return v18

    .line 207
    .end local v18           #isAnimating:Z
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->moveTo(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 210
    :cond_7
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_1
.end method

.method public getCurrentRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "outRect"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 180
    return-void
.end method

.method public offset(IIJ)V
    .locals 7
    .parameter "dx"
    .parameter "dy"
    .parameter "now"

    .prologue
    .line 252
    iget-object v4, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v4}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v2

    .line 253
    .local v2, vertexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/graphics/mesh/Vertex;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 254
    .local v3, vertexListSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 255
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/graphics/mesh/Vertex;

    .line 256
    .local v1, vertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    iget v4, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    int-to-float v5, p1

    add-float/2addr v4, v5

    iput v4, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    .line 257
    iget v4, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    int-to-float v5, p2

    add-float/2addr v4, v5

    iput v4, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v1           #vertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 261
    iget-object v4, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v5, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v5}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v5

    int-to-float v6, p1

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v6}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v6

    invoke-virtual {v4, v5, v6, p3, p4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 262
    iget-object v4, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v5, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v5}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v5

    int-to-float v6, p2

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v6}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v6

    invoke-virtual {v4, v5, v6, p3, p4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 263
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    .line 327
    :cond_0
    return-void
.end method

.method public sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 6
    .parameter "command"
    .parameter "x"
    .parameter "y"
    .parameter "extras"

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x437f

    const/high16 v2, 0x4340

    const-string v5, "badge"

    .line 144
    const-string v1, "COMMAND_PICKUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    const v1, 0x3f99999a

    iput v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mScaleFactor:F

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 147
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 148
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v2, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string v1, "COMMAND_DROP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mScaleFactor:F

    .line 151
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 152
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 153
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v2, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    goto :goto_0

    .line 154
    :cond_2
    const-string v1, "delete_action_on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mPaintBitmapMesh:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/high16 v3, -0x1

    const v4, -0xbbbbbc

    invoke-direct {v2, v3, v4}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 156
    :cond_3
    const-string v1, "delete_action_off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mPaintBitmapMesh:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 158
    :cond_4
    const-string v1, "set_alpha"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 159
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    int-to-float v2, p2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 160
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    int-to-float v2, p2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 161
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v2, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    goto :goto_0

    .line 162
    :cond_5
    const-string v1, "set_scale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 163
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mScaleFactor:F

    goto/16 :goto_0

    .line 164
    :cond_6
    const-string v1, "reset_closest_vertex"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 165
    iget v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    if-eq v1, v4, :cond_0

    .line 166
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v1}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/graphics/mesh/Vertex;

    .line 167
    .local v0, closestVertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->movable:Z

    .line 168
    iput v4, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    goto/16 :goto_0

    .line 170
    .end local v0           #closestVertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    :cond_7
    const-string v1, "badge"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    .line 171
    const-string v1, "badge"

    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    .line 172
    iput p2, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeOffsetX:I

    .line 173
    iput p3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mBadgeOffsetY:I

    goto/16 :goto_0
.end method

.method public start(Landroid/graphics/Rect;IIJ)V
    .locals 6
    .parameter "rect"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "now"

    .prologue
    const/high16 v5, 0x437f

    const/4 v4, 0x0

    .line 110
    iget-boolean v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mStarted:Z

    if-eqz v1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 114
    :cond_0
    iput-wide p4, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAnimTime:J

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 118
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mScaleFactor:F

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v5}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 120
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v5}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 121
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v5, v4, v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 123
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4, p4, p5}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 124
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4, p4, p5}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 127
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sonyericsson/graphics/mesh/MeshUtils;->setupMeshAsRect(Lcom/sonyericsson/graphics/mesh/Mesh;FFFF)V

    .line 128
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mConstraints:Ljava/util/List;

    iget-object v2, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v2}, Lcom/sonyericsson/graphics/mesh/Mesh;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v3}, Lcom/sonyericsson/graphics/mesh/Mesh;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sonyericsson/graphics/mesh/MeshUtils;->setupAbsoluteConstraintsForMeshRect(Ljava/util/List;IIFF)V

    .line 131
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v3}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/graphics/mesh/MeshUtils;->findClosestVertex(FFLjava/util/List;)Lcom/sonyericsson/graphics/mesh/Vertex;

    move-result-object v0

    .line 133
    .local v0, closestVertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    if-eqz v0, :cond_1

    .line 134
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v1}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->movable:Z

    .line 140
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mStarted:Z

    goto/16 :goto_0

    .line 137
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    goto :goto_1
.end method
