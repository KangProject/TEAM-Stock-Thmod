.class Lcom/sonyericsson/home/layer/appshare/DropZoneController$6;
.super Ljava/lang/Object;
.source "DropZoneController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/appshare/DropZoneController;->animateHintToast(Landroid/view/animation/Animation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/appshare/DropZoneController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$6;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    iput p2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$6;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 386
    iget v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$6;->val$visibility:I

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$6;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$1000(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 383
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 377
    iget v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$6;->val$visibility:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$6;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$1000(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    :cond_0
    return-void
.end method
