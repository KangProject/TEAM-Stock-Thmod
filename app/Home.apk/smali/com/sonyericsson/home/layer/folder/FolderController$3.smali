.class Lcom/sonyericsson/home/layer/folder/FolderController$3;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferTarget;


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
    .line 188
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$3;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelHint(Lcom/sonyericsson/animation/Renderer;)V
    .locals 1
    .parameter "renderer"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$3;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$900(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderFlow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->cancelHint()V

    .line 192
    return-void
.end method

.method public drop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 2
    .parameter "view"
    .parameter "renderer"
    .parameter "dropListener"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$3;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$900(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderFlow;

    move-result-object v0

    invoke-static {p1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->drop(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    .line 196
    return-void
.end method

.method public hint(Landroid/view/View;IILcom/sonyericsson/animation/Renderer;)Z
    .locals 3
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "renderer"

    .prologue
    .line 199
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 200
    .local v1, hitRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 201
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController$3;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$900(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderFlow;

    move-result-object v2

    invoke-virtual {v2, v1, p3}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->hint(Landroid/graphics/Rect;I)Z

    move-result v0

    .line 202
    .local v0, hintResult:Z
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 203
    return v0
.end method
