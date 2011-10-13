.class Lcom/sonyericsson/home/layer/stage/StageController$3$2$1;
.super Ljava/lang/Object;
.source "StageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/stage/StageController$3$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/home/layer/stage/StageController$3$2;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/stage/StageController$3$2;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController$3$2$1;->this$2:Lcom/sonyericsson/home/layer/stage/StageController$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$3$2$1;->this$2:Lcom/sonyericsson/home/layer/stage/StageController$3$2;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageController$3$2;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$3;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1900(Lcom/sonyericsson/home/layer/stage/StageController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$3$2$1;->this$2:Lcom/sonyericsson/home/layer/stage/StageController$3$2;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageController$3$2;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$3;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$900(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$3$2$1;->this$2:Lcom/sonyericsson/home/layer/stage/StageController$3$2;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageController$3$2;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$3;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1902(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z

    .line 349
    :cond_0
    return-void
.end method
