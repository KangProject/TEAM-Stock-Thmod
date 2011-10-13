.class public Lcom/sonyericsson/home/layer/folder/FolderLocator;
.super Ljava/lang/Object;
.source "FolderLocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/folder/FolderLocator$OnGridChangedListener;
    }
.end annotation


# instance fields
.field private final mCellHeight:I

.field private final mCellWidth:I

.field private final mDoMirror:Z

.field private mGrid:Lcom/sonyericsson/grid/Grid;

.field private mHintManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

.field private mOnGridChangedListener:Lcom/sonyericsson/home/layer/folder/FolderLocator$OnGridChangedListener;

.field private final mTmpGridRect:Lcom/sonyericsson/grid/GridRect;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/layer/folder/FolderModelManager;IIZ)V
    .locals 1
    .parameter "hintManager"
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "doMirror"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/sonyericsson/grid/GridRect;

    invoke-direct {v0}, Lcom/sonyericsson/grid/GridRect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mTmpGridRect:Lcom/sonyericsson/grid/GridRect;

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mHintManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    .line 57
    iput p2, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mCellWidth:I

    .line 58
    iput p3, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mCellHeight:I

    .line 59
    iput-boolean p4, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mDoMirror:Z

    .line 60
    return-void
.end method


# virtual methods
.method public getCellHeight()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mCellWidth:I

    return v0
.end method

.method public getGrid()Lcom/sonyericsson/grid/Grid;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mGrid:Lcom/sonyericsson/grid/Grid;

    return-object v0
.end method

.method public getHintPosition(Landroid/graphics/Rect;)I
    .locals 4
    .parameter "hitRect"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mTmpGridRect:Lcom/sonyericsson/grid/GridRect;

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/grid/Grid;->calculateGridRect(Landroid/graphics/Rect;Lcom/sonyericsson/grid/GridRect;)Z

    .line 124
    iget-boolean v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mDoMirror:Z

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mTmpGridRect:Lcom/sonyericsson/grid/GridRect;

    iget v1, v1, Lcom/sonyericsson/grid/GridRect;->row:I

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v2}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mTmpGridRect:Lcom/sonyericsson/grid/GridRect;

    iget v2, v2, Lcom/sonyericsson/grid/GridRect;->col:I

    add-int v0, v1, v2

    .line 131
    .local v0, hintPosition:I
    :goto_0
    return v0

    .line 127
    .end local v0           #hintPosition:I
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mTmpGridRect:Lcom/sonyericsson/grid/GridRect;

    iget v1, v1, Lcom/sonyericsson/grid/GridRect;->row:I

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v2}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v2}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mTmpGridRect:Lcom/sonyericsson/grid/GridRect;

    iget v3, v3, Lcom/sonyericsson/grid/GridRect;->col:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .restart local v0       #hintPosition:I
    goto :goto_0
.end method

.method public getLocation(ILcom/sonyericsson/paneview/PaneLocation;)V
    .locals 6
    .parameter "position"
    .parameter "outPlacement"

    .prologue
    const/4 v5, 0x1

    .line 89
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mGrid:Lcom/sonyericsson/grid/Grid;

    if-nez v2, :cond_0

    .line 114
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mHintManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getHintPosition()I

    move-result v0

    .line 95
    .local v0, hintPosition:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 96
    if-gt v0, p1, :cond_1

    .line 97
    add-int/lit8 p1, p1, 0x1

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mTmpGridRect:Lcom/sonyericsson/grid/GridRect;

    iput v5, v2, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    .line 102
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mTmpGridRect:Lcom/sonyericsson/grid/GridRect;

    iput v5, v2, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    .line 103
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mDoMirror:Z

    if-nez v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mTmpGridRect:Lcom/sonyericsson/grid/GridRect;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v3}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v3

    rem-int v3, p1, v3

    iput v3, v2, Lcom/sonyericsson/grid/GridRect;->col:I

    .line 108
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mTmpGridRect:Lcom/sonyericsson/grid/GridRect;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v3}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v3

    div-int v3, p1, v3

    iput v3, v2, Lcom/sonyericsson/grid/GridRect;->row:I

    .line 109
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 110
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mTmpGridRect:Lcom/sonyericsson/grid/GridRect;

    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/grid/Grid;->calculateRect(Lcom/sonyericsson/grid/GridRect;Landroid/graphics/Rect;)V

    .line 111
    iget-object v2, p2, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    const/4 v2, 0x0

    iput v2, p2, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    .line 113
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 106
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mTmpGridRect:Lcom/sonyericsson/grid/GridRect;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v3}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v4}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v4

    rem-int v4, p1, v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v5

    iput v3, v2, Lcom/sonyericsson/grid/GridRect;->col:I

    goto :goto_1
.end method

.method public setGridCols(I)V
    .locals 4
    .parameter "cols"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mGrid:Lcom/sonyericsson/grid/Grid;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v1}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 68
    :cond_0
    new-instance v0, Lcom/sonyericsson/grid/GridSize;

    invoke-direct {v0}, Lcom/sonyericsson/grid/GridSize;-><init>()V

    .line 69
    .local v0, gridSize:Lcom/sonyericsson/grid/GridSize;
    iput p1, v0, Lcom/sonyericsson/grid/GridSize;->cols:I

    .line 70
    const v1, 0x7fffffff

    iput v1, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    .line 71
    new-instance v1, Lcom/sonyericsson/grid/Grid;

    iget v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mCellWidth:I

    iget v3, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mCellHeight:I

    invoke-direct {v1, v2, v3, v0}, Lcom/sonyericsson/grid/Grid;-><init>(IILcom/sonyericsson/grid/GridSize;)V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 73
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mOnGridChangedListener:Lcom/sonyericsson/home/layer/folder/FolderLocator$OnGridChangedListener;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mOnGridChangedListener:Lcom/sonyericsson/home/layer/folder/FolderLocator$OnGridChangedListener;

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/folder/FolderLocator$OnGridChangedListener;->onGridChanged()V

    .line 77
    .end local v0           #gridSize:Lcom/sonyericsson/grid/GridSize;
    :cond_1
    return-void
.end method

.method public setOnGridChangedListener(Lcom/sonyericsson/home/layer/folder/FolderLocator$OnGridChangedListener;)V
    .locals 0
    .parameter "onGridChangedListener"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderLocator;->mOnGridChangedListener:Lcom/sonyericsson/home/layer/folder/FolderLocator$OnGridChangedListener;

    .line 64
    return-void
.end method
