.class public Lcom/sonyericsson/storage/Node$Child;
.super Ljava/lang/Object;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/storage/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Child"
.end annotation


# instance fields
.field public clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public node:Lcom/sonyericsson/storage/Node;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V
    .locals 0
    .parameter
    .parameter "_node"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/sonyericsson/storage/Node;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, _clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/storage/Node$Child;->clazz:Ljava/lang/Class;

    .line 47
    iput-object p2, p0, Lcom/sonyericsson/storage/Node$Child;->node:Lcom/sonyericsson/storage/Node;

    .line 48
    return-void
.end method
