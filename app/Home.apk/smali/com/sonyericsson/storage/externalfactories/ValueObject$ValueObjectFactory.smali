.class public Lcom/sonyericsson/storage/externalfactories/ValueObject$ValueObjectFactory;
.super Lcom/sonyericsson/storage/NodeFactory;
.source "ValueObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/storage/externalfactories/ValueObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueObjectFactory"
.end annotation


# static fields
.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sonyericsson/storage/NodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public fromNode(Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;
    .locals 5
    .parameter "node"

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/sonyericsson/storage/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 49
    .local v1, children:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/storage/Node$Child;>;"
    new-instance v2, Lcom/sonyericsson/storage/externalfactories/ValueObject;

    invoke-direct {v2}, Lcom/sonyericsson/storage/externalfactories/ValueObject;-><init>()V

    .line 50
    .local v2, value:Lcom/sonyericsson/storage/externalfactories/ValueObject;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/storage/Node$Child;

    .line 52
    .local v0, child:Lcom/sonyericsson/storage/Node$Child;
    iget-object v3, v0, Lcom/sonyericsson/storage/Node$Child;->clazz:Ljava/lang/Class;

    iget-object v4, v0, Lcom/sonyericsson/storage/Node$Child;->node:Lcom/sonyericsson/storage/Node;

    invoke-static {v3, v4}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/sonyericsson/storage/externalfactories/ValueObject;->value:Ljava/lang/Object;

    .line 55
    .end local v0           #child:Lcom/sonyericsson/storage/Node$Child;
    :cond_0
    return-object v2
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 5
    .parameter "object"

    .prologue
    .line 60
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/storage/externalfactories/ValueObject;

    move-object v2, v0

    .line 61
    .local v2, value:Lcom/sonyericsson/storage/externalfactories/ValueObject;
    new-instance v1, Lcom/sonyericsson/storage/Node;

    invoke-direct {v1}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 62
    .local v1, node:Lcom/sonyericsson/storage/Node;
    const-string v3, "version"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 63
    iget-object v3, v2, Lcom/sonyericsson/storage/externalfactories/ValueObject;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 64
    iget-object v3, v2, Lcom/sonyericsson/storage/externalfactories/ValueObject;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, v2, Lcom/sonyericsson/storage/externalfactories/ValueObject;->value:Ljava/lang/Object;

    invoke-static {v4}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 66
    :cond_0
    return-object v1
.end method
