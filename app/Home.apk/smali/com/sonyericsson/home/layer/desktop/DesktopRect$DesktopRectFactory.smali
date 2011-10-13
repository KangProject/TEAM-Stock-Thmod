.class public Lcom/sonyericsson/home/layer/desktop/DesktopRect$DesktopRectFactory;
.super Lcom/sonyericsson/storage/NodeFactory;
.source "DesktopRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DesktopRectFactory"
.end annotation


# static fields
.field private static final KEY_CELLX:Ljava/lang/String; = "cellx"

.field private static final KEY_CELLY:Ljava/lang/String; = "celly"

.field private static final KEY_PANE:Ljava/lang/String; = "pane"

.field private static final KEY_SPANX:Ljava/lang/String; = "spanx"

.field private static final KEY_SPANY:Ljava/lang/String; = "spany"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sonyericsson/storage/NodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public fromNode(Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;
    .locals 4
    .parameter "node"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 42
    .local v0, location:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    const-string v1, "pane"

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/storage/Node;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 43
    const-string v1, "cellx"

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/storage/Node;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 44
    const-string v1, "celly"

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/storage/Node;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 45
    const-string v1, "spanx"

    invoke-virtual {p1, v1, v3}, Lcom/sonyericsson/storage/Node;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 46
    const-string v1, "spany"

    invoke-virtual {p1, v1, v3}, Lcom/sonyericsson/storage/Node;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 48
    return-object v0
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 5
    .parameter "object"

    .prologue
    .line 53
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-object v1, v0

    .line 54
    .local v1, location:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    new-instance v2, Lcom/sonyericsson/storage/Node;

    invoke-direct {v2}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 56
    .local v2, node:Lcom/sonyericsson/storage/Node;
    const-string v3, "version"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 57
    const-string v3, "pane"

    iget v4, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 58
    const-string v3, "cellx"

    iget v4, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 59
    const-string v3, "celly"

    iget v4, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 60
    const-string v3, "spanx"

    iget v4, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 61
    const-string v3, "spany"

    iget v4, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 63
    return-object v2
.end method
