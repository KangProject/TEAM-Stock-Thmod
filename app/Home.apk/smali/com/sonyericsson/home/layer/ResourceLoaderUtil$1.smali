.class Lcom/sonyericsson/home/layer/ResourceLoaderUtil$1;
.super Ljava/lang/Object;
.source "ResourceLoaderUtil.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->waitForResourcesLoaded(Ljava/util/Collection;Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/ResourceLoaderUtil;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/ResourceLoaderUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$1;->this$0:Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheCallback(Lcom/sonyericsson/home/data/Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .parameter "info"
    .parameter "icon"
    .parameter "label"
    .parameter "badgeMessage"

    .prologue
    .line 89
    iget-object v2, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$1;->this$0:Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->access$000(Lcom/sonyericsson/home/layer/ResourceLoaderUtil;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 90
    iget-object v2, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$1;->this$0:Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->access$000(Lcom/sonyericsson/home/layer/ResourceLoaderUtil;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$1;->this$0:Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->access$100(Lcom/sonyericsson/home/layer/ResourceLoaderUtil;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;

    .line 92
    .local v0, callback:Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;
    invoke-interface {v0}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;->onResourcesLoaded()V

    goto :goto_0

    .line 94
    .end local v0           #callback:Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$1;->this$0:Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->access$100(Lcom/sonyericsson/home/layer/ResourceLoaderUtil;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 96
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
