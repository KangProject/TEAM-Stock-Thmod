.class Lcom/sonyericsson/home/layer/appshare/DropZoneController$5;
.super Ljava/lang/Object;
.source "DropZoneController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/appshare/DropZoneController;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$5;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/16 v1, 0x8

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$5;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$900(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$5;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$1000(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$5;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$400(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$5;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$400(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;->onHide()V

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$5;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$1100(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 343
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 339
    return-void
.end method
