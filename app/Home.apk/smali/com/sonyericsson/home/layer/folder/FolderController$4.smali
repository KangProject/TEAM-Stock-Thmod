.class Lcom/sonyericsson/home/layer/folder/FolderController$4;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 444
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$4;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 448
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$4;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$4;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1800(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$4;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$4;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->remove(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2902(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;

    .line 454
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$4;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0, p3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$3002(Lcom/sonyericsson/home/layer/folder/FolderController;I)I

    .line 455
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$4;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/paneview/PaneView;->keepMaxScroll(Z)V

    .line 456
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$4;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$100(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->notifyDataSetChanged()V

    .line 458
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$4;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$3200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/transfer/TransferHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$4;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$3100(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/transfer/TransferSource;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController$4;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Lcom/sonyericsson/home/transfer/TransferHandler;->transferView(Lcom/sonyericsson/home/transfer/TransferSource;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$4;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2700(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$4;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2700(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;->onItemPickedUp()V

    :cond_0
    move v0, v3

    .line 467
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
