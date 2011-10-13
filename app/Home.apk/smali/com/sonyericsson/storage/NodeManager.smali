.class public Lcom/sonyericsson/storage/NodeManager;
.super Ljava/lang/Object;
.source "NodeManager.java"


# static fields
.field private static final mFactories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/sonyericsson/storage/NodeFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/storage/NodeManager;->mFactories:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "node"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/sonyericsson/storage/Node;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Lcom/sonyericsson/storage/NodeManager;->mFactories:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast p0, Lcom/sonyericsson/storage/NodeFactory;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/storage/NodeFactory;->fromNode(Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V
    .locals 1
    .parameter
    .parameter "factory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/sonyericsson/storage/NodeFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Lcom/sonyericsson/storage/NodeManager;->mFactories:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public static toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 2
    .parameter "object"

    .prologue
    .line 47
    sget-object v0, Lcom/sonyericsson/storage/NodeManager;->mFactories:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/storage/NodeFactory;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/storage/NodeFactory;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v0

    return-object v0
.end method
