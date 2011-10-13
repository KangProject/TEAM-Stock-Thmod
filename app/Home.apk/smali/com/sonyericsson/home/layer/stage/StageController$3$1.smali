.class Lcom/sonyericsson/home/layer/stage/StageController$3$1;
.super Ljava/lang/Object;
.source "StageController.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;


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
    .line 296
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController$3$1;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 312
    return-void
.end method

.method public onLongPress(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 299
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$3$1;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$3;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$3$1;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$3;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getIndexFromCoordinate(I)I

    move-result v0

    .line 301
    .local v0, location:I
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$3$1;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$3;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;->onLongPress(I)V

    .line 304
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$3$1;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$3;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->requestDisallowInterceptTouchEvent(Z)V

    move v1, v2

    .line 307
    .end local v0           #location:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
