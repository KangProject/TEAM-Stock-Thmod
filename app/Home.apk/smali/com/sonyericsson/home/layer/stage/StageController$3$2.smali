.class Lcom/sonyericsson/home/layer/stage/StageController$3$2;
.super Ljava/lang/Object;
.source "StageController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/stage/StageController$3;->onReadCompleted(Lcom/sonyericsson/storage/Root;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/stage/StageController$3;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/stage/StageController$3;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController$3$2;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$3$2;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$3;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$900(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/home/layer/stage/StageController$3$2$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/stage/StageController$3$2$1;-><init>(Lcom/sonyericsson/home/layer/stage/StageController$3$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 351
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 335
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 332
    return-void
.end method
