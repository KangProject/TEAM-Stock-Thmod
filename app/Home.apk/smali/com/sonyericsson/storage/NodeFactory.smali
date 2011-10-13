.class public abstract Lcom/sonyericsson/storage/NodeFactory;
.super Ljava/lang/Object;
.source "NodeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract fromNode(Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;
.end method

.method public abstract toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
.end method
