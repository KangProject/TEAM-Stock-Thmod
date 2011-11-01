.class Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->onReadCompleted(Lcom/sonyericsson/storage/Root;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

.field final synthetic val$root:Lcom/sonyericsson/storage/Root;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController$3;Lcom/sonyericsson/storage/Root;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->val$root:Lcom/sonyericsson/storage/Root;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 803
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    new-instance v3, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/grid/GridSize;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v5, v5, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;-><init>(Lcom/sonyericsson/grid/GridSize;I)V

    invoke-static {v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1902(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    .line 805
    const/4 v12, 0x0

    .line 806
    .local v12, modelChanged:Z
    const/4 v3, 0x0

    .line 807
    .local v3, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->val$root:Lcom/sonyericsson/storage/Root;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->val$root:Lcom/sonyericsson/storage/Root;

    const-string v4, "version"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/storage/Root;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 809
    const-class v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->val$root:Lcom/sonyericsson/storage/Root;

    .end local v3           #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/storage/Root;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 813
    .restart local v3       #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->val$context:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2202(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/appwidget/AppWidgetManager;)Landroid/appwidget/AppWidgetManager;

    .line 814
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    new-instance v4, Lcom/sonyericsson/home/widget/HomeAppWidgetHost;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v5, v5, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->val$context:Landroid/content/Context;

    const v6, 0xa3d9739

    invoke-direct {v4, v5, v6}, Lcom/sonyericsson/home/widget/HomeAppWidgetHost;-><init>(Landroid/content/Context;I)V

    invoke-static {v2, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2302(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/appwidget/AppWidgetHost;)Landroid/appwidget/AppWidgetHost;

    .line 817
    if-nez v3, :cond_2

    .line 819
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .restart local v3       #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/appwidget/AppWidgetHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 827
    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v5, v5, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v6, v6, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v6}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/appwidget/AppWidgetHost;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v7, v7, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/home/layer/InfoGroupManager;Landroid/appwidget/AppWidgetManager;Landroid/appwidget/AppWidgetHost;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    .line 831
    .local v1, cust:Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;
    const-string v2, "/etc/customization/settings/com/sonyericsson/home/default_settings_desktop.xml"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->applyCustomization(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 835
    const v2, 0x7f050003

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->applyCustomization(IZ)Z

    .line 839
    :cond_1
    invoke-static {}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2600()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->applyCustomization(Landroid/net/Uri;Z)Z

    .line 840
    const/4 v12, 0x1

    .line 844
    .end local v1           #cust:Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 845
    .local v11, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v11}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v10

    .line 846
    .local v10, info:Lcom/sonyericsson/home/data/Info;
    instance-of v2, v10, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v2, :cond_3

    .line 847
    move-object v0, v10

    check-cast v0, Lcom/sonyericsson/home/data/WidgetInfo;

    move-object v13, v0

    .line 848
    .local v13, widgetInfo:Lcom/sonyericsson/home/data/WidgetInfo;
    invoke-virtual {v13}, Lcom/sonyericsson/home/data/WidgetInfo;->isInstallPending()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 849
    invoke-virtual {v13}, Lcom/sonyericsson/home/data/WidgetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 850
    .local v14, widgetPackage:Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getPackageSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 851
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2, v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2700(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/WidgetInfo;)V

    goto :goto_0

    .line 853
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addPendingPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 859
    .end local v10           #info:Lcom/sonyericsson/home/data/Info;
    .end local v11           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v13           #widgetInfo:Lcom/sonyericsson/home/data/WidgetInfo;
    .end local v14           #widgetPackage:Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->setModel(Ljava/util/ArrayList;)V

    .line 861
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getWidgetSyncable()Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    .end local v3           #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    iget-object v3, v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/home/data/SyncHelper;->sync(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Lcom/sonyericsson/home/resourceload/PackageLoader;)Z

    move-result v2

    or-int/2addr v12, v2

    .line 864
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 865
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 868
    :cond_6
    if-eqz v12, :cond_7

    .line 869
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$100(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)V

    .line 873
    :cond_7
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    sget-object v3, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->MODEL_INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    invoke-static {v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2802(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopController$State;)Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    .line 874
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    .line 875
    .local v8, callback:Ljava/lang/Runnable;
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 877
    .end local v8           #callback:Ljava/lang/Runnable;
    :cond_8
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$3$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$3;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$3;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2902(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 878
    return-void
.end method
