.class Lcom/sonyericsson/home/layer/desktop/DesktopController$9;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 7
    .parameter "packageName"

    .prologue
    .line 1324
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v3

    .line 1327
    .local v3, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/Info;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/data/Info;

    .line 1328
    .local v2, info:Lcom/sonyericsson/home/data/Info;
    instance-of v5, v2, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/sonyericsson/home/data/Info;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1331
    move-object v0, v2

    check-cast v0, Lcom/sonyericsson/home/data/WidgetInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v5

    if-nez v5, :cond_0

    .line 1333
    check-cast v2, Lcom/sonyericsson/home/data/WidgetInfo;

    .end local v2           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v2}, Lcom/sonyericsson/home/data/WidgetInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1334
    .local v4, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v5, v4, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3600(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    invoke-static {}, Lcom/sonyericsson/home/customization/PendingPackageList;->getInstance()Lcom/sonyericsson/home/customization/PendingPackageList;

    move-result-object v5

    invoke-virtual {v5, v4, p1}, Lcom/sonyericsson/home/customization/PendingPackageList;->remove(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1337
    .end local v4           #name:Ljava/lang/String;
    .restart local v2       #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    instance-of v5, v2, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/sonyericsson/home/data/Info;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1339
    invoke-static {}, Lcom/sonyericsson/home/customization/PendingPackageList;->getInstance()Lcom/sonyericsson/home/customization/PendingPackageList;

    move-result-object v5

    check-cast v2, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local v2           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v2}, Lcom/sonyericsson/home/data/ActivityInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/sonyericsson/home/customization/PendingPackageList;->remove(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1343
    :cond_2
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerController$Syncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/sonyericsson/home/layer/LayerController;->syncPackageChanged(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V

    .line 1350
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$100(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)V

    .line 1351
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1354
    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerController$Syncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/home/layer/LayerController;->syncPackageRemoved(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/lang/String;)V

    .line 1360
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$100(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)V

    .line 1361
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$9;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1364
    :cond_0
    return-void
.end method
