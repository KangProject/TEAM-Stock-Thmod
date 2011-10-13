.class Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;
.super Ljava/lang/Object;
.source "AppTrayEditor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->createOnItemLongClickListener(Lcom/sonyericsson/home/transfer/TransferHandler;)Landroid/widget/AdapterView$OnItemLongClickListener;
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
    .line 454
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->val$transferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 458
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1500(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 459
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1400(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->pickUpItem(I)Lcom/sonyericsson/home/data/ActivityInfo;

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1400(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->notifyObservers()V

    .line 462
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$200(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$200(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;->onEditStarted()V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->val$transferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    new-instance v1, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3$1;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;)V

    invoke-interface {v0, v1, p2, p1}, Lcom/sonyericsson/home/transfer/TransferHandler;->transferView(Lcom/sonyericsson/home/transfer/TransferSource;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 478
    return v2
.end method
