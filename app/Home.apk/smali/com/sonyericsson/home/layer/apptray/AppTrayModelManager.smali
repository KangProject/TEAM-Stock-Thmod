.class public Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;
.super Ljava/lang/Object;
.source "AppTrayModelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$AppTrayModelObserver;
    }
.end annotation


# instance fields
.field private mFloatingInfo:Lcom/sonyericsson/home/data/ActivityInfo;

.field private mFloatingInfoPane:I

.field private mFreeModel:Lcom/sonyericsson/util/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/util/PagedList",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mModel:Lcom/sonyericsson/util/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/util/PagedList",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mObservers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$AppTrayModelObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalPickedUpItemPane:I

.field private mOriginalPickedUpItemPaneLocation:I

.field private mPickedUpItem:Lcom/sonyericsson/home/data/ActivityInfo;

.field private mPickedUpItemPane:I

.field private mPickedUpItemPaneLocation:I

.field private final mSyncable:Lcom/sonyericsson/home/layer/LayerController$Syncable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    .line 58
    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPaneLocation:I

    .line 79
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$1;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mSyncable:Lcom/sonyericsson/home/layer/LayerController$Syncable;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/home/data/ActivityInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->addNew(Lcom/sonyericsson/home/data/ActivityInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;)Lcom/sonyericsson/util/PagedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;)Lcom/sonyericsson/util/PagedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    return-object v0
.end method

.method private addNew(Lcom/sonyericsson/home/data/ActivityInfo;)V
    .locals 1
    .parameter "activityInfo"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/PagedList;->addLast(Ljava/lang/Object;)V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/PagedList;->addLast(Ljava/lang/Object;)V

    .line 479
    return-void
.end method

.method private getInfosFromModel(Lcom/sonyericsson/util/PagedList;)Ljava/util/LinkedList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/util/PagedList",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    .local p1, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 492
    .local v1, infos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v2

    .line 493
    .local v2, nbrOfPages:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 494
    invoke-virtual {p1, v0}, Lcom/sonyericsson/util/PagedList;->getPage(I)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_0
    return-object v1
.end method

.method private setInfosToModel(Lcom/sonyericsson/util/PagedList;Ljava/util/LinkedList;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/util/PagedList",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    .local p2, infos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/util/PagedList;->clear()V

    .line 501
    invoke-virtual {p1}, Lcom/sonyericsson/util/PagedList;->addPageLast()V

    .line 502
    const/4 v2, 0x0

    .line 503
    .local v2, pageCounter:I
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 504
    .local v1, nbrOfInfos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 505
    invoke-virtual {p1, v2}, Lcom/sonyericsson/util/PagedList;->isPageFull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    invoke-virtual {p1}, Lcom/sonyericsson/util/PagedList;->addPageLast()V

    .line 507
    add-int/lit8 v2, v2, 0x1

    .line 509
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/util/PagedList;->addToPage(ILjava/lang/Object;)V

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    :cond_1
    return-void
.end method

.method private verifyPickedUpState()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItem:Lcom/sonyericsson/home/data/ActivityInfo;

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Was not in picked up state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_0
    return-void
.end method


# virtual methods
.method public addEmptyPane()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0}, Lcom/sonyericsson/util/PagedList;->addPageLast()V

    .line 201
    return-void
.end method

.method public dropPickedUpItem()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 349
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->verifyPickedUpState()V

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPaneLocation:I

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItem:Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/util/PagedList;->add(IILjava/lang/Object;)V

    .line 352
    iput v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    .line 353
    iput v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPaneLocation:I

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItem:Lcom/sonyericsson/home/data/ActivityInfo;

    .line 355
    return-void
.end method

.method public getActivityInfo(I)Lcom/sonyericsson/home/data/ActivityInfo;
    .locals 3
    .parameter "position"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/PagedList;->mapLocation(I)V

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v1}, Lcom/sonyericsson/util/PagedList;->getMappedPageIndex()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v2}, Lcom/sonyericsson/util/PagedList;->getMappedPageLocation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/PagedList;->get(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/data/ActivityInfo;

    return-object p0
.end method

.method public getAllInfo()Ljava/util/Collection;
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
    .line 377
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v3}, Lcom/sonyericsson/util/PagedList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
    .local v2, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v3}, Lcom/sonyericsson/util/PagedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 380
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_0
    return-object v2
.end method

.method public getItemPaneLocation(I[I)V
    .locals 3
    .parameter "position"
    .parameter "outLocation"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/PagedList;->mapLocation(I)V

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0}, Lcom/sonyericsson/util/PagedList;->getMappedPageIndex()I

    move-result v0

    aput v0, p2, v1

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0}, Lcom/sonyericsson/util/PagedList;->getMappedPageLocation()I

    move-result v0

    aput v0, p2, v2

    .line 268
    aget v0, p2, v1

    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    if-ne v0, v1, :cond_0

    aget v0, p2, v2

    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPaneLocation:I

    if-lt v0, v1, :cond_0

    .line 269
    aget v0, p2, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, v2

    .line 271
    :cond_0
    return-void
.end method

.method public getModel()Lcom/sonyericsson/util/PagedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonyericsson/util/PagedList",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    goto :goto_0
.end method

.method public getNumberOfItems()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0}, Lcom/sonyericsson/util/PagedList;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfPanes()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v0

    return v0
.end method

.method public getOriginalPickedUpPosition()I
    .locals 3

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->verifyPickedUpState()V

    .line 334
    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mOriginalPickedUpItemPaneLocation:I

    .line 335
    .local v1, position:I
    const/4 v0, 0x0

    .local v0, page:I
    :goto_0
    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mOriginalPickedUpItemPane:I

    if-ge v0, v2, :cond_0

    .line 336
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    return v1
.end method

.method public getPickedUpPosition()I
    .locals 3

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->verifyPickedUpState()V

    .line 317
    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPaneLocation:I

    .line 318
    .local v1, position:I
    const/4 v0, 0x0

    .local v0, page:I
    :goto_0
    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    if-ge v0, v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_0
    return v1
.end method

.method public getSyncable()Lcom/sonyericsson/home/layer/LayerController$Syncable;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mSyncable:Lcom/sonyericsson/home/layer/LayerController$Syncable;

    return-object v0
.end method

.method public isPaneEmpty(I)Z
    .locals 1
    .parameter "pane"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaneFull(I)Z
    .locals 1
    .parameter "pane"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/PagedList;->isPageFull(I)Z

    move-result v0

    return v0
.end method

.method public notifyObservers()V
    .locals 3

    .prologue
    .line 160
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mObservers:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mObservers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$AppTrayModelObserver;

    .line 162
    .local v1, observer:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$AppTrayModelObserver;
    invoke-interface {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$AppTrayModelObserver;->onChanged()V

    goto :goto_0

    .line 165
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$AppTrayModelObserver;
    :cond_0
    return-void
.end method

.method public permanentlyMakeRoom(I)V
    .locals 5
    .parameter "pane"

    .prologue
    const/4 v4, 0x1

    .line 424
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfoPane:I

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/util/PagedList;->addToPage(ILjava/lang/Object;)V

    .line 426
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    .line 427
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfoPane:I

    .line 430
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->isPaneFull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v1}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne p1, v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v1}, Lcom/sonyericsson/util/PagedList;->addPageLast()V

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/util/PagedList;->get(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 435
    .local v0, lastInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/util/PagedList;->remove(Ljava/lang/Object;)Z

    .line 436
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->permanentlyMakeRoom(I)V

    .line 437
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/sonyericsson/util/PagedList;->add(IILjava/lang/Object;)V

    .line 439
    .end local v0           #lastInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_2
    return-void
.end method

.method public pickUpItem(I)Lcom/sonyericsson/home/data/ActivityInfo;
    .locals 3
    .parameter "position"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/PagedList;->mapLocation(I)V

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0}, Lcom/sonyericsson/util/PagedList;->getMappedPageIndex()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0}, Lcom/sonyericsson/util/PagedList;->getMappedPageLocation()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPaneLocation:I

    .line 284
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mOriginalPickedUpItemPane:I

    .line 285
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPaneLocation:I

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mOriginalPickedUpItemPaneLocation:I

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPaneLocation:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/PagedList;->remove(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItem:Lcom/sonyericsson/home/data/ActivityInfo;

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItem:Lcom/sonyericsson/home/data/ActivityInfo;

    return-object v0
.end method

.method public registerObserver(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$AppTrayModelObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mObservers:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mObservers:Ljava/util/LinkedList;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mObservers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public removeEmptyPanes()Z
    .locals 4

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, page:I
    const/4 v1, 0x0

    .line 224
    .local v1, removedPages:Z
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v2}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v2}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 225
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/util/PagedList;->removePage(I)Ljava/util/LinkedList;

    .line 227
    const/4 v1, 0x1

    goto :goto_0

    .line 229
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_1
    return v1
.end method

.method public removeTrailingEmptyPanes()V
    .locals 3

    .prologue
    .line 208
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v1}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 209
    .local v0, page:I
    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/util/PagedList;->removePage(I)Ljava/util/LinkedList;

    .line 211
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method public restorePickedUpItem()V
    .locals 2

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->verifyPickedUpState()V

    .line 366
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mOriginalPickedUpItemPane:I

    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mOriginalPickedUpItemPaneLocation:I

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->setPickedUpLocation(II)V

    .line 367
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->dropPickedUpItem()V

    .line 368
    return-void
.end method

.method public setModel(Lcom/sonyericsson/util/PagedList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/util/PagedList",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    if-eqz v0, :cond_0

    .line 113
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    goto :goto_0
.end method

.method public setPickedUpLocation(II)V
    .locals 3
    .parameter "pane"
    .parameter "paneLocation"

    .prologue
    const/4 v2, 0x0

    .line 299
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->verifyPickedUpState()V

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v2, v0}, Lcom/sonyericsson/util/MathUtil;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result v0

    invoke-static {p2, v2, v0}, Lcom/sonyericsson/util/MathUtil;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPaneLocation:I

    .line 305
    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    .line 451
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    .line 453
    :cond_0
    if-eqz p1, :cond_2

    .line 454
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-direct {p0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getInfosFromModel(Lcom/sonyericsson/util/PagedList;)Ljava/util/LinkedList;

    move-result-object v0

    .line 456
    .local v0, infos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    if-nez v1, :cond_1

    .line 457
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    .line 458
    new-instance v1, Lcom/sonyericsson/util/PagedList;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v2}, Lcom/sonyericsson/util/PagedList;->getMaxPageSize()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/util/PagedList;-><init>(I)V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    .line 460
    :cond_1
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 461
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->setInfosToModel(Lcom/sonyericsson/util/PagedList;Ljava/util/LinkedList;)V

    .line 463
    .end local v0           #infos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    :cond_2
    return-void
.end method

.method public temporarilyMakeRoom(I)Z
    .locals 4
    .parameter "pane"

    .prologue
    const/4 v3, 0x1

    .line 399
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfoPane:I

    if-eq v0, p1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfoPane:I

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/PagedList;->addToPage(ILjava/lang/Object;)V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    .line 402
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfoPane:I

    .line 405
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->isPaneFull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    iput p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfoPane:I

    .line 407
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/util/PagedList;->get(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    .line 408
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/PagedList;->remove(Ljava/lang/Object;)Z

    move v0, v3

    .line 411
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterObserver(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$AppTrayModelObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mObservers:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mObservers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    return-void
.end method
