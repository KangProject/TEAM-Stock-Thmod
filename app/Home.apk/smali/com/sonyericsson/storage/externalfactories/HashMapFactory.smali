.class public Lcom/sonyericsson/storage/externalfactories/HashMapFactory;
.super Lcom/sonyericsson/storage/NodeFactory;
.source "HashMapFactory.java"


# static fields
.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/storage/NodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public fromNode(Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;
    .locals 7
    .parameter "node"

    .prologue
    .line 42
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v3, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/sonyericsson/storage/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 47
    .local v1, children:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/storage/Node$Child;>;"
    if-eqz v1, :cond_0

    .line 48
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/storage/Node$Child;

    .line 49
    .local v0, child:Lcom/sonyericsson/storage/Node$Child;
    iget-object v5, v0, Lcom/sonyericsson/storage/Node$Child;->clazz:Ljava/lang/Class;

    iget-object v6, v0, Lcom/sonyericsson/storage/Node$Child;->node:Lcom/sonyericsson/storage/Node;

    invoke-static {v5, v6}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/storage/externalfactories/EntryObject;

    .line 51
    .local v2, entry:Lcom/sonyericsson/storage/externalfactories/EntryObject;
    iget-object v5, v2, Lcom/sonyericsson/storage/externalfactories/EntryObject;->keyObject:Lcom/sonyericsson/storage/externalfactories/KeyObject;

    iget-object v5, v5, Lcom/sonyericsson/storage/externalfactories/KeyObject;->key:Ljava/lang/Object;

    iget-object v6, v2, Lcom/sonyericsson/storage/externalfactories/EntryObject;->valueObject:Lcom/sonyericsson/storage/externalfactories/ValueObject;

    iget-object v6, v6, Lcom/sonyericsson/storage/externalfactories/ValueObject;->value:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    .end local v0           #child:Lcom/sonyericsson/storage/Node$Child;
    .end local v1           #children:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/storage/Node$Child;>;"
    .end local v2           #entry:Lcom/sonyericsson/storage/externalfactories/EntryObject;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_0
    return-object v3
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 8
    .parameter "object"

    .prologue
    .line 61
    move-object v0, p1

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    .line 63
    .local v3, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    new-instance v5, Lcom/sonyericsson/storage/Node;

    invoke-direct {v5}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 65
    .local v5, node:Lcom/sonyericsson/storage/Node;
    const-string v6, "version"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 67
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 68
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    new-instance v2, Lcom/sonyericsson/storage/externalfactories/EntryObject;

    invoke-direct {v2}, Lcom/sonyericsson/storage/externalfactories/EntryObject;-><init>()V

    .line 70
    .local v2, entryObject:Lcom/sonyericsson/storage/externalfactories/EntryObject;
    new-instance v6, Lcom/sonyericsson/storage/externalfactories/KeyObject;

    invoke-direct {v6}, Lcom/sonyericsson/storage/externalfactories/KeyObject;-><init>()V

    iput-object v6, v2, Lcom/sonyericsson/storage/externalfactories/EntryObject;->keyObject:Lcom/sonyericsson/storage/externalfactories/KeyObject;

    .line 71
    iget-object v6, v2, Lcom/sonyericsson/storage/externalfactories/EntryObject;->keyObject:Lcom/sonyericsson/storage/externalfactories/KeyObject;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v6, Lcom/sonyericsson/storage/externalfactories/KeyObject;->key:Ljava/lang/Object;

    .line 73
    new-instance v6, Lcom/sonyericsson/storage/externalfactories/ValueObject;

    invoke-direct {v6}, Lcom/sonyericsson/storage/externalfactories/ValueObject;-><init>()V

    iput-object v6, v2, Lcom/sonyericsson/storage/externalfactories/EntryObject;->valueObject:Lcom/sonyericsson/storage/externalfactories/ValueObject;

    .line 74
    iget-object v6, v2, Lcom/sonyericsson/storage/externalfactories/EntryObject;->valueObject:Lcom/sonyericsson/storage/externalfactories/ValueObject;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v6, Lcom/sonyericsson/storage/externalfactories/ValueObject;->value:Ljava/lang/Object;

    .line 76
    const-class v6, Lcom/sonyericsson/storage/externalfactories/EntryObject;

    invoke-static {v2}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/storage/Node;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    goto :goto_0

    .line 79
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .end local v2           #entryObject:Lcom/sonyericsson/storage/externalfactories/EntryObject;
    :cond_0
    return-object v5
.end method
