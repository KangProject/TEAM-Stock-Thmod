.class Lcom/sonyericsson/home/layer/desktop/DesktopController$2;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/LayerController$Syncable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$2;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDuringSync(Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 682
    return-void
.end method

.method public removeDuringSync(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$2;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->remove(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 686
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$2;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$2;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onInfoRemoved(Lcom/sonyericsson/home/data/Info;)V

    .line 689
    :cond_0
    return-void
.end method
