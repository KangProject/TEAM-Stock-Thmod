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

.field private mLandscapeOrientation:Z


# direct methods
.method public constructor <init>(ZII)V
    .locals 4
    .parameter "landscapeOrientation"
    .parameter "cellWidth"
    .parameter "cellHeight"

    .prologue
    const/4 v3, 0x4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintLocation:I

    .line 55
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mLandscapeOrientation:Z

    .line 56
    iput p2, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mCellWidth:I

    .line 57
    iput p3, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mCellHeight:I

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method private getHintPosition()I
    .locals 4

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, hintPosition:I
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/data/Info;

    .line 320
    .local v2, info:Lcom/sonyericsson/home/data/Info;
    if-eqz v2, :cond_0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    .end local v2           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    return v0
.end method


# virtual methods
.method public addHint(Lcom/sonyericsson/home/layer/HintInfo;)I
    .locals 1
    .parameter "hintInfo"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    .line 209
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getHintPosition()I

    move-result v0

    return v0
.end method

.method public addItem(Lcom/sonyericsson/home/data/Info;I)Z
    .locals 1
    .parameter "info"
    .parameter "index"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 312
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addItemAtHint(Lcom/sonyericsson/home/data/Info;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    if-nez v0, :cond_0

    .line 290
    const-string v0, "StageModelManager.addItemAtHint(Info)"

    const-string v1, "mHintInfo is null"

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintLocation:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public contains(Lcom/sonyericsson/home/data/Info;)Z
    .locals 1
    .parameter "infoToLookFor"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Lcom/sonyericsson/home/data/Info;
    .locals 2
    .parameter "position"

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getIndexFromPosition(I)I

    move-result v0

    .line 112
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    .line 115
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
    .line 139
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
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

    .line 142
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    return-object v2
.end method

.method public getHintType()I
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    if-nez v0, :cond_0

    .line 263
    const-string v0, "StageModelManager.getHintType()"

    const-string v1, "mHintInfo is null"

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintInfo;->getHintType()I

    move-result v0

    goto :goto_0
.end method

.method public getIndexFromCoordinate(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 191
    const/4 v1, 0x5

    .line 194
    .local v1, size:I
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mLandscapeOrientation:Z

    if-eqz v2, :cond_1

    .line 195
    const/4 v2, 0x4

    iget v3, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mCellHeight:I

    div-int v3, p2, v3

    sub-int v0, v2, v3

    .line 200
    .local v0, index:I
    :goto_0
    div-int/lit8 v2, v1, 0x2

    if-lt v0, v2, :cond_0

    .line 201
    add-int/lit8 v0, v0, -0x1

    .line 203
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/util/MathUtil;->clamp(III)I

    move-result v0

    .line 204
    return v0

    .line 197
    .end local v0           #index:I
    :cond_1
    iget v2, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mCellWidth:I

    div-int v0, p1, v2

    .restart local v0       #index:I
    goto :goto_0
.end method

.method public getIndexFromPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 298
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 299
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 300
    add-int/lit8 p1, p1, -0x1

    .line 302
    :cond_0
    if-gez p1, :cond_1

    move v1, v0

    .line 306
    :goto_1
    return v1

    .line 298
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getItemAtHint()Lcom/sonyericsson/home/data/Info;
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getHintType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 280
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
    .locals 2
    .parameter "position"
    .parameter "outLocation"

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getIndexFromPosition(I)I

    move-result v0

    .line 165
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 166
    iget v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintLocation:I

    .line 169
    :cond_0
    iget-object v1, p2, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->setupRect(ILandroid/graphics/Rect;)V

    .line 170
    const/4 v1, 0x0

    iput v1, p2, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    .line 171
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
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isHinting()Z
    .locals 1

    .prologue
    .line 258
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
    .line 126
    const/4 v2, 0x0

    .line 127
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

    .line 128
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    if-eqz v1, :cond_0

    .line 129
    if-ne v1, p1, :cond_1

    move v3, v2

    .line 135
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :goto_1
    return v3

    .line 132
    .restart local v1       #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public remove(I)Lcom/sonyericsson/home/data/Info;
    .locals 4
    .parameter "position"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getIndexFromPosition(I)I

    move-result v0

    .line 105
    .local v0, index:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/Info;

    .line 106
    .local v1, removedInfo:Lcom/sonyericsson/home/data/Info;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-object v1
.end method

.method public remove(Lcom/sonyericsson/home/data/Info;)Z
    .locals 3
    .parameter "infoToRemove"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 90
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    const/4 v1, 0x1

    .line 94
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeHint()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    if-nez v0, :cond_0

    .line 249
    const-string v0, "StageModelManager.removeHint()"

    const-string v1, "mHintInfo is null"

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    .line 254
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintLocation:I

    goto :goto_0
.end method

.method public setHint(Lcom/sonyericsson/home/data/Info;I)Z
    .locals 5
    .parameter "info"
    .parameter "hintLocation"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 213
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    if-nez v1, :cond_0

    .line 214
    const-string v1, "StageModelManager.setHint(Info, int)"

    const-string v2, "mHintInfo is null"

    invoke-static {v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 244
    :goto_0
    return v1

    .line 219
    :cond_0
    iget v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintLocation:I

    if-eq v1, p2, :cond_5

    .line 221
    iput p2, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintLocation:I

    .line 224
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintLocation:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/Info;

    .line 227
    .local v0, overInfo:Lcom/sonyericsson/home/data/Info;
    if-nez v0, :cond_1

    .line 228
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/home/layer/HintInfo;->setHintType(I)V

    :goto_1
    move v1, v4

    .line 240
    goto :goto_0

    .line 230
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

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/HintInfo;->setHintType(I)V

    goto :goto_1

    .line 235
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/home/layer/HintInfo;->setHintType(I)V

    goto :goto_1

    .end local v0           #overInfo:Lcom/sonyericsson/home/data/Info;
    :cond_5
    move v1, v3

    .line 244
    goto :goto_0
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

    const-string v3, "StageModelManager"

    .line 66
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 67
    const-string v0, "StageModelManager"

    const-string v0, "Adding null"

    invoke-static {v3, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 72
    const-string v0, "StageModelManager"

    const-string v0, "Removing info"

    invoke-static {v3, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 75
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mInfos:Ljava/util/ArrayList;

    .line 76
    return-void
.end method

.method public setupRect(ILandroid/graphics/Rect;)V
    .locals 4
    .parameter "index"
    .parameter "outRect"

    .prologue
    const/4 v3, 0x0

    .line 174
    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, p1, v1

    .line 176
    .local v0, location:I
    iget-boolean v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mLandscapeOrientation:Z

    if-eqz v1, :cond_1

    .line 177
    const/4 v1, 0x4

    sub-int v0, v1, v0

    .line 178
    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 179
    iget v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mCellWidth:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 180
    iget v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mCellHeight:I

    mul-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 181
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mCellHeight:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 188
    :goto_1
    return-void

    .end local v0           #location:I
    :cond_0
    move v1, v3

    .line 174
    goto :goto_0

    .line 183
    .restart local v0       #location:I
    :cond_1
    iget v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mCellWidth:I

    mul-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 184
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mCellWidth:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 185
    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 186
    iget v1, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mCellHeight:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method public size()I
    .locals 4

    .prologue
    .line 151
    const/4 v2, 0x0

    .line 152
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

    .line 153
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    if-eqz v1, :cond_0

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageModelManager;->mHintInfo:Lcom/sonyericsson/home/layer/HintInfo;

    if-eqz v3, :cond_2

    .line 158
    add-int/lit8 v2, v2, 0x1

    .line 160
    :cond_2
    return v2
.end method
