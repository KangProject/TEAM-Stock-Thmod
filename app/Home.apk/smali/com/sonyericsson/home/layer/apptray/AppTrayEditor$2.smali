.class Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;
.super Ljava/lang/Object;
.source "AppTrayEditor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->createStandardLongPressListener(Lcom/sonyericsson/home/transfer/TransferHandler;)Landroid/widget/AdapterView$OnItemLongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

.field final synthetic val$transferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;Lcom/sonyericsson/home/transfer/TransferHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->val$transferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
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
    const/4 v2, 0x0

    const/high16 v3, 0x4000

    .line 278
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3, v2, v2}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, transferView:Landroid/view/View;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$200(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I

    move-result v1

    or-int/2addr v1, v3

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$300(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I

    move-result v2

    or-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 281
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$200(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$300(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 284
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$400(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$400(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;->onTransferToDesktop()V

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->val$transferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    new-instance v2, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2$1;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;)V

    invoke-interface {v1, v2, v0, p1}, Lcom/sonyericsson/home/transfer/TransferHandler;->transferView(Lcom/sonyericsson/home/transfer/TransferSource;Landroid/view/View;Landroid/view/View;)Lcom/sonyericsson/animation/Renderer;

    .line 313
    const/4 v1, 0x1

    return v1
.end method
