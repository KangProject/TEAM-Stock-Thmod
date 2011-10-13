.class Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;
.super Ljava/util/ArrayList;
.source "ScrollableAppWidgetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionUri:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 598
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 647
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 659
    :goto_0
    return v2

    .line 649
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    .line 650
    goto :goto_0

    .line 651
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 652
    goto :goto_0

    .line 653
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;

    move-object v1, v0

    .line 654
    .local v1, other:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;
    iget-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->mActionUri:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 655
    iget-object v2, v1, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->mActionUri:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v4

    .line 656
    goto :goto_0

    .line 657
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->mActionUri:Ljava/lang/String;

    iget-object v3, v1, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->mActionUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 658
    goto :goto_0

    :cond_4
    move v2, v5

    .line 659
    goto :goto_0
.end method

.method public getActionUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->mActionUri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 642
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionUri(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 606
    iput-object p1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->mActionUri:Ljava/lang/String;

    .line 607
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x22

    .line 615
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 616
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 618
    if-lez v0, :cond_0

    .line 619
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 620
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 621
    .local v1, obj:Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 622
    const-string v4, "<null>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    .end local v1           #obj:Ljava/lang/Object;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_1
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 624
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 626
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 627
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, "\\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 632
    .end local v1           #obj:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_3
    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    iget-object v4, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->mActionUri:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 634
    const-string v4, ",mActionUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    iget-object v4, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->mActionUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
