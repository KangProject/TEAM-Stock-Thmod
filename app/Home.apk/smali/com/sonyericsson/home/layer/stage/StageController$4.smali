.class Lcom/sonyericsson/home/layer/stage/StageController$4;
.super Ljava/lang/Object;
.source "StageController.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/stage/StageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/stage/StageController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/stage/StageController;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController$4;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 377
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$4;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerController$Syncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$4;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$4;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/sonyericsson/home/layer/LayerController;->syncPackageChanged(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$4;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$300(Lcom/sonyericsson/home/layer/stage/StageController;)V

    .line 384
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$4;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$4;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 387
    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$4;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerController$Syncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$4;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/home/layer/LayerController;->syncPackageRemoved(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$4;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$300(Lcom/sonyericsson/home/layer/stage/StageController;)V

    .line 393
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$4;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$4;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 396
    :cond_0
    return-void
.end method
