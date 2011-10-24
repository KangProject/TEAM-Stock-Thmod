.class Lcom/sonyericsson/home/layer/folder/FolderController$2;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/folder/FolderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/folder/FolderController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransferCanceled(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;)Lcom/sonyericsson/animation/Renderer;
    .locals 1
    .parameter "view"
    .parameter "renderer"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderFlow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->onTransferCanceled(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;)V

    .line 191
    return-object p2
.end method

.method public onTransferCompleted()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderFlow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->onTransferCompleted()V

    .line 196
    return-void
.end method
