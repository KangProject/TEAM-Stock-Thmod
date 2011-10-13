.class public Lcom/sonyericsson/storage/externalfactories/PagedListFactory;
.super Lcom/sonyericsson/storage/NodeFactory;
.source "PagedListFactory.java"


# static fields
.field private static final KEY_PAGE_SIZE:Ljava/lang/String; = "pagesize"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/storage/NodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public fromNode(Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;
    .locals 11
    .parameter "node"

    .prologue
    const-class v10, Ljava/util/LinkedList;

    .line 34
    const/4 v7, 0x0

    .line 36
    .local v7, pagedList:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Ljava/lang/Object;>;"
    if-eqz p1, :cond_1

    .line 37
    new-instance v7, Lcom/sonyericsson/util/PagedList;

    .end local v7           #pagedList:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Ljava/lang/Object;>;"
    const-string v8, "pagesize"

    const v9, 0x7fffffff

    invoke-virtual {p1, v8, v9}, Lcom/sonyericsson/storage/Node;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/sonyericsson/util/PagedList;-><init>(I)V

    .line 39
    .restart local v7       #pagedList:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Ljava/lang/Object;>;"
    const-class v8, Ljava/util/LinkedList;

    invoke-virtual {p1, v10}, Lcom/sonyericsson/storage/Node;->getChildren(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 41
    .local v1, children:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/storage/Node;>;"
    if-eqz v1, :cond_1

    .line 42
    const/4 v5, -0x1

    .line 43
    .local v5, pageIndex:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/storage/Node;

    .line 44
    .local v0, child:Lcom/sonyericsson/storage/Node;
    add-int/lit8 v5, v5, 0x1

    .line 45
    invoke-virtual {v7}, Lcom/sonyericsson/util/PagedList;->addPageLast()V

    .line 48
    const-class v8, Ljava/util/LinkedList;

    invoke-static {v10, v0}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 51
    .local v4, page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Object;>;"
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 52
    .local v6, pageValue:Ljava/lang/Object;
    invoke-virtual {v7, v5, v6}, Lcom/sonyericsson/util/PagedList;->addToPage(ILjava/lang/Object;)V

    goto :goto_0

    .line 58
    .end local v0           #child:Lcom/sonyericsson/storage/Node;
    .end local v1           #children:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/storage/Node;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #page:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Object;>;"
    .end local v5           #pageIndex:I
    .end local v6           #pageValue:Ljava/lang/Object;
    :cond_1
    return-object v7
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 7
    .parameter "object"

    .prologue
    .line 63
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/util/PagedList;

    move-object v4, v0

    .line 65
    .local v4, pagedList:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<*>;"
    new-instance v1, Lcom/sonyericsson/storage/Node;

    invoke-direct {v1}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 66
    .local v1, node:Lcom/sonyericsson/storage/Node;
    const-string v5, "version"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 67
    const-string v5, "pagesize"

    invoke-virtual {v4}, Lcom/sonyericsson/util/PagedList;->getMaxPageSize()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 69
    const/4 v2, 0x0

    .local v2, page:I
    :goto_0
    invoke-virtual {v4}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 70
    invoke-virtual {v4, v2}, Lcom/sonyericsson/util/PagedList;->getPage(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 71
    .local v3, pageList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<*>;"
    const-class v5, Ljava/util/LinkedList;

    invoke-static {v3}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/sonyericsson/storage/Node;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v3           #pageList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<*>;"
    :cond_0
    return-object v1
.end method
