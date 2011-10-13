.class public Lcom/sonyericsson/graphics/mesh/MeshRenderer;
.super Ljava/lang/Object;
.source "MeshRenderer.java"

# interfaces
.implements Lcom/sonyericsson/animation/Renderer;


# instance fields
.field private final mAlpha:Lcom/sonyericsson/util/SpringDynamics;

.field private mAnimTime:J

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

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mPaintBitmapMesh:Landroid/graphics/Paint;

    .line 74
    new-instance v0, Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-direct {v0, v1, v1}, Lcom/sonyericsson/graphics/mesh/Mesh;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    .line 75
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

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    const v1, 0x443b8000

    invoke-static {v0, v1}, Lcom/sonyericsson/graphics/mesh/MeshUtils;->createConstraintListForMesh(Lcom/sonyericsson/graphics/mesh/Mesh;F)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mConstraints:Ljava/util/List;

    .line 79
    new-instance v0, Lcom/sonyericsson/graphics/mesh/PhysicsBox;

    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v1}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mConstraints:Ljava/util/List;

    const/high16 v3, 0x4170

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/graphics/mesh/PhysicsBox;-><init>(Ljava/util/List;Ljava/util/List;F)V

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mPhysicsBox:Lcom/sonyericsson/graphics/mesh/PhysicsBox;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v1, 0x42c8

    const/high16 v2, 0x3f40

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 88
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    .line 89
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v5, v4}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v5, v4}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 93
    return-void
.end method

.method private moveTo(Landroid/graphics/Rect;)V
    .locals 9
    .parameter "rect"

    .prologue
    .line 229
    iget v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v5}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sonyericsson/graphics/mesh/MeshUtils;->findClosestVertex(FFLjava/util/List;)Lcom/sonyericsson/graphics/mesh/Vertex;

    move-result-object v0

    .line 234
    .local v0, closestVertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v3}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    .line 235
    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v3}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/graphics/mesh/Vertex;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sonyericsson/graphics/mesh/Vertex;->movable:Z

    .line 238
    .end local v0           #closestVertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v3}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/graphics/mesh/Vertex;

    .line 241
    .restart local v0       #closestVertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    iget v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    packed-switch v3, :pswitch_data_0

    .line 263
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

    .line 264
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v1, v3, v4

    .line 265
    .local v1, diffX:I
    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v2, v3, v4

    .line 266
    .local v2, diffY:I
    iget v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 267
    iget v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    int-to-float v4, v1

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    .line 269
    :cond_2
    iget v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 270
    iget v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    .line 274
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

    .line 277
    iget-object v3, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 278
    return-void

    .line 243
    :pswitch_0
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    .line 244
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    goto :goto_0

    .line 248
    :pswitch_1
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    .line 249
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    goto/16 :goto_0

    .line 253
    :pswitch_2
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    .line 254
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    goto/16 :goto_0

    .line 258
    :pswitch_3
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    .line 259
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    goto/16 :goto_0

    .line 241
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
    .locals 16
    .parameter "view"
    .parameter "canvas"
    .parameter "rect"
    .parameter "now"

    .prologue
    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    move-object v3, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    move-object v3, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    move-object v3, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    move-object v3, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 176
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v12, v3, v4

    .line 177
    .local v12, dx:I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v13, v3, v4

    .line 180
    .local v13, dy:I
    const/16 v3, 0x64

    if-gt v12, v3, :cond_0

    const/16 v3, -0x64

    if-lt v12, v3, :cond_0

    const/16 v3, 0x64

    if-gt v13, v3, :cond_0

    const/16 v3, -0x64

    if-ge v13, v3, :cond_3

    .line 182
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    move-object v3, v0

    const/16 v4, 0x3e8

    sub-int/2addr v4, v12

    const/16 v5, 0x32

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f666666

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    move-object v3, v0

    const/16 v4, 0x3e8

    sub-int/2addr v4, v13

    const/16 v5, 0x32

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f666666

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 184
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v15

    .line 185
    .local v15, tempRect:Landroid/graphics/Rect;
    move-object v0, v15

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v15, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 187
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->moveTo(Landroid/graphics/Rect;)V

    .line 188
    invoke-static {v15}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 193
    .end local v15           #tempRect:Landroid/graphics/Rect;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mPhysicsBox:Lcom/sonyericsson/graphics/mesh/PhysicsBox;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAnimTime:J

    move-wide v5, v0

    sub-long v5, p4, v5

    long-to-float v4, v5

    const/high16 v5, 0x447a

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sonyericsson/graphics/mesh/PhysicsBox;->update(F)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    move-object v3, v0

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f00

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    const/4 v3, 0x1

    move v14, v3

    .line 195
    .local v14, isAnimating:Z
    :goto_1
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAnimTime:J

    .line 198
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/util/ViewSnapshot;->getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 199
    .local v4, bitmap:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mPaintBitmapMesh:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    const/16 v7, 0xff

    invoke-static {v5, v6, v7}, Lcom/sonyericsson/util/MathUtil;->clamp(III)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sonyericsson/graphics/mesh/Mesh;->getWidth()I

    move-result v3

    const/4 v5, 0x1

    sub-int v5, v3, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sonyericsson/graphics/mesh/Mesh;->getHeight()I

    move-result v3

    const/4 v6, 0x1

    sub-int v6, v3, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMeshVertexArray:[F

    move-object v7, v0

    invoke-virtual {v3, v7}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexArray([F)[F

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mPaintBitmapMesh:Landroid/graphics/Paint;

    move-object v11, v0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 206
    :cond_2
    return v14

    .line 190
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v14           #isAnimating:Z
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->moveTo(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 193
    :cond_4
    const/4 v3, 0x0

    move v14, v3

    goto :goto_1
.end method

.method public getCurrentRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "outRect"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 163
    return-void
.end method

.method public offset(IIJ)V
    .locals 7
    .parameter "dx"
    .parameter "dy"
    .parameter "now"

    .prologue
    .line 210
    iget-object v4, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v4}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v2

    .line 211
    .local v2, vertexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/graphics/mesh/Vertex;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 212
    .local v3, vertexListSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 213
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/graphics/mesh/Vertex;

    .line 214
    .local v1, vertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    iget v4, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    int-to-float v5, p1

    add-float/2addr v4, v5

    iput v4, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    .line 215
    iget v4, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    int-to-float v5, p2

    add-float/2addr v4, v5

    iput v4, v1, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    .end local v1           #vertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 219
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

    .line 220
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

    .line 221
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

    .line 131
    const-string v1, "COMMAND_PICKUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    const v1, 0x3f99999a

    iput v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mScaleFactor:F

    .line 133
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 134
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 135
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

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string v1, "COMMAND_DROP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mScaleFactor:F

    .line 138
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 139
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 140
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

    .line 141
    :cond_2
    const-string v1, "delete_action_on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mPaintBitmapMesh:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/high16 v3, -0x1

    const v4, -0xbbbbbc

    invoke-direct {v2, v3, v4}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 143
    :cond_3
    const-string v1, "delete_action_off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mPaintBitmapMesh:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 145
    :cond_4
    const-string v1, "set_alpha"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    int-to-float v2, p2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 147
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    int-to-float v2, p2

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

    goto :goto_0

    .line 149
    :cond_5
    const-string v1, "set_scale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 150
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mScaleFactor:F

    goto/16 :goto_0

    .line 151
    :cond_6
    const-string v1, "reset_closest_vertex"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    if-eq v1, v4, :cond_0

    .line 153
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v1}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/graphics/mesh/Vertex;

    .line 154
    .local v0, closestVertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->movable:Z

    .line 155
    iput v4, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

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

    .line 97
    iget-boolean v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mStarted:Z

    if-eqz v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 101
    :cond_0
    iput-wide p4, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAnimTime:J

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 105
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mScaleFactor:F

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v5}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1, v5}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonyericsson/util/SpringDynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v5, v4, v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4, p4, p5}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 111
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4, p4, p5}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 114
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

    .line 115
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

    .line 118
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

    .line 120
    .local v0, closestVertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    if-eqz v0, :cond_1

    .line 121
    iget-object v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonyericsson/graphics/mesh/Mesh;

    invoke-virtual {v1}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonyericsson/graphics/mesh/Vertex;->movable:Z

    .line 127
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mStarted:Z

    goto/16 :goto_0

    .line 124
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    goto :goto_1
.end method
