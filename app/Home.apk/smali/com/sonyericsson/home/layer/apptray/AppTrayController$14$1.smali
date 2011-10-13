.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->onReadCompleted(Lcom/sonyericsson/storage/Root;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

.field final synthetic val$root:Lcom/sonyericsson/storage/Root;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;Lcom/sonyericsson/storage/Root;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->val$root:Lcom/sonyericsson/storage/Root;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const-class v3, Lcom/sonyericsson/util/PagedList;

    .line 808
    const/4 v8, 0x0

    .line 809
    .local v8, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->val$root:Lcom/sonyericsson/storage/Root;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->val$root:Lcom/sonyericsson/storage/Root;

    const-string v1, "version"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/storage/Root;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v11, :cond_0

    .line 811
    const-class v0, Lcom/sonyericsson/util/PagedList;

    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->val$root:Lcom/sonyericsson/storage/Root;

    const-class v1, Lcom/sonyericsson/util/PagedList;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/storage/Root;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    check-cast v8, Lcom/sonyericsson/util/PagedList;

    .line 815
    .restart local v8       #model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    :cond_0
    if-nez v8, :cond_1

    .line 821
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 823
    .local v9, rows:I
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 825
    .local v6, cols:I
    new-instance v8, Lcom/sonyericsson/util/PagedList;

    .end local v8           #model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    mul-int v0, v6, v9

    invoke-direct {v8, v0}, Lcom/sonyericsson/util/PagedList;-><init>(I)V

    .line 831
    .restart local v8       #model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    new-instance v7, Lcom/sonyericsson/home/customization/AppTrayCustomization;

    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v1

    invoke-direct {v7, v0, v8, v1}, Lcom/sonyericsson/home/customization/AppTrayCustomization;-><init>(Landroid/content/Context;Lcom/sonyericsson/util/PagedList;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    .line 832
    .local v7, cust:Lcom/sonyericsson/home/customization/AppTrayCustomization;
    const/high16 v0, 0x7f05

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lcom/sonyericsson/home/customization/AppTrayCustomization;->applyCustomization(IZ)V

    .line 833
    invoke-static {}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2300()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0, v11}, Lcom/sonyericsson/home/customization/AppTrayCustomization;->applyCustomization(Landroid/net/Uri;Z)V

    .line 836
    .end local v6           #cols:I
    .end local v7           #cust:Lcom/sonyericsson/home/customization/AppTrayCustomization;
    .end local v9           #rows:I
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->setModel(Lcom/sonyericsson/util/PagedList;)V

    .line 838
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2400(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/LayerController$Syncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getAllInfo()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v3, v3, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getPackageSet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/home/layer/LayerController;->sync(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 842
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2502(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/view/View;)Landroid/view/View;

    .line 845
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2600(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/view/View;)V

    .line 846
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/view/View;)V

    .line 847
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v3, v3, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2900(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/content/Context;Landroid/view/View;)Lcom/sonyericsson/home/layer/PaneIndicator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2802(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/home/layer/PaneIndicator;

    .line 850
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0c0006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1, v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1702(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView;

    .line 851
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/PaneIndicator;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$3000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setScrollListener(Lcom/sonyericsson/paneview/PaneView$ScrollListener;)V

    .line 852
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$3100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 853
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$3200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V

    .line 854
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$3300(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/content/Context;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPaneDynamics(Lcom/sonyericsson/util/Dynamics;)V

    .line 855
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    const v1, 0x3dcccccd

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPaneMargin(F)V

    .line 856
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 858
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setBackplateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 860
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V

    .line 861
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setVelocityThreshold(I)V

    .line 863
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$3402(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/view/View;)Landroid/view/View;

    .line 866
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v10, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$3500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/transfer/TransferHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v3, v3, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2500(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v5, v5, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$3600(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/grid/Grid;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$3700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Landroid/content/Context;Lcom/sonyericsson/home/transfer/TransferHandler;Landroid/view/View;Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/grid/Grid;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$702(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    .line 870
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$3800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->setDoMirror(Z)V

    .line 871
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/PaneIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$3800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->setDoMirror(Z)V

    .line 872
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$3800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setDoMirror(Z)V

    .line 874
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 875
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setPosition(F)V

    .line 877
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0, v11}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$3902(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Z)Z

    .line 878
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$4000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    .line 880
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 881
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onSyncCompleted()V

    .line 883
    :cond_2
    return-void
.end method
