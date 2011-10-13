.class Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;
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
    .line 506
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;->val$transferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
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
    const/4 v5, 0x1

    const-string v6, "badge"

    .line 510
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->getItem(I)Lcom/sonyericsson/home/data/ActivityInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/resourceload/PackageLoader;->isUninstallable(Lcom/sonyericsson/home/data/ActivityInfo;)Z

    move-result v2

    .line 511
    .local v2, uninstallable:Z
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 512
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1600(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->pickUpItem(I)Lcom/sonyericsson/home/data/ActivityInfo;

    .line 513
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1600(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->notifyObservers()V

    .line 515
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$400(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 516
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$400(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;->onEditStarted()V

    .line 519
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;->val$transferHandler:Lcom/sonyericsson/home/transfer/TransferHandler;

    new-instance v4, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4$1;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;)V

    invoke-interface {v3, v4, p2, p1}, Lcom/sonyericsson/home/transfer/TransferHandler;->transferView(Lcom/sonyericsson/home/transfer/TransferSource;Landroid/view/View;Landroid/view/View;)Lcom/sonyericsson/animation/Renderer;

    move-result-object v1

    .line 531
    .local v1, renderer:Lcom/sonyericsson/animation/Renderer;
    if-eqz v2, :cond_1

    .line 532
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 533
    .local v0, extras:Landroid/os/Bundle;
    const-string v3, "badge"

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->getBadgeIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 534
    const-string v3, "badge"

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$2100(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$2100(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I

    move-result v4

    invoke-interface {v1, v6, v3, v4, v0}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 537
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_1
    return v5
.end method
