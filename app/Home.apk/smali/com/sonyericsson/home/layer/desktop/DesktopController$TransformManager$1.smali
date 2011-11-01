.class Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 384
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 385
    .local v0, now:J
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 387
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v3

    const v4, 0x3dcccccd

    const v5, 0x3c23d70a

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v3

    const/high16 v4, 0x3f00

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 389
    const/4 v2, 0x0

    .line 390
    .local v2, progress:F
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v0, v1}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 391
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$300(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V

    .line 392
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$400(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V

    .line 403
    .end local v2           #progress:F
    :goto_0
    return-void

    .line 394
    :cond_0
    const/high16 v2, 0x3f80

    .line 395
    .restart local v2       #progress:F
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4, v6, v0, v1}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 396
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v4

    invoke-static {v3, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$500(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;F)V

    .line 397
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$300(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V

    goto :goto_0

    .line 400
    .end local v2           #progress:F
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v4

    invoke-static {v3, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$500(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;F)V

    .line 401
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    iget-object v3, v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$600(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
