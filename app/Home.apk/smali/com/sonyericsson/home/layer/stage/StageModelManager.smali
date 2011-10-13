.class public Lcom/sonyericsson/home/layer/stage/StageModelManager;
.super Ljava/lang/Object;
.source "StageModelManager.java"


# static fields
.field public static final STAGE_SIZE:I = 0x4


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

.field private mHintLocation:I

.field private mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation
.end field

.field private mViewWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 4
    .parameter "viewWidth"
    .parameter "cellWidth"
    .parameter "cellHeight"

    .prologue
    const/4 v3, 0x4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintLocation:I

    .line 48
    iput p1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mViewWidth:I

    .line 49
    iput p2, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mCellWidth:I

    .line 50
    iput p3, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mCellHeight:I

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 53
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method private getHintPosition()I
    .locals 4

    .prologue
    .line 294
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    if-nez v3, :cond_0

    .line 295
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 297
    :cond_0
    const/4 v0, 0x0

    .line 298
    .local v0, hintPosition:I
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/data/Info;

    .line 299
    .local v2, info:Lcom/sonyericsson/home/data/Info;
    if-eqz v2, :cond_1

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    .end local v2           #info:Lcom/sonyericsson/home/data/Info;
    :cond_2
    return v0
.end method


# virtual methods
.method public addHint(Lcom/sonyericsson/home/layer/HintInfo;)I
    .locals 1
    .parameter "hintInfo"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    .line 191
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getHintPosition()I

    move-result v0

    return v0
.end method

.method public addItem(Lcom/sonyericsson/home/data/Info;I)Z
    .locals 1
    .parameter "info"
    .parameter "index"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 288
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addItemAtHint(Lcom/sonyericsson/home/data/Info;)I
    .locals 2
    .parameter "info"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintLocation:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getHintPosition()I

    move-result v0

    return v0
.end method

.method public get(I)Lcom/sonyericsson/home/data/Info;
    .locals 2
    .parameter "position"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getIndexFromPosition(I)I

    move-result v0

    .line 106
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    .line 109
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/data/Info;

    move-object v1, p0

    goto :goto_0
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
    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v2, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/Info;

    .line 136
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    return-object v2
.end method

.method public getHintType()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintInfo;->getHintType()I

    move-result v0

    return v0
.end method

.method public getIndexFromCoordinate(I)I
    .locals 5
    .parameter "x"

    .prologue
    .line 179
    const/4 v1, 0x5

    .line 180
    .local v1, size:I
    iget v3, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mViewWidth:I

    div-int v2, v3, v1

    .line 181
    .local v2, widthDelta:I
    div-int v0, p1, v2

    .line 182
    .local v0, index:I
    div-int/lit8 v3, v1, 0x2

    if-lt v0, v3, :cond_0

    .line 183
    add-int/lit8 v0, v0, -0x1

    .line 185
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v0, v3, v4}, Lcom/sonyericsson/util/MathUtil;->clamp(III)I

    move-result v0

    .line 186
    return v0
.end method

.method public getIndexFromPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 274
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 275
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 276
    add-int/lit8 p1, p1, -0x1

    .line 278
    :cond_0
    if-gez p1, :cond_1

    move v1, v0

    .line 282
    :goto_1
    return v1

    .line 274
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getItemAtHint()Lcom/sonyericsson/home/data/Info;
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getHintType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintLocation:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/data/Info;

    return-object p0
.end method

.method public getLocation(ILcom/sonyericsson/paneview/PaneLocation;)V
    .locals 8
    .parameter "position"
    .parameter "outLocation"

    .prologue
    const/4 v7, 0x0

    .line 159
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getIndexFromPosition(I)I

    move-result v0

    .line 160
    .local v0, index:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 161
    iget v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintLocation:I

    .line 163
    :cond_0
    const/4 v1, 0x5

    .line 164
    .local v1, size:I
    div-int/lit8 v4, v1, 0x2

    if-lt v0, v4, :cond_1

    .line 165
    add-int/lit8 v0, v0, 0x1

    .line 168
    :cond_1
    iget v4, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mViewWidth:I

    iget v5, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mCellWidth:I

    mul-int/2addr v5, v1

    sub-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x1

    div-int v2, v4, v5

    .line 169
    .local v2, startX:I
    iget v4, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mCellWidth:I

    add-int v3, v2, v4

    .line 171
    .local v3, widthDelta:I
    iget-object v4, p2, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    mul-int v5, v0, v3

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 172
    iget-object v4, p2, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget-object v5, p2, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mCellWidth:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 173
    iget-object v4, p2, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 174
    iget-object v4, p2, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mCellHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 175
    iput v7, p2, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    .line 176
    return-void
.end method

.method public getModel()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isHinting()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public positionOf(Lcom/sonyericsson/home/data/Info;)I
    .locals 4
    .parameter "infoToLookFor"

    .prologue
    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, position:I
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/Info;

    .line 122
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    if-eqz v1, :cond_0

    .line 123
    if-ne v1, p1, :cond_1

    move v3, v2

    .line 129
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :goto_1
    return v3

    .line 126
    .restart local v1       #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public remove(I)Lcom/sonyericsson/home/data/Info;
    .locals 4
    .parameter "position"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getIndexFromPosition(I)I

    move-result v0

    .line 98
    .local v0, index:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/Info;

    .line 99
    .local v1, removedInfo:Lcom/sonyericsson/home/data/Info;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-object v1
.end method

.method public remove(Lcom/sonyericsson/home/data/Info;)Z
    .locals 3
    .parameter "infoToRemove"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 83
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/4 v1, 0x1

    .line 87
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeHint()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintLocation:I

    .line 235
    return-void
.end method

.method public setHint(Lcom/sonyericsson/home/data/Info;I)Z
    .locals 5
    .parameter "info"
    .parameter "hintLocation"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    if-nez v1, :cond_0

    .line 196
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 200
    :cond_0
    iget v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintLocation:I

    if-eq v1, p2, :cond_5

    .line 202
    iput p2, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintLocation:I

    .line 205
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintLocation:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/Info;

    .line 208
    .local v0, overInfo:Lcom/sonyericsson/home/data/Info;
    if-nez v0, :cond_1

    .line 209
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/home/layer/HintInfo;->setHintType(I)V

    :goto_0
    move v1, v4

    .line 225
    .end local v0           #overInfo:Lcom/sonyericsson/home/data/Info;
    :goto_1
    return v1

    .line 211
    .restart local v0       #overInfo:Lcom/sonyericsson/home/data/Info;
    :cond_1
    if-eqz p1, :cond_4

    instance-of v1, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-nez v1, :cond_2

    instance-of v1, p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v1, :cond_4

    :cond_2
    instance-of v1, v0, Lcom/sonyericsson/home/data/InfoGroup;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/sonyericsson/home/data/ActivityInfo;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v1, :cond_4

    .line 214
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/HintInfo;->setHintType(I)V

    goto :goto_0

    .line 216
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/home/layer/HintInfo;->setHintType(I)V

    goto :goto_0

    .end local v0           #overInfo:Lcom/sonyericsson/home/data/Info;
    :cond_5
    move v1, v3

    .line 225
    goto :goto_1
.end method

.method public setModel(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    const/4 v2, 0x4

    const-string v3, "INFO"

    .line 59
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 60
    const-string v0, "INFO"

    const-string v0, "adding null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 65
    const-string v0, "INFO"

    const-string v0, "removing info"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 68
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method public size()I
    .locals 4

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, size:I
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/Info;

    .line 147
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    if-eqz v1, :cond_0

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    if-eqz v3, :cond_2

    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 154
    :cond_2
    return v2
.end method
