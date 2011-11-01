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

.method public addLast(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    .local p1, item:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 332
    .local v0, lastPage:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/util/PagedList;->isPageFull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 334
    invoke-virtual {p0}, Lcom/sonyericsson/util/PagedList;->addPageLast()V

    .line 336
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/util/PagedList;->addToPage(ILjava/lang/Object;)V

    .line 337
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
    .line 319
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

    .line 320
    .local v1, page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    .line 322
    .end local v1           #page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 323
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
    .line 229
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

    .line 230
    .local v1, page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const/4 v2, 0x1

    .line 234
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
    .line 181
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
    .line 264
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    iget v0, p0, Lcom/sonyericsson/util/PagedList;->mMappedPageIndex:I

    return v0
.end method

.method public getMappedPageLocation()I
    .locals 1

    .prologue
    .line 274
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
    .line 340
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    .local p3, item:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 341
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 344
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/util/PagedList;->isPageFull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    invoke-virtual {p0}, Lcom/sonyericsson/util/PagedList;->getMaxPageSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/util/PagedList;->remove(II)Ljava/lang/Object;

    move-result-object v0

    .line 346
    .local v0, lastItem:Ljava/lang/Object;,"TV;"
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 347
    invoke-virtual {p0}, Lcom/sonyericsson/util/PagedList;->addPageLast()V

    .line 349
    :cond_2
    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/sonyericsson/util/PagedList;->insert(IILjava/lang/Object;)V

    .line 352
    .end local v0           #lastItem:Ljava/lang/Object;,"TV;"
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/util/PagedList;->add(IILjava/lang/Object;)V

    .line 353
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
    .line 281
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    new-instance v0, Lcom/sonyericsson/util/PagedList$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/util/PagedList$1;-><init>(Lcom/sonyericsson/util/PagedList;)V

    return-object v0
.end method

.method public mapLocation(I)V
    .locals 4
    .parameter "location"

    .prologue
    .line 245
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonyericsson/util/PagedList;->mMappedPageIndex:I

    .line 246
    iput p1, p0, Lcom/sonyericsson/util/PagedList;->mMappedPageLocation:I

    .line 247
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

    .line 248
    .local v1, page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    iget v2, p0, Lcom/sonyericsson/util/PagedList;->mMappedPageLocation:I

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 249
    iget v2, p0, Lcom/sonyericsson/util/PagedList;->mMappedPageLocation:I

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sonyericsson/util/PagedList;->mMappedPageLocation:I

    .line 250
    iget v2, p0, Lcom/sonyericsson/util/PagedList;->mMappedPageIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonyericsson/util/PagedList;->mMappedPageIndex:I

    goto :goto_0

    .line 255
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
    .line 204
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
    .line 214
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

    .line 215
    .local v1, page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    const/4 v2, 0x1

    .line 219
    .end local v1           #page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
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
    .line 193
    .local p0, this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/sonyericsson/util/PagedList;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<TV;>;"
    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0, p2, p3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 194
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
