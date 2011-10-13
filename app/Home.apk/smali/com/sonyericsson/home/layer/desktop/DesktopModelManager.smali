.class public Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;
.super Ljava/lang/Object;
.source "DesktopModelManager.java"


# instance fields
.field private mGridSize:Lcom/sonyericsson/grid/GridSize;

.field private mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

.field private mIntersectedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberOfPanes:I

.field private mWidgetSyncable:Lcom/sonyericsson/home/layer/LayerController$Syncable;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/grid/GridSize;I)V
    .locals 1
    .parameter "gridSize"
    .parameter "numberOfPanes"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager$1;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mWidgetSyncable:Lcom/sonyericsson/home/layer/LayerController$Syncable;

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    .line 61
    iput p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mNumberOfPanes:I

    .line 62
    return-void
.end method


# virtual methods
.method public addHint(Lcom/sonyericsson/home/data/Info;)I
    .locals 2
    .parameter "hintInfo"

    .prologue
    .line 89
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public addItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z
    .locals 6
    .parameter "newItem"

    .prologue
    const/4 v5, 0x0

    .line 237
    invoke-virtual {p1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v2

    .line 240
    .local v2, newLocation:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    iget v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    if-ltz v3, :cond_0

    iget v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    iget v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v4, v4, Lcom/sonyericsson/grid/GridSize;->cols:I

    if-gt v3, v4, :cond_0

    iget v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    if-ltz v3, :cond_0

    iget v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    iget v4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v4, v4, Lcom/sonyericsson/grid/GridSize;->rows:I

    if-le v3, v4, :cond_1

    :cond_0
    move v3, v5

    .line 252
    :goto_0
    return v3

    .line 246
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 247
    .local v1, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->overlaps(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    .line 248
    goto :goto_0

    .line 252
    .end local v1           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public addItemAtHint(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)I
    .locals 2
    .parameter "item"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 178
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->set(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public get(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object p0
.end method

.method public get(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 5
    .parameter "info"

    .prologue
    .line 264
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    .line 265
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 267
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 268
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 269
    .local v1, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 274
    .end local v1           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :goto_1
    return-object v4

    .line 267
    .restart local v1       #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    .end local v1           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getAllInfos()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v2, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 377
    .local v0, desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    .end local v0           #desktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_0
    return-object v2
.end method

.method public getClosestEmptyLocation(Lcom/sonyericsson/grid/GridRect;ILcom/sonyericsson/home/layer/desktop/DesktopRect;)Z
    .locals 22
    .parameter "gridRect"
    .parameter "pane"
    .parameter "outDesktopRect"

    .prologue
    .line 309
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->cols:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 310
    :cond_0
    const/16 v20, 0x0

    .line 366
    :goto_0
    return v20

    .line 313
    :cond_1
    const/4 v5, 0x0

    .line 314
    .local v5, MIN_CELL_X:I
    const/4 v6, 0x0

    .line 315
    .local v6, MIN_CELL_Y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->cols:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    move/from16 v21, v0

    sub-int v3, v20, v21

    .line 316
    .local v3, MAX_CELL_X:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sonyericsson/grid/GridSize;->rows:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    move/from16 v21, v0

    sub-int v4, v20, v21

    .line 318
    .local v4, MAX_CELL_Y:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sonyericsson/grid/GridRect;->col:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 319
    .local v15, startCellX:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sonyericsson/grid/GridRect;->row:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 320
    .local v16, startCellY:I
    move/from16 v17, v15

    .line 321
    .local v17, stopCellX:I
    move/from16 v18, v16

    .line 323
    .local v18, stopCellY:I
    const/16 v19, 0x0

    .line 324
    .local v19, testDistance:I
    const/4 v10, 0x1

    .line 325
    .local v10, looping:Z
    :goto_1
    if-eqz v10, :cond_a

    .line 326
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p3

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 327
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p3

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 328
    move/from16 v0, p2

    move-object/from16 v1, p3

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 329
    move/from16 v0, v16

    move-object/from16 v1, p3

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    :goto_2
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v18

    if-gt v0, v1, :cond_8

    .line 331
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v16

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    :cond_2
    const/16 v20, 0x1

    move/from16 v2, v20

    .line 333
    .local v2, DELTA_X:I
    :goto_3
    move v0, v15

    move-object/from16 v1, p3

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    :goto_4
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v17

    if-gt v0, v1, :cond_7

    .line 334
    const/4 v7, 0x1

    .line 335
    .local v7, empty:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 336
    .local v9, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v9}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->overlaps(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 337
    const/4 v7, 0x0

    .line 341
    .end local v9           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_4
    if-eqz v7, :cond_6

    .line 342
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 331
    .end local v2           #DELTA_X:I
    .end local v7           #empty:Z
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_5
    mul-int/lit8 v20, v19, 0x2

    move/from16 v2, v20

    goto :goto_3

    .line 333
    .restart local v2       #DELTA_X:I
    .restart local v7       #empty:Z
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    move/from16 v20, v0

    add-int v20, v20, v2

    move/from16 v0, v20

    move-object/from16 v1, p3

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    goto :goto_4

    .line 329
    .end local v7           #empty:Z
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p3

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    goto/16 :goto_2

    .line 348
    .end local v2           #DELTA_X:I
    :cond_8
    move v11, v15

    .line 349
    .local v11, oldStartCellX:I
    move/from16 v12, v16

    .line 350
    .local v12, oldStartCellY:I
    move/from16 v13, v17

    .line 351
    .local v13, oldStopCellX:I
    move/from16 v14, v18

    .line 352
    .local v14, oldStopCellY:I
    const/16 v20, 0x1

    sub-int v20, v15, v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 353
    const/16 v20, 0x1

    sub-int v20, v16, v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 354
    add-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 355
    add-int/lit8 v20, v18, 0x1

    move/from16 v0, v20

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 358
    if-ne v15, v11, :cond_9

    move/from16 v0, v16

    move v1, v12

    if-ne v0, v1, :cond_9

    move/from16 v0, v17

    move v1, v13

    if-ne v0, v1, :cond_9

    move/from16 v0, v18

    move v1, v14

    if-ne v0, v1, :cond_9

    .line 360
    const/4 v10, 0x0

    .line 363
    :cond_9
    add-int/lit8 v19, v19, 0x1

    .line 364
    goto/16 :goto_1

    .line 366
    .end local v11           #oldStartCellX:I
    .end local v12           #oldStartCellY:I
    .end local v13           #oldStopCellX:I
    .end local v14           #oldStopCellY:I
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method public getFirstEmptyLocation(IIILcom/sonyericsson/home/layer/desktop/DesktopRect;)Z
    .locals 8
    .parameter "spanX"
    .parameter "spanY"
    .parameter "wantedPane"
    .parameter "outDesktopRect"

    .prologue
    .line 283
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v7, v7, Lcom/sonyericsson/grid/GridSize;->cols:I

    sub-int v0, v7, p1

    .line 284
    .local v0, MAX_CELL_X:I
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mGridSize:Lcom/sonyericsson/grid/GridSize;

    iget v7, v7, Lcom/sonyericsson/grid/GridSize;->rows:I

    sub-int v1, v7, p2

    .line 286
    .local v1, MAX_CELL_Y:I
    const/4 v3, 0x0

    .local v3, cellY:I
    :goto_0
    if-gt v3, v1, :cond_4

    .line 287
    const/4 v2, 0x0

    .local v2, cellX:I
    :goto_1
    if-gt v2, v0, :cond_3

    .line 288
    const/4 v4, 0x1

    .line 289
    .local v4, empty:Z
    iput v2, p4, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 290
    iput v3, p4, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 291
    iput p1, p4, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 292
    iput p2, p4, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 293
    iput p3, p4, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 294
    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 295
    .local v6, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v6}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v7

    invoke-virtual {v7, p4}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->overlaps(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 296
    const/4 v4, 0x0

    .line 300
    .end local v6           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_1
    if-eqz v4, :cond_2

    .line 301
    const/4 v7, 0x1

    .line 305
    .end local v2           #cellX:I
    .end local v4           #empty:Z
    .end local v5           #i$:Ljava/util/Iterator;
    :goto_2
    return v7

    .line 287
    .restart local v2       #cellX:I
    .restart local v4       #empty:Z
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 286
    .end local v4           #empty:Z
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    .end local v2           #cellX:I
    :cond_4
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public getHintType()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/HintInfo;

    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/HintInfo;->getHintType()I

    move-result v0

    return v0
.end method

.method public getItemAtHint()Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getHintType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mIntersectedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object v0
.end method

.method public getNbrOfPanes()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mNumberOfPanes:I

    return v0
.end method

.method public getPositionOfItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStorableModel()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    .local v0, storableModel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 81
    return-object v0
.end method

.method public getWidgetSyncable()Lcom/sonyericsson/home/layer/LayerController$Syncable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mWidgetSyncable:Lcom/sonyericsson/home/layer/LayerController$Syncable;

    return-object v0
.end method

.method public hasWidgets()Z
    .locals 3

    .prologue
    .line 384
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 385
    .local v1, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v2

    instance-of v2, v2, Lcom/sonyericsson/home/data/WidgetInfo;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v2

    instance-of v2, v2, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v2, :cond_0

    .line 386
    :cond_1
    const/4 v2, 0x1

    .line 389
    .end local v1           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public indexOf(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isHinting()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    return-object p0
.end method

.method public remove(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 3
    .parameter "info"

    .prologue
    .line 206
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 207
    .local v1, layerItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 213
    .end local v1           #layerItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public remove(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Lcom/sonyericsson/home/data/Info;)I
    .locals 6
    .parameter "info"

    .prologue
    .line 217
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    .line 218
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 219
    .local v4, size:I
    const/4 v3, 0x0

    .line 220
    .local v3, nItemsRemoved:I
    const/4 v0, 0x0

    .line 222
    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 223
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    .line 224
    .local v1, itemInfo:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 225
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 226
    add-int/lit8 v4, v4, -0x1

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    .end local v1           #itemInfo:Lcom/sonyericsson/home/data/Info;
    :cond_1
    return v3
.end method

.method public removeHint()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-nez v0, :cond_0

    .line 139
    const-string v0, "DesktopModelManager"

    const-string v1, "Remove hint called when no hint was taking place"

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 145
    return-void
.end method

.method public setHint(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z
    .locals 6
    .parameter "info"
    .parameter "hintLocation"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-nez v3, :cond_0

    .line 96
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 100
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 103
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->set(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 106
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mIntersectedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 107
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 108
    .local v2, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-eq v2, v3, :cond_1

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->overlaps(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mIntersectedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 115
    .end local v2           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mIntersectedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-nez v3, :cond_3

    .line 116
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/HintInfo;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/home/layer/HintInfo;->setHintType(I)V

    :goto_0
    move v3, v5

    .line 134
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    return v3

    .line 118
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local p0
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mIntersectedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    .line 119
    .local v1, intersectedInfo:Lcom/sonyericsson/home/data/Info;
    if-eqz p1, :cond_6

    instance-of v3, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-nez v3, :cond_4

    instance-of v3, p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v3, :cond_6

    :cond_4
    instance-of v3, v1, Lcom/sonyericsson/home/data/InfoGroup;

    if-nez v3, :cond_5

    instance-of v3, v1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-nez v3, :cond_5

    instance-of v3, v1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v3, :cond_6

    .line 123
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/HintInfo;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/sonyericsson/home/layer/HintInfo;->setHintType(I)V

    goto :goto_0

    .line 125
    .restart local p0
    :cond_6
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mHintDesktopItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/layer/HintInfo;

    invoke-virtual {p0, v5}, Lcom/sonyericsson/home/layer/HintInfo;->setHintType(I)V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #intersectedInfo:Lcom/sonyericsson/home/data/Info;
    .restart local p0
    :cond_7
    move v3, v4

    .line 134
    goto :goto_1
.end method

.method public setModel(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
