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

.field private final mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;


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

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

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
    .line 476
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/PagedList;->addLast(Ljava/lang/Object;)V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/PagedList;->addLast(Ljava/lang/Object;)V

    .line 483
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
    .line 495
    .local p1, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 496
    .local v1, infos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v2

    .line 497
    .local v2, nbrOfPages:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 498
    invoke-virtual {p1, v0}, Lcom/sonyericsson/util/PagedList;->getPage(I)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
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
    .line 504
    .local p1, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    .local p2, infos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/util/PagedList;->clear()V

    .line 505
    invoke-virtual {p1}, Lcom/sonyericsson/util/PagedList;->addPageLast()V

    .line 506
    const/4 v2, 0x0

    .line 507
    .local v2, pageCounter:I
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 508
    .local v1, nbrOfInfos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 509
    invoke-virtual {p1, v2}, Lcom/sonyericsson/util/PagedList;->isPageFull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 510
    invoke-virtual {p1}, Lcom/sonyericsson/util/PagedList;->addPageLast()V

    .line 511
    add-int/lit8 v2, v2, 0x1

    .line 513
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/util/PagedList;->addToPage(ILjava/lang/Object;)V

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_1
    return-void
.end method

.method private verifyPickedUpState()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItem:Lcom/sonyericsson/home/data/ActivityInfo;

    if-nez v0, :cond_0

    .line 490
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Was not in picked up state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_0
    return-void
.end method


# virtual methods
.method public addEmptyPane()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0}, Lcom/sonyericsson/util/PagedList;->addPageLast()V

    .line 205
    return-void
.end method

.method public dropPickedUpItem()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 353
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->verifyPickedUpState()V

    .line 355
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPaneLocation:I

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItem:Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/util/PagedList;->add(IILjava/lang/Object;)V

    .line 356
    iput v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    .line 357
    iput v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPaneLocation:I

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItem:Lcom/sonyericsson/home/data/ActivityInfo;

    .line 359
    return-void
.end method

.method public getActivityInfo(I)Lcom/sonyericsson/home/data/ActivityInfo;
    .locals 3
    .parameter "position"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/PagedList;->mapLocation(I)V

    .line 256
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
    .line 381
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v3}, Lcom/sonyericsson/util/PagedList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 383
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

    .line 384
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 387
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

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/PagedList;->mapLocation(I)V

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0}, Lcom/sonyericsson/util/PagedList;->getMappedPageIndex()I

    move-result v0

    aput v0, p2, v1

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0}, Lcom/sonyericsson/util/PagedList;->getMappedPageLocation()I

    move-result v0

    aput v0, p2, v2

    .line 272
    aget v0, p2, v1

    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    if-ne v0, v1, :cond_0

    aget v0, p2, v2

    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPaneLocation:I

    if-lt v0, v1, :cond_0

    .line 273
    aget v0, p2, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, v2

    .line 275
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
    .line 129
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    goto :goto_0
.end method

.method public getNumberOfItems()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0}, Lcom/sonyericsson/util/PagedList;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfPanes()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v0

    return v0
.end method

.method public getOriginalPickedUpPosition()I
    .locals 3

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->verifyPickedUpState()V

    .line 338
    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mOriginalPickedUpItemPaneLocation:I

    .line 339
    .local v1, position:I
    const/4 v0, 0x0

    .local v0, page:I
    :goto_0
    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mOriginalPickedUpItemPane:I

    if-ge v0, v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    return v1
.end method

.method public getPickedUpPosition()I
    .locals 3

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->verifyPickedUpState()V

    .line 321
    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPaneLocation:I

    .line 322
    .local v1, position:I
    const/4 v0, 0x0

    .local v0, page:I
    :goto_0
    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    if-ge v0, v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_0
    return v1
.end method

.method public getSyncable()Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    return-object v0
.end method

.method public isPaneEmpty(I)Z
    .locals 1
    .parameter "pane"

    .prologue
    .line 197
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
    .line 187
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/PagedList;->isPageFull(I)Z

    move-result v0

    return v0
.end method

.method public notifyObservers()V
    .locals 3

    .prologue
    .line 164
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mObservers:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    .line 165
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

    .line 166
    .local v1, observer:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$AppTrayModelObserver;
    invoke-interface {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$AppTrayModelObserver;->onChanged()V

    goto :goto_0

    .line 169
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

    .line 428
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfoPane:I

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/util/PagedList;->addToPage(ILjava/lang/Object;)V

    .line 430
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    .line 431
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfoPane:I

    .line 434
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->isPaneFull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 435
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v1}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne p1, v1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v1}, Lcom/sonyericsson/util/PagedList;->addPageLast()V

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/util/PagedList;->get(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 439
    .local v0, lastInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/util/PagedList;->remove(Ljava/lang/Object;)Z

    .line 440
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->permanentlyMakeRoom(I)V

    .line 441
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/sonyericsson/util/PagedList;->add(IILjava/lang/Object;)V

    .line 443
    .end local v0           #lastInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_2
    return-void
.end method

.method public pickUpItem(I)Lcom/sonyericsson/home/data/ActivityInfo;
    .locals 3
    .parameter "position"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/util/PagedList;->mapLocation(I)V

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0}, Lcom/sonyericsson/util/PagedList;->getMappedPageIndex()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0}, Lcom/sonyericsson/util/PagedList;->getMappedPageLocation()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPaneLocation:I

    .line 288
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mOriginalPickedUpItemPane:I

    .line 289
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPaneLocation:I

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mOriginalPickedUpItemPaneLocation:I

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPaneLocation:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/PagedList;->remove(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItem:Lcom/sonyericsson/home/data/ActivityInfo;

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItem:Lcom/sonyericsson/home/data/ActivityInfo;

    return-object v0
.end method

.method public registerObserver(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$AppTrayModelObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mObservers:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mObservers:Ljava/util/LinkedList;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mObservers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public removeEmptyPanes()Z
    .locals 4

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, page:I
    const/4 v1, 0x0

    .line 228
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

    .line 229
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/util/PagedList;->removePage(I)Ljava/util/LinkedList;

    .line 231
    const/4 v1, 0x1

    goto :goto_0

    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_1
    return v1
.end method

.method public removeTrailingEmptyPanes()V
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v1}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 213
    .local v0, page:I
    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/util/PagedList;->removePage(I)Ljava/util/LinkedList;

    .line 215
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method

.method public restorePickedUpItem()V
    .locals 2

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->verifyPickedUpState()V

    .line 370
    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mOriginalPickedUpItemPane:I

    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mOriginalPickedUpItemPaneLocation:I

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->setPickedUpLocation(II)V

    .line 371
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->dropPickedUpItem()V

    .line 372
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
    .line 114
    .local p1, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    if-eqz v0, :cond_0

    .line 115
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->removeEmptyPanes()Z

    .line 121
    return-void

    .line 117
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

    .line 303
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->verifyPickedUpState()V

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v2, v0}, Lcom/sonyericsson/util/MathUtil;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPane:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result v0

    invoke-static {p2, v2, v0}, Lcom/sonyericsson/util/MathUtil;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mPickedUpItemPaneLocation:I

    .line 309
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
    .line 453
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    .line 455
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    .line 457
    :cond_0
    if-eqz p1, :cond_2

    .line 458
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-direct {p0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getInfosFromModel(Lcom/sonyericsson/util/PagedList;)Ljava/util/LinkedList;

    move-result-object v0

    .line 460
    .local v0, infos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    if-nez v1, :cond_1

    .line 461
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFreeModel:Lcom/sonyericsson/util/PagedList;

    .line 462
    new-instance v1, Lcom/sonyericsson/util/PagedList;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v2}, Lcom/sonyericsson/util/PagedList;->getMaxPageSize()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/util/PagedList;-><init>(I)V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    .line 464
    :cond_1
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 465
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->setInfosToModel(Lcom/sonyericsson/util/PagedList;Ljava/util/LinkedList;)V

    .line 467
    .end local v0           #infos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    :cond_2
    return-void
.end method

.method public temporarilyMakeRoom(I)Z
    .locals 4
    .parameter "pane"

    .prologue
    const/4 v3, 0x1

    .line 403
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfoPane:I

    if-eq v0, p1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iget v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfoPane:I

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/PagedList;->addToPage(ILjava/lang/Object;)V

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    .line 406
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfoPane:I

    .line 409
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->isPaneFull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iput p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfoPane:I

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/util/PagedList;->get(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mModel:Lcom/sonyericsson/util/PagedList;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mFloatingInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/PagedList;->remove(Ljava/lang/Object;)Z

    move v0, v3

    .line 415
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
    .line 154
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mObservers:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->mObservers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    return-void
.end method
