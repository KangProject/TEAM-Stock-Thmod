.class public Lcom/sonyericsson/storage/externalfactories/ArrayListFactory;
.super Lcom/sonyericsson/storage/NodeFactory;
.source "ArrayListFactory.java"


# static fields
.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/storage/NodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public fromNode(Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;
    .locals 10
    .parameter "node"

    .prologue
    const/4 v9, 0x1

    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p1, :cond_1

    .line 40
    const-string v7, "version"

    invoke-virtual {p1, v7, v9}, Lcom/sonyericsson/storage/Node;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 42
    .local v6, version:I
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .restart local v0       #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/storage/Node;->getChildren()Ljava/util/List;

    move-result-object v2

    .line 46
    .local v2, children:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/storage/Node$Child;>;"
    if-eqz v2, :cond_1

    .line 47
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/storage/Node$Child;

    .line 48
    .local v1, child:Lcom/sonyericsson/storage/Node$Child;
    if-ne v6, v9, :cond_0

    .line 50
    iget-object v7, v1, Lcom/sonyericsson/storage/Node$Child;->clazz:Ljava/lang/Class;

    iget-object v8, v1, Lcom/sonyericsson/storage/Node$Child;->node:Lcom/sonyericsson/storage/Node;

    invoke-static {v7, v8}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v4

    .line 51
    .local v4, listItem:Ljava/lang/Object;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    .end local v4           #listItem:Ljava/lang/Object;
    :cond_0
    iget-object v7, v1, Lcom/sonyericsson/storage/Node$Child;->clazz:Ljava/lang/Class;

    iget-object v8, v1, Lcom/sonyericsson/storage/Node$Child;->node:Lcom/sonyericsson/storage/Node;

    invoke-static {v7, v8}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/storage/externalfactories/ValueObject;

    .line 57
    .local v5, listValue:Lcom/sonyericsson/storage/externalfactories/ValueObject;
    iget-object v7, v5, Lcom/sonyericsson/storage/externalfactories/ValueObject;->value:Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v1           #child:Lcom/sonyericsson/storage/Node$Child;
    .end local v2           #children:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/storage/Node$Child;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #listValue:Lcom/sonyericsson/storage/externalfactories/ValueObject;
    .end local v6           #version:I
    :cond_1
    return-object v0
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 8
    .parameter "object"

    .prologue
    .line 68
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 70
    .local v1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    new-instance v4, Lcom/sonyericsson/storage/Node;

    invoke-direct {v4}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 72
    .local v4, node:Lcom/sonyericsson/storage/Node;
    const-string v6, "version"

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 74
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 75
    .local v3, listItem:Ljava/lang/Object;
    new-instance v5, Lcom/sonyericsson/storage/externalfactories/ValueObject;

    invoke-direct {v5}, Lcom/sonyericsson/storage/externalfactories/ValueObject;-><init>()V

    .line 76
    .local v5, value:Lcom/sonyericsson/storage/externalfactories/ValueObject;
    iput-object v3, v5, Lcom/sonyericsson/storage/externalfactories/ValueObject;->value:Ljava/lang/Object;

    .line 77
    const-class v6, Lcom/sonyericsson/storage/externalfactories/ValueObject;

    invoke-static {v5}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sonyericsson/storage/Node;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    goto :goto_0

    .line 80
    .end local v3           #listItem:Ljava/lang/Object;
    .end local v5           #value:Lcom/sonyericsson/storage/externalfactories/ValueObject;
    :cond_0
    return-object v4
.end method
