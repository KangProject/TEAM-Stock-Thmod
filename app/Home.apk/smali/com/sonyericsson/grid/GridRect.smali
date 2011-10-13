.class public Lcom/sonyericsson/grid/GridRect;
.super Ljava/lang/Object;
.source "GridRect.java"


# instance fields
.field public col:I

.field public colSpan:I

.field public row:I

.field public rowSpan:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/grid/GridRect;)V
    .locals 0
    .parameter "gridRect"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/sonyericsson/grid/GridRect;->set(Lcom/sonyericsson/grid/GridRect;)V

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 102
    :goto_0
    return v2

    .line 89
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/grid/GridRect;

    move-object v1, v0

    .line 94
    .local v1, other:Lcom/sonyericsson/grid/GridRect;
    iget v2, p0, Lcom/sonyericsson/grid/GridRect;->col:I

    iget v3, v1, Lcom/sonyericsson/grid/GridRect;->col:I

    if-eq v2, v3, :cond_3

    move v2, v4

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    iget v2, p0, Lcom/sonyericsson/grid/GridRect;->row:I

    iget v3, v1, Lcom/sonyericsson/grid/GridRect;->row:I

    if-eq v2, v3, :cond_4

    move v2, v4

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    iget v2, p0, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    iget v3, v1, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    if-eq v2, v3, :cond_5

    move v2, v4

    .line 99
    goto :goto_0

    .line 100
    :cond_5
    iget v2, p0, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    iget v3, v1, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    if-eq v2, v3, :cond_6

    move v2, v4

    .line 101
    goto :goto_0

    :cond_6
    move v2, v5

    .line 102
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public overlaps(Lcom/sonyericsson/grid/GridRect;)Z
    .locals 3
    .parameter "that"

    .prologue
    .line 59
    iget v0, p1, Lcom/sonyericsson/grid/GridRect;->col:I

    iget v1, p0, Lcom/sonyericsson/grid/GridRect;->col:I

    iget v2, p0, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sonyericsson/grid/GridRect;->col:I

    iget v1, p1, Lcom/sonyericsson/grid/GridRect;->col:I

    iget v2, p1, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/sonyericsson/grid/GridRect;->row:I

    iget v1, p0, Lcom/sonyericsson/grid/GridRect;->row:I

    iget v2, p0, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sonyericsson/grid/GridRect;->row:I

    iget v1, p1, Lcom/sonyericsson/grid/GridRect;->row:I

    iget v2, p1, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Lcom/sonyericsson/grid/GridRect;)V
    .locals 1
    .parameter "gridRect"

    .prologue
    .line 69
    iget v0, p1, Lcom/sonyericsson/grid/GridRect;->col:I

    iput v0, p0, Lcom/sonyericsson/grid/GridRect;->col:I

    .line 70
    iget v0, p1, Lcom/sonyericsson/grid/GridRect;->row:I

    iput v0, p0, Lcom/sonyericsson/grid/GridRect;->row:I

    .line 71
    iget v0, p1, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    iput v0, p0, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    .line 72
    iget v0, p1, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    iput v0, p0, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, ", "

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/grid/GridRect;->col:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/grid/GridRect;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") + ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
