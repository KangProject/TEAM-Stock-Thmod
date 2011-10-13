.class Lcom/sonyericsson/home/layer/folder/FolderController$10;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/folder/FolderController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/GlobalCustomizationManager;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/InfoGroupManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

.field final synthetic val$adapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

.field final synthetic val$folderLocator:Lcom/sonyericsson/home/layer/folder/FolderLocator;

.field final synthetic val$modelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

.field final synthetic val$rendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/folder/FolderModelManager;Lcom/sonyericsson/home/layer/folder/FolderLocator;Lcom/sonyericsson/home/layer/LayerRendererFactory;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->val$adapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iput-object p3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->val$modelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    iput-object p4, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->val$folderLocator:Lcom/sonyericsson/home/layer/folder/FolderLocator;

    iput-object p5, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->val$rendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 292
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderLayout;

    move-result-object v0

    const v2, 0x7f0e001c

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$402(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 293
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderLayout;

    move-result-object v0

    const v2, 0x7f0e001d

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1, v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$302(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView;

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$300(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setVerticalScrollEnabled(Z)V

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    new-instance v1, Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->val$adapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->val$modelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->val$folderLocator:Lcom/sonyericsson/home/layer/folder/FolderLocator;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonyericsson/home/layer/folder/FolderAdapter;-><init>(Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/layer/folder/FolderModelManager;Lcom/sonyericsson/home/layer/folder/FolderLocator;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$002(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/layer/folder/FolderAdapter;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$900(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderFlow;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1100(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->setIconPaddingTop(I)V

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$900(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderFlow;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1100(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->setScrollMargin(I)V

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->val$folderLocator:Lcom/sonyericsson/home/layer/folder/FolderLocator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->setLocator(Lcom/sonyericsson/home/layer/folder/FolderLocator;)V

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->val$folderLocator:Lcom/sonyericsson/home/layer/folder/FolderLocator;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderLocator$OnGridChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderLocator;->setOnGridChangedListener(Lcom/sonyericsson/home/layer/folder/FolderLocator$OnGridChangedListener;)V

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->val$rendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1300(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1400(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->registerInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1500(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$400(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$10;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1500(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    return-void
.end method
