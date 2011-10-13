.class public Lcom/sonyericsson/home/layer/ResourceLoaderUtil;
.super Ljava/lang/Object;
.source "ResourceLoaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;
    }
.end annotation


# instance fields
.field private mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

.field mWaitList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 1
    .parameter "resourceLoader"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mWaitList:Ljava/util/Set;

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 39
    return-void
.end method


# virtual methods
.method public waitForResourcesLoaded(Ljava/util/Collection;Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;)V
    .locals 4
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;",
            "Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v2, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mWaitList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 44
    iget-object v2, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mWaitList:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 45
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 46
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    new-instance v3, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$1;

    invoke-direct {v3, p0, p2}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$1;-><init>(Lcom/sonyericsson/home/layer/ResourceLoaderUtil;Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;)V

    invoke-virtual {v2, v1, v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V

    goto :goto_0

    .line 55
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_0
    return-void
.end method
