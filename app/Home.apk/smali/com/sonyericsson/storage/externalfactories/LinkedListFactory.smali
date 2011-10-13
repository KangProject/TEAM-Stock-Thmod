.class public Lcom/sonyericsson/storage/externalfactories/LinkedListFactory;
.super Lcom/sonyericsson/storage/NodeFactory;
.source "LinkedListFactory.java"


# static fields
.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonyericsson/storage/NodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public fromNode(Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;
    .locals 7
    .parameter "node"

    .prologue
    .line 38
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 40
    .local v3, linkedList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/sonyericsson/storage/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 43
    .local v1, children:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/storage/Node$Child;>;"
    if-eqz v1, :cond_0

    .line 44
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/storage/Node$Child;

    .line 45
    .local v0, child:Lcom/sonyericsson/storage/Node$Child;
    iget-object v5, v0, Lcom/sonyericsson/storage/Node$Child;->clazz:Ljava/lang/Class;

    iget-object v6, v0, Lcom/sonyericsson/storage/Node$Child;->node:Lcom/sonyericsson/storage/Node;

    invoke-static {v5, v6}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v4

    .line 46
    .local v4, listItem:Ljava/lang/Object;
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    .end local v0           #child:Lcom/sonyericsson/storage/Node$Child;
    .end local v1           #children:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/storage/Node$Child;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #listItem:Ljava/lang/Object;
    :cond_0
    return-object v3
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 7
    .parameter "object"

    .prologue
    .line 57
    move-object v0, p1

    check-cast v0, Ljava/util/LinkedList;

    move-object v2, v0

    .line 59
    .local v2, linkedList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<*>;"
    new-instance v4, Lcom/sonyericsson/storage/Node;

    invoke-direct {v4}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 61
    .local v4, node:Lcom/sonyericsson/storage/Node;
    const-string v5, "version"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 64
    .local v3, listItem:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v3}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/storage/Node;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    goto :goto_0

    .line 67
    .end local v3           #listItem:Ljava/lang/Object;
    :cond_0
    return-object v4
.end method
