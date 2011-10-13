.class public Lcom/sonyericsson/storage/externalfactories/EntryObject$EntryObjectFactory;
.super Lcom/sonyericsson/storage/NodeFactory;
.source "EntryObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/storage/externalfactories/EntryObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryObjectFactory"
.end annotation


# static fields
.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sonyericsson/storage/NodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public fromNode(Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;
    .locals 6
    .parameter "node"

    .prologue
    const-class v5, Lcom/sonyericsson/storage/externalfactories/ValueObject;

    const-class v4, Lcom/sonyericsson/storage/externalfactories/KeyObject;

    .line 48
    const-class v3, Lcom/sonyericsson/storage/externalfactories/KeyObject;

    const-class v3, Lcom/sonyericsson/storage/externalfactories/KeyObject;

    invoke-virtual {p1, v4}, Lcom/sonyericsson/storage/Node;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/storage/externalfactories/KeyObject;

    .line 50
    .local v1, key:Lcom/sonyericsson/storage/externalfactories/KeyObject;
    const-class v3, Lcom/sonyericsson/storage/externalfactories/ValueObject;

    const-class v3, Lcom/sonyericsson/storage/externalfactories/ValueObject;

    invoke-virtual {p1, v5}, Lcom/sonyericsson/storage/Node;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/storage/externalfactories/ValueObject;

    .line 53
    .local v2, value:Lcom/sonyericsson/storage/externalfactories/ValueObject;
    new-instance v0, Lcom/sonyericsson/storage/externalfactories/EntryObject;

    invoke-direct {v0}, Lcom/sonyericsson/storage/externalfactories/EntryObject;-><init>()V

    .line 54
    .local v0, entry:Lcom/sonyericsson/storage/externalfactories/EntryObject;
    iput-object v1, v0, Lcom/sonyericsson/storage/externalfactories/EntryObject;->keyObject:Lcom/sonyericsson/storage/externalfactories/KeyObject;

    .line 55
    iput-object v2, v0, Lcom/sonyericsson/storage/externalfactories/EntryObject;->valueObject:Lcom/sonyericsson/storage/externalfactories/ValueObject;

    .line 57
    return-object v0
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 5
    .parameter "object"

    .prologue
    .line 62
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/storage/externalfactories/EntryObject;

    move-object v1, v0

    .line 64
    .local v1, entry:Lcom/sonyericsson/storage/externalfactories/EntryObject;
    new-instance v2, Lcom/sonyericsson/storage/Node;

    invoke-direct {v2}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 65
    .local v2, node:Lcom/sonyericsson/storage/Node;
    const-string v3, "version"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 66
    iget-object v3, v1, Lcom/sonyericsson/storage/externalfactories/EntryObject;->keyObject:Lcom/sonyericsson/storage/externalfactories/KeyObject;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, v1, Lcom/sonyericsson/storage/externalfactories/EntryObject;->keyObject:Lcom/sonyericsson/storage/externalfactories/KeyObject;

    invoke-static {v4}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 67
    iget-object v3, v1, Lcom/sonyericsson/storage/externalfactories/EntryObject;->valueObject:Lcom/sonyericsson/storage/externalfactories/ValueObject;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, v1, Lcom/sonyericsson/storage/externalfactories/EntryObject;->valueObject:Lcom/sonyericsson/storage/externalfactories/ValueObject;

    invoke-static {v4}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 69
    return-object v2
.end method
