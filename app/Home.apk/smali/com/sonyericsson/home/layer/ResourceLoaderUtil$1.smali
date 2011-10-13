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

.field final synthetic val$listener:Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/ResourceLoaderUtil;Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$1;->this$0:Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$1;->val$listener:Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheCallback(Lcom/sonyericsson/home/data/Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "info"
    .parameter "icon"
    .parameter "label"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$1;->this$0:Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mWaitList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$1;->this$0:Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->mWaitList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$1;->val$listener:Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;->onResourcesLoaded()V

    .line 52
    :cond_0
    return-void
.end method
