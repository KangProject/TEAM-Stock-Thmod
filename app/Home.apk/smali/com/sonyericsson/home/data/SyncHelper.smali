.class public abstract Lcom/sonyericsson/home/data/SyncHelper;
.super Ljava/lang/Object;
.source "SyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static shouldInfoBeRemovedAtSync(Lcom/sonyericsson/home/data/Info;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 4
    .parameter "info"
    .parameter
    .parameter
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
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, packageSet:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, activitySet:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    .local p3, pendingPackages:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .local p4, unavailableApps:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/sonyericsson/home/data/Info;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, packageName:Ljava/lang/String;
    instance-of v1, p0, Lcom/sonyericsson/home/data/ActivityInfo;

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {p3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 249
    .end local p0
    :goto_0
    return v1

    .line 236
    .restart local p0
    :cond_1
    instance-of v1, p0, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v1, :cond_4

    .line 237
    if-eqz p4, :cond_2

    invoke-interface {p4, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 238
    goto :goto_0

    .line 240
    :cond_2
    check-cast p0, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p0
    invoke-interface {p2, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 245
    .restart local p0
    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v3

    .line 246
    goto :goto_0

    :cond_5
    move v1, v2

    .line 249
    goto :goto_0
.end method

.method public static sync(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Lcom/sonyericsson/home/resourceload/PackageLoader;)Z
    .locals 6
    .parameter "syncable"
    .parameter
    .parameter "packageLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/home/data/SyncHelper$Syncable;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;",
            "Lcom/sonyericsson/home/resourceload/PackageLoader;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/Info;>;"
    invoke-virtual {p2}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet()Ljava/util/Set;

    move-result-object v2

    .line 206
    .local v2, installedActivityInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-virtual {p2}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getPackageSet()Ljava/util/Set;

    move-result-object v3

    .line 207
    .local v3, installedPackages:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getPendingPackageSet()Ljava/util/Set;

    move-result-object v4

    .line 208
    .local v4, pendingPackages:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getUnavailablePackageSet()Ljava/util/Set;

    move-result-object v5

    .local v5, unavailablePackages:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p1

    .line 210
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/home/data/SyncHelper;->sync(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static sync(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 5
    .parameter "syncable"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/home/data/SyncHelper$Syncable;",
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
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/Info;>;"
    .local p2, installedActivityInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    .local p3, installedPackages:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .local p4, pendingPackages:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .local p5, unavailablePackages:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 155
    .local v1, changed:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/data/Info;

    .line 156
    .local v3, info:Lcom/sonyericsson/home/data/Info;
    invoke-static {v3, p3, p2, p4, p5}, Lcom/sonyericsson/home/data/SyncHelper;->shouldInfoBeRemovedAtSync(Lcom/sonyericsson/home/data/Info;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    invoke-interface {p0, v3}, Lcom/sonyericsson/home/data/SyncHelper$Syncable;->removeDuringSync(Lcom/sonyericsson/home/data/Info;)Z

    move-result v4

    or-int/2addr v1, v4

    goto :goto_0

    .line 162
    .end local v3           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 163
    .local v0, activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 164
    invoke-interface {p0, v0}, Lcom/sonyericsson/home/data/SyncHelper$Syncable;->addDuringSync(Lcom/sonyericsson/home/data/Info;)Z

    move-result v4

    or-int/2addr v1, v4

    goto :goto_1

    .line 185
    .end local v0           #activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_3
    return v1
.end method

.method public static syncPackageAdded(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .parameter "syncable"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/home/data/SyncHelper$Syncable;",
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

    .line 68
    invoke-interface {p0, v1}, Lcom/sonyericsson/home/data/SyncHelper$Syncable;->addDuringSync(Lcom/sonyericsson/home/data/Info;)Z

    goto :goto_0

    .line 71
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    return-void
.end method

.method public static syncPackageChanged(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 5
    .parameter "syncable"
    .parameter
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/home/data/SyncHelper$Syncable;",
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
    .line 90
    .local p1, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/Info;>;"
    .local p2, activityInfosInPackage:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/data/Info;

    .line 91
    .local v3, info:Lcom/sonyericsson/home/data/Info;
    instance-of v4, v3, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v4, :cond_0

    .line 92
    move-object v0, v3

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    move-object v1, v0

    .line 93
    .local v1, activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    invoke-interface {p0, v3}, Lcom/sonyericsson/home/data/SyncHelper$Syncable;->removeDuringSync(Lcom/sonyericsson/home/data/Info;)Z

    goto :goto_0

    .line 101
    .end local v1           #activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    .end local v3           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 102
    .restart local v3       #info:Lcom/sonyericsson/home/data/Info;
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 103
    invoke-interface {p0, v3}, Lcom/sonyericsson/home/data/SyncHelper$Syncable;->addDuringSync(Lcom/sonyericsson/home/data/Info;)Z

    goto :goto_1

    .line 106
    .end local v3           #info:Lcom/sonyericsson/home/data/Info;
    :cond_3
    return-void
.end method

.method public static syncPackageRemoved(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 3
    .parameter "syncable"
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/home/data/SyncHelper$Syncable;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
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

    .line 124
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/Info;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-interface {p0, v1}, Lcom/sonyericsson/home/data/SyncHelper$Syncable;->removeDuringSync(Lcom/sonyericsson/home/data/Info;)Z

    goto :goto_0

    .line 128
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    return-void
.end method
