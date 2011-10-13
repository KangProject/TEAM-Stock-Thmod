.class Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$2;
.super Ljava/lang/Object;
.source "CornerButtonsController.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 186
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 189
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$000(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    .line 190
    .local v0, controller:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getSyncable()Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getModel()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$100(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v2, v3, v4, p1}, Lcom/sonyericsson/home/data/SyncHelper;->syncPackageChanged(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    .end local v0           #controller:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$200(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)V

    .line 194
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 197
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$000(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    .line 198
    .local v0, controller:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getSyncable()Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getModel()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/sonyericsson/home/data/SyncHelper;->syncPackageRemoved(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    .end local v0           #controller:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$200(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)V

    .line 202
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 206
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 210
    return-void
.end method
