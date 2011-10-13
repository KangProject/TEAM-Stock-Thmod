.class public Lcom/sonyericsson/animation/SpringMoveRenderer;
.super Ljava/lang/Object;
.source "SpringMoveRenderer.java"

# interfaces
.implements Lcom/sonyericsson/animation/Renderer;
.implements Lcom/sonyericsson/util/Recyclable;


# static fields
.field private static final mRecycleStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/animation/SpringMoveRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

.field private final mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

.field private mStartRect:Landroid/graphics/Rect;

.field private mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mRecycleStack:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x42c8

    const/high16 v2, 0x4000

    const v1, 0x3f666666

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mStartRect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    .line 46
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/util/SpringDynamics;->setFriction(F)V

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3, v1}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/util/SpringDynamics;->setFriction(F)V

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v3, v1}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 52
    return-void
.end method

.method private drawView(Landroid/view/View;Landroid/graphics/Canvas;II)V
    .locals 4
    .parameter "view"
    .parameter "canvas"
    .parameter "top"
    .parameter "left"

    .prologue
    .line 95
    invoke-static {p1}, Lcom/sonyericsson/util/ViewSnapshot;->getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    int-to-float v1, p4

    int-to-float v2, p3

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 99
    :cond_0
    return-void
.end method

.method public static obtain()Lcom/sonyericsson/animation/SpringMoveRenderer;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/animation/SpringMoveRenderer;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sonyericsson/animation/SpringMoveRenderer;

    invoke-direct {v0}, Lcom/sonyericsson/animation/SpringMoveRenderer;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z
    .locals 6
    .parameter "view"
    .parameter "canvas"
    .parameter "targetRect"
    .parameter "now"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 68
    iget-object v2, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    iget v3, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 69
    iget-object v2, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    iget v3, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 71
    iget-object v2, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    iget v3, p3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 72
    iget-object v2, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    iget v3, p3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 74
    iget-boolean v2, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mStopped:Z

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    iget v3, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2, v3, v5, p4, p5}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 76
    iget-object v2, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    iget v3, p3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, v3, v5, p4, p5}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 82
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v2

    float-to-int v0, v2

    .line 83
    .local v0, left:I
    iget-object v2, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v2

    float-to-int v1, v2

    .line 85
    .local v1, top:I
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/sonyericsson/animation/SpringMoveRenderer;->drawView(Landroid/view/View;Landroid/graphics/Canvas;II)V

    .line 87
    iget-object v2, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2, v4, v4}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2, v4, v4}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    const/4 v2, 0x0

    .line 90
    :goto_1
    return v2

    .line 78
    .end local v0           #left:I
    .end local v1           #top:I
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2, p4, p5}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 79
    iget-object v2, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2, p4, p5}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    goto :goto_0

    .line 90
    .restart local v0       #left:I
    .restart local v1       #top:I
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getCurrentRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "outRect"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 118
    return-void
.end method

.method public offset(IIJ)V
    .locals 5
    .parameter "dx"
    .parameter "dy"
    .parameter "now"

    .prologue
    .line 121
    iget-object v2, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v0

    .line 122
    .local v0, left:F
    iget-object v2, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    .line 123
    .local v1, top:F
    iget-object v2, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    int-to-float v3, p1

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v4}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v4

    invoke-virtual {v2, v3, v4, p3, p4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 124
    iget-object v2, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    int-to-float v3, p2

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v4}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v4

    invoke-virtual {v2, v3, v4, p3, p4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 125
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .parameter "command"
    .parameter "x"
    .parameter "y"
    .parameter "extras"

    .prologue
    .line 129
    return-void
.end method

.method public start(Landroid/graphics/Rect;IIJ)V
    .locals 3
    .parameter "startRect"
    .parameter "xOffset"
    .parameter "yOffst"
    .parameter "now"

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2, p4, p5}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2, p4, p5}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mStopped:Z

    .line 107
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/animation/SpringMoveRenderer;->mStopped:Z

    .line 112
    return-void
.end method
