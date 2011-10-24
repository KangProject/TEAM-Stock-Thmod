.class public Lcom/sonyericsson/util/PagedList;
.super Ljava/lang/Object;
.source "PagedList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private mMappedPageIndex:I

.field private mMappedPageLocation:I

.field private mMaxPageSize:I

.field private final mPages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/LinkedList",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/sonyericsson/util/PagedList;-><init>(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pageMaxSize"

    .prologue
    .line 54
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    .line 55
    iput p1, p0, Lcom/sonyericsson/util/PagedList;->mMaxPageSize:I

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/util/PagedList;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public add(IILjava/lang/Object;)V
    .locals 3
    .parameter "pageIndex"
    .parameter "pageLocation"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITV;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1}, Lcom/sonyericsson/util/PagedList;->isPageFull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "page is full"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 152
    .local v0, pageList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 153
    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {v0, p2, p3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addInFirstAvailableLocation(Ljava/lang/Object;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v4, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 184
    .local v3, pageIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/LinkedList<TV;>;>;"
    const/4 v0, 0x0

    .line 186
    .local v0, done:Z
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    .line 187
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 188
    .local v2, page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 189
    .local v1, firstNullLocation:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 190
    invoke-virtual {v2, v1, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/4 v0, 0x1

    .line 193
    :cond_1
    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonyericsson/util/PagedList;->getMaxPageSize()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 194
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 195
    const/4 v0, 0x1

    goto :goto_0

    .line 198
    .end local v1           #firstNullLocation:I
    .end local v2           #page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    :cond_2
    if-nez v0, :cond_3

    .line 199
    invoke-virtual {p0, p1}, Lcom/sonyericsson/util/PagedList;->addLast(Ljava/lang/Object;)V

    .line 201
    :cond_3
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    .local p1, item:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 372
    .local v0, lastPage:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/util/PagedList;->isPageFull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 374
    invoke-virtual {p0}, Lcom/sonyericsson/util/PagedList;->addPageLast()V

    .line 376
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/util/PagedList;->addToPage(ILjava/lang/Object;)V

    .line 377
    return-void
.end method

.method public addPageLast()V
    .locals 2

    .prologue
    .line 93
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    iget-object v0, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public addToPage(ILjava/lang/Object;)V
    .locals 2
    .parameter "pageIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1}, Lcom/sonyericsson/util/PagedList;->isPageFull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "page is full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 359
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    iget-object v2, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 360
    .local v1, page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    .line 362
    .end local v1           #page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 363
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v2, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 270
    .local v1, page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    const/4 v2, 0x1

    .line 274
    .end local v1           #page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public get(II)Ljava/lang/Object;
    .locals 1
    .parameter "pageIndex"
    .parameter "pageLocation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TV;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    iget-object v0, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMappedPageIndex()I
    .locals 1

    .prologue
    .line 304
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    iget v0, p0, Lcom/sonyericsson/util/PagedList;->mMappedPageIndex:I

    return v0
.end method

.method public getMappedPageLocation()I
    .locals 1

    .prologue
    .line 314
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    iget v0, p0, Lcom/sonyericsson/util/PagedList;->mMappedPageLocation:I

    return v0
.end method

.method public getMaxPageSize()I
    .locals 1

    .prologue
    .line 64
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    iget v0, p0, Lcom/sonyericsson/util/PagedList;->mMaxPageSize:I

    return v0
.end method

.method public getNumberOfPages()I
    .locals 1

    .prologue
    .line 73
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    iget-object v0, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getPage(I)Ljava/util/LinkedList;
    .locals 1
    .parameter "pageIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedList",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    iget-object v0, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    check-cast p0, Ljava/util/LinkedList;

    return-object p0
.end method

.method public getPageSize(I)I
    .locals 1
    .parameter "pageIndex"

    .prologue
    .line 103
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    iget-object v0, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public insert(IILjava/lang/Object;)V
    .locals 3
    .parameter "pageIndex"
    .parameter "pageLocation"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITV;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    .local p3, item:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 381
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 384
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/util/PagedList;->isPageFull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 385
    invoke-virtual {p0}, Lcom/sonyericsson/util/PagedList;->getMaxPageSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/util/PagedList;->remove(II)Ljava/lang/Object;

    move-result-object v0

    .line 386
    .local v0, lastItem:Ljava/lang/Object;,"TV;"
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 387
    invoke-virtual {p0}, Lcom/sonyericsson/util/PagedList;->addPageLast()V

    .line 389
    :cond_2
    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/sonyericsson/util/PagedList;->insert(IILjava/lang/Object;)V

    .line 392
    .end local v0           #lastItem:Ljava/lang/Object;,"TV;"
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/util/PagedList;->add(IILjava/lang/Object;)V

    .line 393
    return-void
.end method

.method public isPageFull(I)Z
    .locals 2
    .parameter "pageIndex"

    .prologue
    .line 114
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    iget-object v0, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/util/PagedList;->mMaxPageSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    new-instance v0, Lcom/sonyericsson/util/PagedList$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/util/PagedList$1;-><init>(Lcom/sonyericsson/util/PagedList;)V

    return-object v0
.end method

.method public mapLocation(I)V
    .locals 4
    .parameter "location"

    .prologue
    .line 285
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonyericsson/util/PagedList;->mMappedPageIndex:I

    .line 286
    iput p1, p0, Lcom/sonyericsson/util/PagedList;->mMappedPageLocation:I

    .line 287
    iget-object v2, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 288
    .local v1, page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    iget v2, p0, Lcom/sonyericsson/util/PagedList;->mMappedPageLocation:I

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 289
    iget v2, p0, Lcom/sonyericsson/util/PagedList;->mMappedPageLocation:I

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sonyericsson/util/PagedList;->mMappedPageLocation:I

    .line 290
    iget v2, p0, Lcom/sonyericsson/util/PagedList;->mMappedPageIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonyericsson/util/PagedList;->mMappedPageIndex:I

    goto :goto_0

    .line 295
    .end local v1           #page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    :cond_0
    return-void
.end method

.method public remove(II)Ljava/lang/Object;
    .locals 1
    .parameter "pageIndex"
    .parameter "pageLocation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TV;"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    iget-object v0, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v2, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 245
    .local v1, page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const/4 v2, 0x1

    .line 249
    .end local v1           #page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeGaps()V
    .locals 3

    .prologue
    .line 256
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    iget-object v2, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 257
    .local v1, page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 260
    .end local v1           #page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    :cond_1
    return-void
.end method

.method public removePage(I)Ljava/util/LinkedList;
    .locals 1
    .parameter "pageIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedList",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    iget-object v0, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    check-cast p0, Ljava/util/LinkedList;

    return-object p0
.end method

.method public set(IILjava/lang/Object;)V
    .locals 1
    .parameter "pageIndex"
    .parameter "pageLocation"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITV;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0, p2, p3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public size()I
    .locals 4

    .prologue
    .line 82
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    const/4 v2, 0x0

    .line 83
    .local v2, size:I
    iget-object v3, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 84
    .local v1, page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 86
    .end local v1           #page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    :cond_0
    return v2
.end method
