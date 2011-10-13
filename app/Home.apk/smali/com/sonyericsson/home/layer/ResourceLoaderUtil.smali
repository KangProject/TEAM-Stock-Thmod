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
.field private final mListenerList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

.field private final mWaitInfoSet:Ljava/util/Set;
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
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mListenerList:Ljava/util/LinkedList;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mWaitInfoSet:Ljava/util/Set;

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/ResourceLoaderUtil;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mWaitInfoSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/ResourceLoaderUtil;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mListenerList:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public waitForResourcesLoaded(Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mListenerList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {p1}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;->onResourcesLoaded()V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mListenerList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

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
    .line 72
    .local p1, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v2, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mWaitInfoSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mWaitInfoSet:Ljava/util/Set;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->hasQueuedInfos(Ljava/util/Set;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Waiting for infos not queued for resource loading"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mListenerList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    invoke-interface {p2}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;->onResourcesLoaded()V

    .line 100
    :cond_2
    :goto_0
    return-void

    .line 80
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mListenerList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 81
    iget-object v2, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mListenerList:Ljava/util/LinkedList;

    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mWaitInfoSet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 84
    iget-object v2, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mListenerList:Ljava/util/LinkedList;

    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 86
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    new-instance v3, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$1;-><init>(Lcom/sonyericsson/home/layer/ResourceLoaderUtil;)V

    invoke-virtual {v2, v1, v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V

    goto :goto_1
.end method
