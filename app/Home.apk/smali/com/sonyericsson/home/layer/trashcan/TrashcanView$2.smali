.class Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;
.super Ljava/lang/Object;
.source "TrashcanView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/trashcan/TrashcanView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v6, 0x3c23d70a

    const/4 v5, 0x0

    .line 137
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$500(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 138
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$500(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v0

    .line 140
    .local v0, pos:F
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$600(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$700(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$800(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$700(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$600(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$700(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$800(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$700(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 144
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$600(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$700(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$800(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$700(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$600(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$700(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$800(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$700(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 149
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$200(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Lcom/sonyericsson/animation/Renderer;

    move-result-object v1

    const-string v2, "set_alpha"

    const/high16 v3, 0x437f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v5, v4}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 151
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$500(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, p0, v2, v3}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 164
    return-void

    .line 154
    .restart local p0
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v1, v5}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$902(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;Z)Z

    .line 155
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$1000(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-virtual {v1, v5}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->close(I)V

    goto :goto_0
.end method
