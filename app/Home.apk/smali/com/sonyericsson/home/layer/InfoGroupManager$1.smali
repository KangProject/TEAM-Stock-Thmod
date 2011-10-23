.class Lcom/sonyericsson/home/layer/InfoGroupManager$1;
.super Ljava/lang/Object;
.source "InfoGroupManager.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/InfoGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/InfoGroupManager;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$1;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 95
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 6
    .parameter "packageName"

    .prologue
    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 100
    .local v0, changedInfoGroups:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/util/UUID;>;"
    iget-object v4, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$1;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$000(Lcom/sonyericsson/home/layer/InfoGroupManager;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 101
    .local v2, infoList:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;>;"
    new-instance v3, Lcom/sonyericsson/home/layer/InfoGroupManager$1$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/sonyericsson/home/layer/InfoGroupManager$1$1;-><init>(Lcom/sonyericsson/home/layer/InfoGroupManager$1;Ljava/util/Map$Entry;Ljava/util/HashSet;)V

    .line 117
    .local v3, syncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$1;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$200(Lcom/sonyericsson/home/layer/InfoGroupManager;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v3, v4, v5, p1}, Lcom/sonyericsson/home/data/SyncHelper;->syncPackageChanged(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    .end local v2           #infoList:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;>;"
    .end local v3           #syncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 122
    iget-object v4, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$1;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$300(Lcom/sonyericsson/home/layer/InfoGroupManager;)V

    .line 123
    iget-object v4, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$1;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v4, v0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$400(Lcom/sonyericsson/home/layer/InfoGroupManager;Ljava/lang/Iterable;)V

    .line 125
    :cond_1
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 130
    .local v0, changedInfoGroups:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/util/UUID;>;"
    iget-object v4, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$1;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$000(Lcom/sonyericsson/home/layer/InfoGroupManager;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 131
    .local v2, infoList:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;>;"
    new-instance v3, Lcom/sonyericsson/home/layer/InfoGroupManager$1$2;

    invoke-direct {v3, p0, v2, v0}, Lcom/sonyericsson/home/layer/InfoGroupManager$1$2;-><init>(Lcom/sonyericsson/home/layer/InfoGroupManager$1;Ljava/util/Map$Entry;Ljava/util/HashSet;)V

    .line 147
    .local v3, syncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-static {v3, v4, p1}, Lcom/sonyericsson/home/data/SyncHelper;->syncPackageRemoved(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    .end local v2           #infoList:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;>;"
    .end local v3           #syncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 152
    iget-object v4, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$1;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$300(Lcom/sonyericsson/home/layer/InfoGroupManager;)V

    .line 153
    iget-object v4, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$1;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v4, v0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$400(Lcom/sonyericsson/home/layer/InfoGroupManager;Ljava/lang/Iterable;)V

    .line 155
    :cond_1
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 159
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 163
    return-void
.end method
