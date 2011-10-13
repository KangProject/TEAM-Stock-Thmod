.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Landroid/view/ViewGroup;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/statistics/Statistics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v4, 0x0

    .line 412
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onAppTrayOpened()V

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$308(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)I

    .line 418
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$400(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->val$context:Landroid/content/Context;

    const v2, 0x7f070022

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 422
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 423
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    const/16 v2, 0x3e8

    invoke-static {v1, v0, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/widget/Toast;I)V

    .line 425
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 409
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 405
    return-void
.end method
