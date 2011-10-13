.class public Lcom/sonyericsson/storage/externalfactories/KeyObject$KeyObjectFactory;
.super Lcom/sonyericsson/storage/NodeFactory;
.source "KeyObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/storage/externalfactories/KeyObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyObjectFactory"
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
    new-instance v2, Lcom/sonyericsson/storage/externalfactories/KeyObject;

    invoke-direct {v2}, Lcom/sonyericsson/storage/externalfactories/KeyObject;-><init>()V

    .line 50
    .local v2, key:Lcom/sonyericsson/storage/externalfactories/KeyObject;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/storage/Node$Child;

    .line 51
    .local v0, child:Lcom/sonyericsson/storage/Node$Child;
    iget-object v3, v0, Lcom/sonyericsson/storage/Node$Child;->clazz:Ljava/lang/Class;

    iget-object v4, v0, Lcom/sonyericsson/storage/Node$Child;->node:Lcom/sonyericsson/storage/Node;

    invoke-static {v3, v4}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/sonyericsson/storage/externalfactories/KeyObject;->key:Ljava/lang/Object;

    .line 53
    return-object v2
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 5
    .parameter "object"

    .prologue
    .line 58
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/storage/externalfactories/KeyObject;

    move-object v1, v0

    .line 59
    .local v1, key:Lcom/sonyericsson/storage/externalfactories/KeyObject;
    new-instance v2, Lcom/sonyericsson/storage/Node;

    invoke-direct {v2}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 60
    .local v2, node:Lcom/sonyericsson/storage/Node;
    const-string v3, "version"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 61
    iget-object v3, v1, Lcom/sonyericsson/storage/externalfactories/KeyObject;->key:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, v1, Lcom/sonyericsson/storage/externalfactories/KeyObject;->key:Ljava/lang/Object;

    invoke-static {v4}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 62
    return-object v2
.end method
