.class Lcom/sonyericsson/home/resourceload/PackageLoader$RemovePackageTask;
.super Lcom/sonyericsson/util/Worker$Task;
.source "PackageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/resourceload/PackageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemovePackageTask"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "packageName"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$RemovePackageTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 377
    const-string v0, "remove package"

    invoke-direct {p0, v0}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    .line 378
    iput-object p2, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$RemovePackageTask;->mPackageName:Ljava/lang/String;

    .line 379
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method public postExecute()V
    .locals 7

    .prologue
    .line 387
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$RemovePackageTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v5}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$300(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 389
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 390
    .local v1, item:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$RemovePackageTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 391
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 395
    .end local v1           #item:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 396
    .restart local v1       #item:Lcom/sonyericsson/home/data/ActivityInfo;
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$RemovePackageTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v5}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$300(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 399
    .end local v1           #item:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$RemovePackageTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v5}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$200(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashSet;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$RemovePackageTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 401
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$RemovePackageTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v5}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$600(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 402
    .local v4, listener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$RemovePackageTask;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;->onPackageRemoved(Ljava/lang/String;)V

    goto :goto_2

    .line 404
    .end local v4           #listener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    :cond_3
    return-void
.end method
