.class Lcom/sonyericsson/home/layer/InfoGroupManager$3;
.super Ljava/lang/Object;
.source "InfoGroupManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/InfoGroupManager;->cacheShortcuts(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field final synthetic val$resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$3;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$3;->val$resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 386
    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$3;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$000(Lcom/sonyericsson/home/layer/InfoGroupManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 387
    .local v1, infoList:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;>;"
    iget-object v3, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$3;->val$resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->preCacheShortcuts(Ljava/util/Collection;)V

    goto :goto_0

    .line 389
    .end local v1           #infoList:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;>;"
    :cond_0
    return-void
.end method
