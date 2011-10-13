.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$1;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/LayerController$Syncable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;
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
    .line 285
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDuringSync(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getSyncable()Lcom/sonyericsson/home/layer/LayerController$Syncable;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/LayerController$Syncable;->addDuringSync(Lcom/sonyericsson/home/data/Info;)V

    .line 289
    return-void
.end method

.method public removeDuringSync(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getSyncable()Lcom/sonyericsson/home/layer/LayerController$Syncable;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/LayerController$Syncable;->removeDuringSync(Lcom/sonyericsson/home/data/Info;)V

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onInfoRemoved(Lcom/sonyericsson/home/data/Info;)V

    .line 296
    :cond_0
    return-void
.end method
