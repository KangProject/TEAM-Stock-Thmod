.class Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$2;
.super Ljava/lang/Object;
.source "DesktopTransformer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->fillAlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;)V
    .locals 0
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$2;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/RectF;Landroid/graphics/RectF;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 487
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v0, v2

    .line 496
    :goto_0
    return v0

    .line 489
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 490
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    move v0, v2

    .line 491
    goto :goto_0

    :cond_1
    move v0, v3

    .line 493
    goto :goto_0

    :cond_2
    move v0, v3

    .line 496
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 485
    check-cast p1, Landroid/graphics/RectF;

    .end local p1
    check-cast p2, Landroid/graphics/RectF;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$2;->compare(Landroid/graphics/RectF;Landroid/graphics/RectF;)I

    move-result v0

    return v0
.end method
