.class public Lcom/sonyericsson/storage/externalfactories/RectFactory;
.super Lcom/sonyericsson/storage/NodeFactory;
.source "RectFactory.java"


# static fields
.field private static final KEY_RECT_BOTTOM:Ljava/lang/String; = "bottom"

.field private static final KEY_RECT_LEFT:Ljava/lang/String; = "left"

.field private static final KEY_RECT_RIGHT:Ljava/lang/String; = "right"

.field private static final KEY_RECT_TOP:Ljava/lang/String; = "top"


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
    .locals 3
    .parameter "node"

    .prologue
    const/4 v2, 0x0

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .local v0, rect:Landroid/graphics/Rect;
    const-string v1, "left"

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/storage/Node;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 45
    const-string v1, "top"

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/storage/Node;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 46
    const-string v1, "right"

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/storage/Node;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 47
    const-string v1, "bottom"

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/storage/Node;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 49
    return-object v0
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 5
    .parameter "object"

    .prologue
    .line 54
    move-object v0, p1

    check-cast v0, Landroid/graphics/Rect;

    move-object v2, v0

    .line 56
    .local v2, rect:Landroid/graphics/Rect;
    new-instance v1, Lcom/sonyericsson/storage/Node;

    invoke-direct {v1}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 58
    .local v1, node:Lcom/sonyericsson/storage/Node;
    const-string v3, "left"

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 59
    const-string v3, "top"

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 60
    const-string v3, "right"

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 61
    const-string v3, "bottom"

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 63
    return-object v1
.end method
