.class public Lcom/sonyericsson/graphics/mesh/MeshUtils;
.super Ljava/lang/Object;
.source "MeshUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createConstraintListForMesh(Lcom/sonyericsson/graphics/mesh/Mesh;F)Ljava/util/List;
    .locals 10
    .parameter "mesh"
    .parameter "springStiffness"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/graphics/mesh/Mesh;",
            "F)",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/graphics/mesh/Constraint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v1, constraintList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/graphics/mesh/Constraint;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/graphics/mesh/Mesh;->getWidth()I

    move-result v5

    .line 42
    .local v5, meshWidth:I
    invoke-virtual {p0}, Lcom/sonyericsson/graphics/mesh/Mesh;->getHeight()I

    move-result v4

    .line 43
    .local v4, meshHeight:I
    invoke-virtual {p0}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v6

    .line 45
    .local v6, vertexList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/graphics/mesh/Vertex;>;"
    const/4 v3, 0x0

    .end local p0
    .local v3, j:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 46
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sub-int v7, v5, v9

    if-ge v2, v7, :cond_0

    .line 47
    new-instance v0, Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;

    invoke-direct {v0}, Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;-><init>()V

    .line 48
    .local v0, constraint:Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;
    mul-int v7, v3, v5

    add-int/2addr v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/graphics/mesh/Vertex;

    iput-object p0, v0, Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;->mVertexA:Lcom/sonyericsson/graphics/mesh/Vertex;

    .line 49
    add-int/lit8 v7, v2, 0x1

    mul-int v8, v3, v5

    add-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/graphics/mesh/Vertex;

    iput-object p0, v0, Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;->mVertexB:Lcom/sonyericsson/graphics/mesh/Vertex;

    .line 50
    iput p1, v0, Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;->K:F

    .line 51
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 45
    .end local v0           #constraint:Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    .end local v2           #i:I
    :cond_1
    const/4 v3, 0x0

    :goto_2
    sub-int v7, v4, v9

    if-ge v3, v7, :cond_3

    .line 56
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v5, :cond_2

    .line 57
    new-instance v0, Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;

    invoke-direct {v0}, Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;-><init>()V

    .line 58
    .restart local v0       #constraint:Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;
    mul-int v7, v3, v5

    add-int/2addr v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/graphics/mesh/Vertex;

    iput-object p0, v0, Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;->mVertexA:Lcom/sonyericsson/graphics/mesh/Vertex;

    .line 59
    add-int/lit8 v7, v3, 0x1

    mul-int/2addr v7, v5

    add-int/2addr v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/graphics/mesh/Vertex;

    iput-object p0, v0, Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;->mVertexB:Lcom/sonyericsson/graphics/mesh/Vertex;

    .line 60
    iput p1, v0, Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;->K:F

    .line 61
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 55
    .end local v0           #constraint:Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 65
    .end local v2           #i:I
    :cond_3
    return-object v1
.end method

.method static findClosestVertex(FFLjava/util/List;)Lcom/sonyericsson/graphics/mesh/Vertex;
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/graphics/mesh/Vertex;",
            ">;)",
            "Lcom/sonyericsson/graphics/mesh/Vertex;"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, vertexList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/graphics/mesh/Vertex;>;"
    const v5, 0x7f7fffff

    .line 23
    .local v5, minDist2:F
    const/4 v0, 0x0

    .line 25
    .local v0, closestVertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/graphics/mesh/Vertex;

    .line 26
    .local v6, vertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    iget v7, v6, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    sub-float v2, v7, p0

    .line 27
    .local v2, dx:F
    iget v7, v6, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    sub-float v3, v7, p1

    .line 28
    .local v3, dy:F
    mul-float v7, v2, v2

    mul-float v8, v3, v3

    add-float v1, v7, v8

    .line 29
    .local v1, dist2:F
    cmpg-float v7, v1, v5

    if-gez v7, :cond_0

    .line 30
    move v5, v1

    .line 31
    move-object v0, v6

    goto :goto_0

    .line 35
    .end local v1           #dist2:F
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v6           #vertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    :cond_1
    return-object v0
.end method

.method static setupAbsoluteConstraintsForMeshRect(Ljava/util/List;IIFF)V
    .locals 10
    .parameter
    .parameter "meshWidth"
    .parameter "meshHeight"
    .parameter "rectWidth"
    .parameter "rectHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/graphics/mesh/Constraint;",
            ">;IIFF)V"
        }
    .end annotation

    .prologue
    .local p0, constraints:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/graphics/mesh/Constraint;>;"
    const/4 v9, 0x1

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    .line 88
    int-to-float v6, p1

    sub-float/2addr v6, v8

    div-float v1, p3, v6

    .line 89
    .local v1, dx:F
    int-to-float v6, p2

    sub-float/2addr v6, v8

    div-float v2, p4, v6

    .line 91
    .local v2, dy:F
    const/4 v4, 0x0

    .line 93
    .local v4, index:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    if-ge v5, p2, :cond_1

    .line 94
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    sub-int v6, p1, v9

    if-ge v3, v6, :cond_0

    .line 95
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;

    .line 96
    .local v0, constraint:Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;
    iput v1, v0, Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;->dx:F

    .line 97
    iput v7, v0, Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;->dy:F

    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 93
    .end local v0           #constraint:Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 102
    .end local v3           #i:I
    :cond_1
    const/4 v5, 0x0

    :goto_2
    sub-int v6, p2, v9

    if-ge v5, v6, :cond_3

    .line 103
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, p1, :cond_2

    .line 104
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;

    .line 105
    .restart local v0       #constraint:Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;
    iput v7, v0, Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;->dx:F

    .line 106
    iput v2, v0, Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;->dy:F

    .line 107
    add-int/lit8 v4, v4, 0x1

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 102
    .end local v0           #constraint:Lcom/sonyericsson/graphics/mesh/AbsoluteConstraint;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 110
    .end local v3           #i:I
    :cond_3
    return-void
.end method

.method public static setupMeshAsRect(Lcom/sonyericsson/graphics/mesh/Mesh;FFFF)V
    .locals 6
    .parameter "mesh"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/graphics/mesh/Mesh;->getWidth()I

    move-result v2

    .line 70
    .local v2, meshWidth:I
    invoke-virtual {p0}, Lcom/sonyericsson/graphics/mesh/Mesh;->getHeight()I

    move-result v1

    .line 71
    .local v1, meshHeight:I
    invoke-virtual {p0}, Lcom/sonyericsson/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v4

    .line 72
    .local v4, vertexList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/graphics/mesh/Vertex;>;"
    sub-float p0, p3, p1

    int-to-float p3, v2

    const/high16 v0, 0x3f80

    sub-float/2addr p3, v0

    div-float/2addr p0, p3

    .line 73
    .local p0, dx:F
    sub-float p3, p4, p2

    int-to-float p4, v1

    const/high16 v0, 0x3f80

    sub-float/2addr p4, v0

    div-float/2addr p3, p4

    .line 75
    .local p3, dy:F
    const/4 p4, 0x0

    .local p4, j:I
    move v0, p4

    .end local p4           #j:I
    .local v0, j:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 76
    const/4 p4, 0x0

    .local p4, i:I
    :goto_1
    if-ge p4, v2, :cond_0

    .line 77
    mul-int v3, v0, v2

    add-int/2addr v3, p4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/graphics/mesh/Vertex;

    .line 78
    .local v3, vertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    int-to-float v5, p4

    mul-float/2addr v5, p0

    add-float/2addr v5, p1

    iput v5, v3, Lcom/sonyericsson/graphics/mesh/Vertex;->x:F

    .line 79
    int-to-float v5, v0

    mul-float/2addr v5, p3

    add-float/2addr v5, p2

    iput v5, v3, Lcom/sonyericsson/graphics/mesh/Vertex;->y:F

    .line 80
    const/4 v5, 0x0

    iput v5, v3, Lcom/sonyericsson/graphics/mesh/Vertex;->vx:F

    .line 81
    const/4 v5, 0x0

    iput v5, v3, Lcom/sonyericsson/graphics/mesh/Vertex;->vy:F

    .line 76
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 75
    .end local v3           #vertex:Lcom/sonyericsson/graphics/mesh/Vertex;
    :cond_0
    add-int/lit8 p4, v0, 0x1

    .end local v0           #j:I
    .local p4, j:I
    move v0, p4

    .end local p4           #j:I
    .restart local v0       #j:I
    goto :goto_0

    .line 84
    :cond_1
    return-void
.end method
