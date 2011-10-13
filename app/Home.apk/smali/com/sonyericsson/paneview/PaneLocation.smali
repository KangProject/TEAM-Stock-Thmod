.class public Lcom/sonyericsson/paneview/PaneLocation;
.super Ljava/lang/Object;
.source "PaneLocation.java"

# interfaces
.implements Lcom/sonyericsson/util/Recyclable;


# static fields
.field private static mRecycledLocations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/paneview/PaneLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public drawRect:Landroid/graphics/Rect;

.field public pane:I

.field public zOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sonyericsson/paneview/PaneLocation;->mRecycledLocations:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    .line 62
    return-void
.end method

.method static obtain()Lcom/sonyericsson/paneview/PaneLocation;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/sonyericsson/paneview/PaneLocation;->mRecycledLocations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/sonyericsson/paneview/PaneLocation;

    invoke-direct {v0}, Lcom/sonyericsson/paneview/PaneLocation;-><init>()V

    .line 54
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/paneview/PaneLocation;->mRecycledLocations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/paneview/PaneLocation;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 102
    :goto_0
    return v2

    .line 90
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/paneview/PaneLocation;

    move-object v1, v0

    .line 95
    .local v1, other:Lcom/sonyericsson/paneview/PaneLocation;
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    if-nez v2, :cond_3

    .line 96
    iget-object v2, v1, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    move v2, v4

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 99
    goto :goto_0

    .line 100
    :cond_4
    iget v2, p0, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    iget v3, v1, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    if-eq v2, v3, :cond_5

    move v2, v4

    .line 101
    goto :goto_0

    :cond_5
    move v2, v5

    .line 102
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    .line 78
    sget-object v0, Lcom/sonyericsson/paneview/PaneLocation;->mRecycledLocations:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public set(Lcom/sonyericsson/paneview/PaneLocation;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 70
    iget v0, p1, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    iput v0, p0, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    .line 71
    iget v0, p1, Lcom/sonyericsson/paneview/PaneLocation;->zOrder:I

    iput v0, p0, Lcom/sonyericsson/paneview/PaneLocation;->zOrder:I

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pane "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
