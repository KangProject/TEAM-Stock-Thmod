.class public Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;
.super Lcom/sonyericsson/home/layer/LayerRendererFactory;
.source "AppTrayRendererFactory.java"


# instance fields
.field mAllStandardRenderers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/animation/Renderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/LayerRendererFactory;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mAllStandardRenderers:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public getStandardRenderer(I)Lcom/sonyericsson/animation/Renderer;
    .locals 2
    .parameter "position"

    .prologue
    .line 28
    invoke-static {}, Lcom/sonyericsson/animation/FloatRenderer;->obtain()Lcom/sonyericsson/animation/FloatRenderer;

    move-result-object v0

    .line 29
    .local v0, renderer:Lcom/sonyericsson/animation/Renderer;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mAllStandardRenderers:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    return-object v0
.end method

.method public recycle(Lcom/sonyericsson/animation/Renderer;)V
    .locals 1
    .parameter "renderer"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mAllStandardRenderers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 36
    invoke-super {p0, p1}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 37
    return-void
.end method

.method public stopAllStandardAnimators()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mAllStandardRenderers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/animation/Renderer;

    .line 41
    .local v1, renderer:Lcom/sonyericsson/animation/Renderer;
    const-string v2, "stop"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v4, v4, v3}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    goto :goto_0

    .line 43
    .end local v1           #renderer:Lcom/sonyericsson/animation/Renderer;
    :cond_0
    return-void
.end method
