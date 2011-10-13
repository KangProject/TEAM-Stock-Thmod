.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$3;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/statistics/Statistics;)V
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
    .line 374
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v4, 0x0

    .line 385
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onAppTrayOpened()V

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$308(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)I

    .line 391
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$400(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$3;->val$context:Landroid/content/Context;

    const v2, 0x7f070022

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 395
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 396
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    const/16 v2, 0x3e8

    invoke-static {v1, v0, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/widget/Toast;I)V

    .line 398
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 382
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 378
    return-void
.end method
