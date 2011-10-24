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
    .line 396
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

    .line 407
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 408
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onAppTrayOpened()V

    .line 411
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$308(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)I

    .line 413
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$400(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 415
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/home/bidi/Utils;->getBidiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 416
    .local v0, ctx:Landroid/content/Context;
    const v2, 0x7f070022

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 418
    .local v1, toast:Landroid/widget/Toast;
    const/16 v2, 0x10

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 419
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    const/16 v3, 0x3e8

    invoke-static {v2, v1, v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/widget/Toast;I)V

    .line 421
    .end local v0           #ctx:Landroid/content/Context;
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 404
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 400
    return-void
.end method
