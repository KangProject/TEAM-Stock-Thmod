.class public Lcom/sonyericsson/util/ViewSnapshot;
.super Ljava/lang/Object;
.source "ViewSnapshot.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "view"

    .prologue
    .line 35
    instance-of v3, p0, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    if-eqz v3, :cond_0

    .line 37
    move-object v0, p0

    check-cast v0, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    move-object v2, v0

    .line 38
    .local v2, root:Lcom/sonyericsson/home/widget/AdvWidgetRoot;
    invoke-virtual {v2}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->getSnapshot()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 44
    .end local v2           #root:Lcom/sonyericsson/home/widget/AdvWidgetRoot;
    :goto_0
    return-object v3

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 41
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 43
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, bitmap:Landroid/graphics/Bitmap;
    move-object v3, v1

    .line 44
    goto :goto_0
.end method
