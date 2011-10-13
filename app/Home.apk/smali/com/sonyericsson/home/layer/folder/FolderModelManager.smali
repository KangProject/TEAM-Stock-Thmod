.class public Lcom/sonyericsson/home/layer/folder/FolderModelManager;
.super Ljava/lang/Object;
.source "FolderModelManager.java"


# static fields
.field private static final HINT_POSITION_NO_HINT:I = -0x1


# instance fields
.field private mDoMirror:Z

.field private final mGrid:Lcom/sonyericsson/grid/Grid;

.field private mHintPosition:I

.field private mInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

.field private mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field private final tmpGridRect:Lcom/sonyericsson/grid/GridRect;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/grid/Grid;Lcom/sonyericsson/home/layer/InfoGroupManager;)V
    .locals 1
    .parameter "grid"
    .parameter "infoGroupManager"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mHintPosition:I

    .line 34
    new-instance v0, Lcom/sonyericsson/grid/GridRect;

    invoke-direct {v0}, Lcom/sonyericsson/grid/GridRect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->tmpGridRect:Lcom/sonyericsson/grid/GridRect;

    .line 48
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 49
    iput-object p2, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 50
    return-void
.end method


# virtual methods
.method public add(ILcom/sonyericsson/home/data/Info;)V
    .locals 2
    .parameter "hintPosition"
    .parameter "mPickedUpItem"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sonyericsson/home/layer/InfoGroupManager;->add(Lcom/sonyericsson/home/data/InfoGroup;ILcom/sonyericsson/home/data/Info;)V

    .line 62
    return-void
.end method

.method public get(I)Lcom/sonyericsson/home/data/Info;
    .locals 2
    .parameter "location"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getInfo(Lcom/sonyericsson/home/data/InfoGroup;I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getInfoCount(Lcom/sonyericsson/home/data/InfoGroup;)I

    move-result v0

    return v0
.end method

.method public getHintPosition()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mHintPosition:I

    return v0
.end method

.method public getLocation(ILcom/sonyericsson/paneview/PaneLocation;)V
    .locals 5
    .parameter "position"
    .parameter "outPlacement"

    .prologue
    const/4 v4, 0x1

    .line 74
    iget v1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mHintPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 75
    iget v1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mHintPosition:I

    if-gt v1, p1, :cond_0

    .line 76
    add-int/lit8 p1, p1, 0x1

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->tmpGridRect:Lcom/sonyericsson/grid/GridRect;

    iput v4, v1, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    .line 81
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->tmpGridRect:Lcom/sonyericsson/grid/GridRect;

    iput v4, v1, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    .line 83
    iget-boolean v1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mDoMirror:Z

    if-nez v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->tmpGridRect:Lcom/sonyericsson/grid/GridRect;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v2}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v2

    rem-int v2, p1, v2

    iput v2, v1, Lcom/sonyericsson/grid/GridRect;->col:I

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->tmpGridRect:Lcom/sonyericsson/grid/GridRect;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v2}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v2

    div-int v2, p1, v2

    iput v2, v1, Lcom/sonyericsson/grid/GridRect;->row:I

    .line 91
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 92
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->tmpGridRect:Lcom/sonyericsson/grid/GridRect;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/grid/Grid;->calculateRect(Lcom/sonyericsson/grid/GridRect;Landroid/graphics/Rect;)V

    .line 93
    iget-object v1, p2, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 94
    const/4 v1, 0x0

    iput v1, p2, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    .line 95
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 96
    return-void

    .line 88
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->tmpGridRect:Lcom/sonyericsson/grid/GridRect;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v2}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v3}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v3

    rem-int v3, p1, v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    iput v2, v1, Lcom/sonyericsson/grid/GridRect;->col:I

    goto :goto_0
.end method

.method public remove(I)Lcom/sonyericsson/home/data/Info;
    .locals 2
    .parameter "position"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->remove(Lcom/sonyericsson/home/data/InfoGroup;I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    return-object v0
.end method

.method public setDoMirror(Z)V
    .locals 0
    .parameter "doMirror"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mDoMirror:Z

    .line 127
    return-void
.end method

.method public setHint(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 105
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 109
    :cond_1
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mHintPosition:I

    if-eq p1, v0, :cond_2

    .line 110
    iput p1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mHintPosition:I

    .line 111
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInfoGroup(Lcom/sonyericsson/home/data/InfoGroup;)V
    .locals 0
    .parameter "infoGroup"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mInfoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    .line 54
    return-void
.end method

.method public stopHinting()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mHintPosition:I

    .line 119
    return-void
.end method
