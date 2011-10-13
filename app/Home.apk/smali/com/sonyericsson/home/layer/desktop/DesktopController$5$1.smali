.class Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->onReadCompleted(Lcom/sonyericsson/storage/Root;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

.field final synthetic val$root:Lcom/sonyericsson/storage/Root;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController$5;Lcom/sonyericsson/storage/Root;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 767
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->val$root:Lcom/sonyericsson/storage/Root;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const-class v5, Ljava/util/ArrayList;

    .line 771
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v3, v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/grid/GridSize;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;-><init>(Lcom/sonyericsson/grid/GridSize;I)V

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1702(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    .line 773
    const/4 v2, 0x0

    .line 774
    .local v2, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->val$root:Lcom/sonyericsson/storage/Root;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->val$root:Lcom/sonyericsson/storage/Root;

    const-string v1, "version"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/storage/Root;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v12, :cond_0

    .line 776
    const-class v0, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->val$root:Lcom/sonyericsson/storage/Root;

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/storage/Root;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 780
    .restart local v2       #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    :cond_0
    if-nez v2, :cond_1

    .line 782
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .restart local v2       #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2202(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/appwidget/AppWidgetManager;)Landroid/appwidget/AppWidgetManager;

    .line 790
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    new-instance v1, Landroid/appwidget/AppWidgetHost;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v3, v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->val$context:Landroid/content/Context;

    const v4, 0xa3d9739

    invoke-direct {v1, v3, v4}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2302(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/appwidget/AppWidgetHost;)Landroid/appwidget/AppWidgetHost;

    .line 792
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v11, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    new-instance v0, Lcom/sonyericsson/home/customization/DesktopCustomization;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v3, v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v5, v5, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/appwidget/AppWidgetHost;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v6, v6, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v6}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/home/customization/DesktopCustomization;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/home/layer/InfoGroupManager;Landroid/appwidget/AppWidgetManager;Landroid/appwidget/AppWidgetHost;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    invoke-static {v11, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2402(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/customization/DesktopCustomization;)Lcom/sonyericsson/home/customization/DesktopCustomization;

    .line 795
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/customization/DesktopCustomization;

    move-result-object v0

    const v1, 0x7f050001

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/home/customization/DesktopCustomization;->applyCustomization(IZ)V

    .line 797
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/customization/DesktopCustomization;

    move-result-object v0

    invoke-static {}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2700()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lcom/sonyericsson/home/customization/DesktopCustomization;->applyCustomization(Landroid/net/Uri;Z)V

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->setModel(Ljava/util/ArrayList;)V

    .line 801
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet()Ljava/util/Set;

    move-result-object v9

    .line 803
    .local v9, installedActivityInfos:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getPackageSet()Ljava/util/Set;

    move-result-object v10

    .line 805
    .local v10, installedPackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getWidgetSyncable()Lcom/sonyericsson/home/layer/LayerController$Syncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1, v9, v10}, Lcom/sonyericsson/home/layer/LayerController;->sync(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 808
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 809
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 811
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0, v12}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$100(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)V

    .line 814
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    sget-object v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->MODEL_INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2802(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopController$State;)Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    .line 815
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    .line 816
    .local v7, callback:Ljava/lang/Runnable;
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 818
    .end local v7           #callback:Ljava/lang/Runnable;
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$5;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$5;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2902(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 819
    return-void
.end method
