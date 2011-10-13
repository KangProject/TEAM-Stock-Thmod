.class final Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$1;
.super Ljava/lang/Object;
.source "DesktopTransformer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;)I
    .locals 2
    .parameter "t1"
    .parameter "t2"

    .prologue
    .line 81
    iget v0, p1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->zOrder:I

    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->zOrder:I

    if-ge v0, v1, :cond_0

    .line 82
    const/4 v0, -0x1

    .line 87
    :goto_0
    return v0

    .line 83
    :cond_0
    iget v0, p1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->zOrder:I

    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;->zOrder:I

    if-le v0, v1, :cond_1

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    check-cast p1, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .end local p1
    check-cast p2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$1;->compare(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;)I

    move-result v0

    return v0
.end method
