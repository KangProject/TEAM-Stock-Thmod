.class Lcom/sonyericsson/home/layer/folder/FolderController$6$1;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/folder/FolderController$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/folder/FolderController$6;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/folder/FolderController$6;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6$1;->this$1:Lcom/sonyericsson/home/layer/folder/FolderController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6$1;->this$1:Lcom/sonyericsson/home/layer/folder/FolderController$6;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController$6;->access$3300(Lcom/sonyericsson/home/layer/folder/FolderController$6;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6$1;->this$1:Lcom/sonyericsson/home/layer/folder/FolderController$6;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6$1;->this$1:Lcom/sonyericsson/home/layer/folder/FolderController$6;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController$6;->access$3300(Lcom/sonyericsson/home/layer/folder/FolderController$6;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->scroll(F)V

    .line 498
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6$1;->this$1:Lcom/sonyericsson/home/layer/folder/FolderController$6;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6$1;->this$1:Lcom/sonyericsson/home/layer/folder/FolderController$6;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController$6;->access$3400(Lcom/sonyericsson/home/layer/folder/FolderController$6;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->post(Ljava/lang/Runnable;)Z

    .line 500
    :cond_0
    return-void
.end method
