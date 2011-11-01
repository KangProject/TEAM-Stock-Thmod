.class Lcom/sonyericsson/home/layer/desktop/DesktopController$2;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Lcom/sonyericsson/home/data/SyncHelper$Syncable;


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
    .line 755
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$2;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDuringSync(Lcom/sonyericsson/home/data/Info;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 759
    const/4 v0, 0x0

    return v0
.end method

.method public removeDuringSync(Lcom/sonyericsson/home/data/Info;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$2;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->remove(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 764
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$2;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$2;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onInfoRemoved(Lcom/sonyericsson/home/data/Info;)V

    .line 767
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
