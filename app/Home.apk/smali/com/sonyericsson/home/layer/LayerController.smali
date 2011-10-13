.class public abstract Lcom/sonyericsson/home/layer/LayerController;
.super Ljava/lang/Object;
.source "LayerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/LayerController$Syncable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static isPending(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .parameter "packageName"

    .prologue
    .line 156
    invoke-static {}, Lcom/sonyericsson/home/customization/PendingPackageList;->getInstance()Lcom/sonyericsson/home/customization/PendingPackageList;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/home/customization/PendingPackageList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static removeFromPendingPackageList(Lcom/sonyericsson/home/data/Info;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 80
    instance-of v5, p0, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v5, :cond_0

    .line 81
    move-object v0, p0

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    move-object v1, v0

    .line 82
    .local v1, activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-static {}, Lcom/sonyericsson/home/customization/PendingPackageList;->getInstance()Lcom/sonyericsson/home/customization/PendingPackageList;

    move-result-object v4

    .line 83
    .local v4, pendingList:Lcom/sonyericsson/home/customization/PendingPackageList;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v4, v2, v3}, Lcom/sonyericsson/home/customization/PendingPackageList;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v1           #activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #pendingList:Lcom/sonyericsson/home/customization/PendingPackageList;
    :cond_0
    return-void
.end method

.method private static shouldInfoBeRemovedAtSync(Lcom/sonyericsson/home/data/Info;Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 5
    .parameter "info"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/home/data/Info;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, packageSet:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, activitySet:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/sonyericsson/home/data/Info;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, packageName:Ljava/lang/String;
    instance-of v2, p0, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v2, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sonyericsson/home/data/ActivityInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sonyericsson/home/layer/LayerController;->isPending(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 240
    .end local p0
    :goto_0
    return v2

    .line 226
    .restart local p0
    :cond_0
    instance-of v2, p0, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v2, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/sonyericsson/home/data/WidgetInfo;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sonyericsson/home/data/WidgetInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sonyericsson/home/layer/LayerController;->isPending(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 228
    goto :goto_0

    .line 232
    :cond_1
    instance-of v2, p0, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v2, :cond_3

    .line 233
    check-cast p0, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p0
    invoke-interface {p2, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0

    .line 236
    .restart local p0
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 237
    goto :goto_0

    :cond_4
    move v2, v3

    .line 240
    goto :goto_0
.end method

.method public static sync(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 4
    .parameter "syncable"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/home/layer/LayerController$Syncable;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/Info;>;"
    .local p2, installedActivityInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    .local p3, installedPackages:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

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

    .line 178
    .local v2, info:Lcom/sonyericsson/home/data/Info;
    invoke-static {v2, p3, p2}, Lcom/sonyericsson/home/layer/LayerController;->shouldInfoBeRemovedAtSync(Lcom/sonyericsson/home/data/Info;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    invoke-interface {p0, v2}, Lcom/sonyericsson/home/layer/LayerController$Syncable;->removeDuringSync(Lcom/sonyericsson/home/data/Info;)V

    goto :goto_0

    .line 183
    .end local v2           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 184
    .local v0, activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 185
    invoke-static {v0}, Lcom/sonyericsson/home/layer/LayerController;->removeFromPendingPackageList(Lcom/sonyericsson/home/data/Info;)V

    .line 186
    invoke-interface {p0, v0}, Lcom/sonyericsson/home/layer/LayerController$Syncable;->addDuringSync(Lcom/sonyericsson/home/data/Info;)V

    goto :goto_1

    .line 207
    .end local v0           #activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_3
    return-void
.end method

.method public static syncPackageAdded(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .parameter "syncable"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/home/layer/LayerController$Syncable;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/Info;>;"
    .local p2, activityInfosInPackage:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 67
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    invoke-static {v1}, Lcom/sonyericsson/home/layer/LayerController;->removeFromPendingPackageList(Lcom/sonyericsson/home/data/Info;)V

    .line 70
    invoke-interface {p0, v1}, Lcom/sonyericsson/home/layer/LayerController$Syncable;->addDuringSync(Lcom/sonyericsson/home/data/Info;)V

    goto :goto_0

    .line 73
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    return-void
.end method

.method public static syncPackageChanged(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 6
    .parameter "syncable"
    .parameter
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/home/layer/LayerController$Syncable;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/Info;>;"
    .local p2, activityInfosInPackage:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/data/Info;

    .line 107
    .local v3, info:Lcom/sonyericsson/home/data/Info;
    instance-of v5, v3, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v5, :cond_0

    .line 108
    move-object v0, v3

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    move-object v1, v0

    .line 109
    .local v1, activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/sonyericsson/home/customization/PendingPackageList;->getInstance()Lcom/sonyericsson/home/customization/PendingPackageList;

    move-result-object v5

    invoke-virtual {v5, v4, p3}, Lcom/sonyericsson/home/customization/PendingPackageList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 113
    invoke-interface {p0, v3}, Lcom/sonyericsson/home/layer/LayerController$Syncable;->removeDuringSync(Lcom/sonyericsson/home/data/Info;)V

    goto :goto_0

    .line 119
    .end local v1           #activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    .end local v3           #info:Lcom/sonyericsson/home/data/Info;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 120
    .restart local v3       #info:Lcom/sonyericsson/home/data/Info;
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 121
    invoke-static {v3}, Lcom/sonyericsson/home/layer/LayerController;->removeFromPendingPackageList(Lcom/sonyericsson/home/data/Info;)V

    .line 122
    invoke-interface {p0, v3}, Lcom/sonyericsson/home/layer/LayerController$Syncable;->addDuringSync(Lcom/sonyericsson/home/data/Info;)V

    goto :goto_1

    .line 125
    .end local v3           #info:Lcom/sonyericsson/home/data/Info;
    :cond_3
    return-void
.end method

.method public static syncPackageRemoved(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 3
    .parameter "syncable"
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/home/layer/LayerController$Syncable;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/Info;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/Info;

    .line 143
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/Info;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-interface {p0, v1}, Lcom/sonyericsson/home/layer/LayerController$Syncable;->removeDuringSync(Lcom/sonyericsson/home/data/Info;)V

    goto :goto_0

    .line 147
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    return-void
.end method
