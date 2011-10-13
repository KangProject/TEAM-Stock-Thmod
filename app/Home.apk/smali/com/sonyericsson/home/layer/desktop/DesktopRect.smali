.class public Lcom/sonyericsson/home/layer/desktop/DesktopRect;
.super Lcom/sonyericsson/grid/GridRect;
.source "DesktopRect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/desktop/DesktopRect$DesktopRectFactory;
    }
.end annotation


# instance fields
.field public pane:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/grid/GridRect;-><init>()V

    .line 22
    return-void
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

    .line 97
    :goto_0
    return v2

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/grid/GridRect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

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

    check-cast v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-object v1, v0

    .line 95
    .local v1, other:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    iget v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    iget v3, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    if-eq v2, v3, :cond_3

    move v2, v4

    .line 96
    goto :goto_0

    :cond_3
    move v2, v5

    .line 97
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

.method public overlaps(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z
    .locals 2
    .parameter "that"

    .prologue
    .line 70
    iget v0, p1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    iget v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    if-ne v0, v1, :cond_0

    .line 71
    invoke-super {p0, p1}, Lcom/sonyericsson/grid/GridRect;->overlaps(Lcom/sonyericsson/grid/GridRect;)Z

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/sonyericsson/grid/GridRect;->set(Lcom/sonyericsson/grid/GridRect;)V

    .line 78
    iget v0, p1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 79
    return-void
.end method
