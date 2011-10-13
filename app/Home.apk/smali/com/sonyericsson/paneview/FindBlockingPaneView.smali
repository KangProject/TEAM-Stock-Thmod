.class public Lcom/sonyericsson/paneview/FindBlockingPaneView;
.super Lcom/sonyericsson/paneview/PaneView;
.source "FindBlockingPaneView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/paneview/PaneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected findViewTraversal(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/sonyericsson/paneview/FindBlockingPaneView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 43
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/paneview/FindBlockingPaneView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
