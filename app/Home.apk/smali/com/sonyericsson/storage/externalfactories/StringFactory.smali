.class public Lcom/sonyericsson/storage/externalfactories/StringFactory;
.super Lcom/sonyericsson/storage/NodeFactory;
.source "StringFactory.java"


# static fields
.field private static final KEY_STRING:Ljava/lang/String; = "string"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sonyericsson/storage/NodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public fromNode(Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;
    .locals 1
    .parameter "node"

    .prologue
    .line 33
    const-string v0, "string"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 2
    .parameter "object"

    .prologue
    .line 38
    new-instance v0, Lcom/sonyericsson/storage/Node;

    invoke-direct {v0}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 39
    .local v0, node:Lcom/sonyericsson/storage/Node;
    const-string v1, "string"

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-object v0
.end method
