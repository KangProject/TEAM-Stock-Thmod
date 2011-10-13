.class Lcom/sonyericsson/home/resourceload/ResourceLoader$2;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/resourceload/ResourceLoader;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/badge/BadgeManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addToCache(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 402
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 403
    .local v2, items:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 404
    .local v1, item:Lcom/sonyericsson/home/data/ActivityInfo;
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1800(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    goto :goto_0

    .line 406
    .end local v1           #item:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_0
    return-void
.end method

.method private removeFromCache(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 5
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v4}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 410
    .local v2, keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/Info;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 412
    .local v3, keysToRemove:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/Info;

    .line 413
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/Info;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 414
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 418
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/Info;

    .line 419
    .restart local v1       #info:Lcom/sonyericsson/home/data/Info;
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v4}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 422
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_2
    return-object v3
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->addToCache(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 6
    .parameter "packageName"

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->removeFromCache(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v4

    .line 433
    .local v4, removedInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

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

    .line 434
    .local v3, info:Lcom/sonyericsson/home/data/Info;
    instance-of v5, v3, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v5, :cond_0

    .line 435
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v5, v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1800(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    goto :goto_0

    .line 440
    .end local v3           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v5}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 442
    .local v0, activityInfoSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 443
    .local v3, info:Lcom/sonyericsson/home/data/ActivityInfo;
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v5}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1900(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/badge/BadgeManager;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 444
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v5}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1900(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/badge/BadgeManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sonyericsson/home/badge/BadgeManager;->getBadgeMessage(Lcom/sonyericsson/home/data/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, badgeMessage:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 446
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v5}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$900(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .end local v1           #badgeMessage:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v5, v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1800(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    goto :goto_1

    .line 451
    .end local v3           #info:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_3
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;->removeFromCache(Ljava/lang/String;)Ljava/util/LinkedList;

    .line 455
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 459
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 463
    return-void
.end method
