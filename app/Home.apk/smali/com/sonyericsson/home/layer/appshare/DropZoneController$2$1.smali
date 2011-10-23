.class Lcom/sonyericsson/home/layer/appshare/DropZoneController$2$1;
.super Ljava/lang/Object;
.source "DropZoneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2$1;->this$1:Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x3c23d70a

    .line 183
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2$1;->this$1:Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->access$100(Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 185
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2$1;->this$1:Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->access$100(Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    const/high16 v2, 0x3f80

    add-float v0, v1, v2

    .line 186
    .local v0, scale:F
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2$1;->this$1:Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$200(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2$1;->this$1:Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;

    iget v2, v2, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->val$dropZoneHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2$1;->this$1:Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$200(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 189
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2$1;->this$1:Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->access$100(Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2$1;->this$1:Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$200(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 192
    :cond_0
    return-void
.end method
