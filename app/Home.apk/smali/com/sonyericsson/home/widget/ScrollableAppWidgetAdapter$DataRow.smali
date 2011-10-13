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
    .line 593
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

    .line 642
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 654
    :goto_0
    return v2

    .line 644
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    .line 645
    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 647
    goto :goto_0

    .line 648
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;

    move-object v1, v0

    .line 649
    .local v1, other:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;
    iget-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->mActionUri:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 650
    iget-object v2, v1, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->mActionUri:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v4

    .line 651
    goto :goto_0

    .line 652
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->mActionUri:Ljava/lang/String;

    iget-object v3, v1, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->mActionUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 653
    goto :goto_0

    :cond_4
    move v2, v5

    .line 654
    goto :goto_0
.end method

.method public getActionUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->mActionUri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 637
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionUri(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 601
    iput-object p1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->mActionUri:Ljava/lang/String;

    .line 602
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x22

    .line 610
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 611
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 613
    if-lez v0, :cond_0

    .line 614
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 615
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 616
    .local v1, obj:Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 617
    const-string v4, "<null>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    .end local v1           #obj:Ljava/lang/Object;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_1
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 619
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 621
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 622
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

    .line 623
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 627
    .end local v1           #obj:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_3
    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    iget-object v4, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->mActionUri:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 629
    const-string v4, ",mActionUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    iget-object v4, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->mActionUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 632
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
