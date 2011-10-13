.class public Lcom/sonyericsson/animation/DisabledRenderer;
.super Ljava/lang/Object;
.source "DisabledRenderer.java"

# interfaces
.implements Lcom/sonyericsson/animation/Renderer;
.implements Lcom/sonyericsson/util/Recyclable;


# static fields
.field private static final mRecycleStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/animation/DisabledRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBadgeIcon:Landroid/graphics/Bitmap;

.field private mBadgeOffsetX:I

.field private mBadgeOffsetY:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sonyericsson/animation/DisabledRenderer;->mRecycleStack:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mPaint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mRect:Landroid/graphics/Rect;

    .line 32
    return-void
.end method

.method public static obtain()Lcom/sonyericsson/animation/DisabledRenderer;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sonyericsson/animation/DisabledRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/sonyericsson/animation/DisabledRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/animation/DisabledRenderer;

    .line 38
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sonyericsson/animation/DisabledRenderer;

    invoke-direct {v0}, Lcom/sonyericsson/animation/DisabledRenderer;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z
    .locals 6
    .parameter "view"
    .parameter "canvas"
    .parameter "rect"
    .parameter "now"

    .prologue
    const/4 v5, 0x0

    .line 47
    iget-object v1, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 48
    invoke-static {p1}, Lcom/sonyericsson/util/ViewSnapshot;->getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    .local v0, snapshot:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v5, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 58
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p2, v0, v5, p3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 54
    iget-object v1, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mBadgeOffsetX:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mBadgeOffsetY:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p2, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getCurrentRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "outRect"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 63
    return-void
.end method

.method public offset(IIJ)V
    .locals 0
    .parameter "dx"
    .parameter "dy"
    .parameter "now"

    .prologue
    .line 66
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    .line 43
    sget-object v0, Lcom/sonyericsson/animation/DisabledRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 3
    .parameter "command"
    .parameter "x"
    .parameter "y"
    .parameter "extras"

    .prologue
    const/4 v1, 0x0

    const-string v2, "badge"

    .line 69
    const-string v0, "badge"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 70
    const-string v0, "badge"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    .line 71
    iput p2, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mBadgeOffsetX:I

    .line 72
    iput p3, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mBadgeOffsetY:I

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 75
    iput-object v1, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public start(Landroid/graphics/Rect;IIJ)V
    .locals 4
    .parameter "rect"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "now"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/animation/DisabledRenderer;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const v2, 0x505050

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 82
    return-void
.end method
