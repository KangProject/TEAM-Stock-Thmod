.class Lcom/sonyericsson/home/layer/desktop/DesktopController$7;
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
    .line 1467
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 1471
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v3

    .line 1474
    .local v3, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/Info;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/data/Info;

    .line 1475
    .local v2, info:Lcom/sonyericsson/home/data/Info;
    instance-of v4, v2, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/sonyericsson/home/data/Info;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1477
    move-object v0, v2

    check-cast v0, Lcom/sonyericsson/home/data/WidgetInfo;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v4

    if-nez v4, :cond_0

    .line 1478
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    check-cast v2, Lcom/sonyericsson/home/data/WidgetInfo;

    .end local v2           #info:Lcom/sonyericsson/home/data/Info;
    invoke-static {v4, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2700(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/WidgetInfo;)V

    goto :goto_0

    .line 1482
    :cond_1
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 1485
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v0

    .line 1487
    .local v0, allInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/Info;>;"
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v0, v4, p1}, Lcom/sonyericsson/home/data/SyncHelper;->syncPackageChanged(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V

    .line 1490
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/WidgetManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1491
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/data/Info;

    .line 1492
    .local v2, info:Lcom/sonyericsson/home/data/Info;
    instance-of v3, v2, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sonyericsson/home/data/Info;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1493
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/WidgetManager;

    move-result-object v3

    check-cast v2, Lcom/sonyericsson/home/data/WidgetInfo;

    .end local v2           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v2}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/widget/WidgetManager;->clearCache(I)V

    goto :goto_0

    .line 1498
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$100(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)V

    .line 1499
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1500
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1502
    :cond_2
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/home/data/SyncHelper;->syncPackageRemoved(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Ljava/lang/String;)V

    .line 1507
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$100(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)V

    .line 1508
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1511
    :cond_0
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 1515
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 6
    .parameter "packageList"

    .prologue
    .line 1520
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1521
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getWidgetSyncable()Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/sonyericsson/home/data/SyncHelper;->syncPackageRemoved(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Ljava/lang/String;)V

    .line 1520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1524
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1525
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$7;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1527
    :cond_1
    return-void
.end method
