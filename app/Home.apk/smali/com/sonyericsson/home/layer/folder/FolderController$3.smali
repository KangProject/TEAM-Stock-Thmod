.class Lcom/sonyericsson/home/layer/folder/FolderController$3;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 431
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$3;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$3;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2700(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$3;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 436
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 437
    .local v0, sourceBounds:Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 438
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$3;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2700(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController$3;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$100(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;->onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V

    .line 439
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 441
    .end local v0           #sourceBounds:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method
