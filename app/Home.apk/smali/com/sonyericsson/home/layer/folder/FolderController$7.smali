.class Lcom/sonyericsson/home/layer/folder/FolderController$7;
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
    .line 240
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$7;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 243
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 244
    .local v0, globalVisibleRect:Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 245
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$7;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$900(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderFlow;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->onItemClick(Landroid/graphics/Rect;I)V

    .line 246
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 247
    return-void
.end method
