.class public Lcom/sonyericsson/grid/Grid;
.super Ljava/lang/Object;
.source "Grid.java"


# instance fields
.field private final mCellHeight:I

.field private final mCellWidth:I

.field private mGridSize:Lcom/sonyericsson/grid/GridSize;


# direct methods
.method public constructor <init>(IILcom/sonyericsson/grid/GridSize;)V
    .locals 0
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "gridSize"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/sonyericsson/grid/Grid;->mCellWidth:I

    .line 46
    iput p2, p0, Lcom/sonyericsson/grid/Grid;->mCellHeight:I

    .line 47
    iput-object p3, p0, Lcom/sonyericsson/grid/Grid;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    .line 48
    return-void
.end method


# virtual methods
.method public calculateGridLocation(IILcom/sonyericsson/grid/GridLocation;)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "outLocation"

    .prologue
    .line 117
    iget v0, p0, Lcom/sonyericsson/grid/Grid;->mCellWidth:I

    div-int v0, p1, v0

    iput v0, p3, Lcom/sonyericsson/grid/GridLocation;->col:I

    .line 118
    iget v0, p0, Lcom/sonyericsson/grid/Grid;->mCellHeight:I

    div-int v0, p2, v0

    iput v0, p3, Lcom/sonyericsson/grid/GridLocation;->row:I

    .line 119
    return-void
.end method

.method public calculateGridRect(Landroid/graphics/Rect;Lcom/sonyericsson/grid/GridRect;)Z
    .locals 7
    .parameter "rect"
    .parameter "outGridRect"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 131
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 132
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 135
    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sonyericsson/grid/Grid;->getColSpan(I)I

    move-result v0

    .line 136
    .local v0, colSpan:I
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sonyericsson/grid/Grid;->getRowSpan(I)I

    move-result v1

    .line 138
    .local v1, rowSpan:I
    iget-object v2, p0, Lcom/sonyericsson/grid/Grid;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v2, v2, Lcom/sonyericsson/grid/GridSize;->cols:I

    if-gt v0, v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/grid/Grid;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v2, v2, Lcom/sonyericsson/grid/GridSize;->rows:I

    if-le v1, v2, :cond_3

    :cond_2
    move v2, v5

    .line 161
    :goto_0
    return v2

    .line 142
    :cond_3
    iput v0, p2, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    .line 143
    iput v1, p2, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    .line 144
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/grid/Grid;->mCellWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    iget v3, p2, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p2, Lcom/sonyericsson/grid/GridRect;->col:I

    .line 145
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/grid/Grid;->mCellHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    iget v3, p2, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p2, Lcom/sonyericsson/grid/GridRect;->row:I

    .line 148
    iget v2, p2, Lcom/sonyericsson/grid/GridRect;->col:I

    if-gez v2, :cond_6

    .line 149
    iput v5, p2, Lcom/sonyericsson/grid/GridRect;->col:I

    .line 155
    :cond_4
    :goto_1
    iget v2, p2, Lcom/sonyericsson/grid/GridRect;->row:I

    if-gez v2, :cond_7

    .line 156
    iput v5, p2, Lcom/sonyericsson/grid/GridRect;->row:I

    .line 161
    :cond_5
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 150
    :cond_6
    iget v2, p2, Lcom/sonyericsson/grid/GridRect;->col:I

    iget v3, p2, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/grid/Grid;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v3, v3, Lcom/sonyericsson/grid/GridSize;->cols:I

    if-le v2, v3, :cond_4

    .line 151
    iget v2, p2, Lcom/sonyericsson/grid/GridRect;->col:I

    iget v3, p2, Lcom/sonyericsson/grid/GridRect;->col:I

    iget v4, p2, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/grid/Grid;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v4, v4, Lcom/sonyericsson/grid/GridSize;->cols:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p2, Lcom/sonyericsson/grid/GridRect;->col:I

    goto :goto_1

    .line 157
    :cond_7
    iget v2, p2, Lcom/sonyericsson/grid/GridRect;->row:I

    iget v3, p2, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/grid/Grid;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v3, v3, Lcom/sonyericsson/grid/GridSize;->rows:I

    if-le v2, v3, :cond_5

    .line 158
    iget v2, p2, Lcom/sonyericsson/grid/GridRect;->row:I

    iget v3, p2, Lcom/sonyericsson/grid/GridRect;->row:I

    iget v4, p2, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/grid/Grid;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v4, v4, Lcom/sonyericsson/grid/GridSize;->rows:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p2, Lcom/sonyericsson/grid/GridRect;->row:I

    goto :goto_2
.end method

.method public calculateRect(Lcom/sonyericsson/grid/GridRect;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "gridRect"
    .parameter "outRect"

    .prologue
    .line 171
    iget v0, p1, Lcom/sonyericsson/grid/GridRect;->col:I

    iget v1, p0, Lcom/sonyericsson/grid/Grid;->mCellWidth:I

    mul-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 172
    iget v0, p1, Lcom/sonyericsson/grid/GridRect;->row:I

    iget v1, p0, Lcom/sonyericsson/grid/Grid;->mCellHeight:I

    mul-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 173
    iget v0, p1, Lcom/sonyericsson/grid/GridRect;->col:I

    iget v1, p1, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/grid/Grid;->mCellWidth:I

    mul-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 174
    iget v0, p1, Lcom/sonyericsson/grid/GridRect;->row:I

    iget v1, p1, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/grid/Grid;->mCellHeight:I

    mul-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 175
    return-void
.end method

.method public centerGridRect(IILcom/sonyericsson/grid/GridRect;)V
    .locals 7
    .parameter "centerX"
    .parameter "centerY"
    .parameter "gridRect"

    .prologue
    .line 186
    iget v5, p3, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    iget v6, p0, Lcom/sonyericsson/grid/Grid;->mCellWidth:I

    mul-int v4, v5, v6

    .line 187
    .local v4, width:I
    iget v5, p3, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    iget v6, p0, Lcom/sonyericsson/grid/Grid;->mCellHeight:I

    mul-int v0, v5, v6

    .line 188
    .local v0, height:I
    div-int/lit8 v5, v4, 0x2

    sub-int v1, p1, v5

    .line 189
    .local v1, left:I
    div-int/lit8 v5, v0, 0x2

    sub-int v3, p2, v5

    .line 190
    .local v3, top:I
    new-instance v2, Landroid/graphics/Rect;

    add-int v5, v1, v4

    add-int v6, v3, v0

    invoke-direct {v2, v1, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 191
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v2, p3}, Lcom/sonyericsson/grid/Grid;->calculateGridRect(Landroid/graphics/Rect;Lcom/sonyericsson/grid/GridRect;)Z

    .line 192
    return-void
.end method

.method public getColSpan(I)I
    .locals 2
    .parameter "width"

    .prologue
    .line 94
    const/4 v0, 0x1

    sub-int v0, p1, v0

    iget v1, p0, Lcom/sonyericsson/grid/Grid;->mCellWidth:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCols()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/grid/Grid;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->cols:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/sonyericsson/grid/Grid;->mCellHeight:I

    return v0
.end method

.method public getRowSpan(I)I
    .locals 2
    .parameter "height"

    .prologue
    .line 106
    const/4 v0, 0x1

    sub-int v0, p1, v0

    iget v1, p0, Lcom/sonyericsson/grid/Grid;->mCellHeight:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/grid/Grid;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/sonyericsson/grid/Grid;->mCellWidth:I

    return v0
.end method
