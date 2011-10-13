.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$2;
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


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Z)V

    .line 370
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 366
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 362
    return-void
.end method
