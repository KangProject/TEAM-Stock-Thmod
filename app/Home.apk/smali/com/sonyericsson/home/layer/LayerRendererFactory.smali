.class public Lcom/sonyericsson/home/layer/LayerRendererFactory;
.super Ljava/lang/Object;
.source "LayerRendererFactory.java"

# interfaces
.implements Lcom/sonyericsson/paneview/RendererFactory;


# instance fields
.field private mAddInterpolator:Landroid/view/animation/Interpolator;

.field private mIgnoreNextDeleteRendererRequest:I

.field private mOverrideAddRenderers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/animation/Renderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/LayerRendererFactory;->mOverrideAddRenderers:Ljava/util/HashMap;

    .line 31
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/LayerRendererFactory;->mAddInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public createDefaultAddRenderer()Lcom/sonyericsson/animation/Renderer;
    .locals 7

    .prologue
    .line 44
    invoke-static {}, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->obtain()Lcom/sonyericsson/animation/ScaleAlphaRenderer;

    move-result-object v0

    .line 45
    .local v0, renderer:Lcom/sonyericsson/animation/ScaleAlphaRenderer;
    const/16 v1, 0x258

    iget-object v2, p0, Lcom/sonyericsson/home/layer/LayerRendererFactory;->mAddInterpolator:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/high16 v5, 0x4000

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->setProperties(ILandroid/view/animation/Interpolator;IIFF)V

    .line 46
    return-object v0
.end method

.method public createDefaultDeleteRenderer()Lcom/sonyericsson/animation/Renderer;
    .locals 7

    .prologue
    .line 54
    invoke-static {}, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->obtain()Lcom/sonyericsson/animation/ScaleAlphaRenderer;

    move-result-object v0

    .line 55
    .local v0, renderer:Lcom/sonyericsson/animation/ScaleAlphaRenderer;
    const/16 v1, 0x190

    iget-object v2, p0, Lcom/sonyericsson/home/layer/LayerRendererFactory;->mAddInterpolator:Landroid/view/animation/Interpolator;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3e80

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/animation/ScaleAlphaRenderer;->setProperties(ILandroid/view/animation/Interpolator;IIFF)V

    .line 56
    return-object v0
.end method

.method public createDefaultMoveRenderer()Lcom/sonyericsson/animation/Renderer;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/sonyericsson/animation/SpringMoveRenderer;->obtain()Lcom/sonyericsson/animation/SpringMoveRenderer;

    move-result-object v0

    return-object v0
.end method

.method public getAddRenderer(I)Lcom/sonyericsson/animation/Renderer;
    .locals 2
    .parameter "position"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/home/layer/LayerRendererFactory;->mOverrideAddRenderers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/home/layer/LayerRendererFactory;->mOverrideAddRenderers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/animation/Renderer;

    move-object v0, p0

    .line 65
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->createDefaultAddRenderer()Lcom/sonyericsson/animation/Renderer;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeleteRenderer()Lcom/sonyericsson/animation/Renderer;
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/sonyericsson/home/layer/LayerRendererFactory;->mIgnoreNextDeleteRendererRequest:I

    if-lez v0, :cond_0

    .line 78
    iget v0, p0, Lcom/sonyericsson/home/layer/LayerRendererFactory;->mIgnoreNextDeleteRendererRequest:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/home/layer/LayerRendererFactory;->mIgnoreNextDeleteRendererRequest:I

    .line 79
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->createDefaultDeleteRenderer()Lcom/sonyericsson/animation/Renderer;

    move-result-object v0

    goto :goto_0
.end method

.method public getMoveRenderer(I)Lcom/sonyericsson/animation/Renderer;
    .locals 1
    .parameter "position"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->createDefaultMoveRenderer()Lcom/sonyericsson/animation/Renderer;

    move-result-object v0

    .line 72
    .local v0, animator:Lcom/sonyericsson/animation/Renderer;
    return-object v0
.end method

.method public getStandardRenderer(I)Lcom/sonyericsson/animation/Renderer;
    .locals 1
    .parameter "position"

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignoreNextGetDeleteRenderer(I)V
    .locals 0
    .parameter "nbr"

    .prologue
    .line 40
    iput p1, p0, Lcom/sonyericsson/home/layer/LayerRendererFactory;->mIgnoreNextDeleteRendererRequest:I

    .line 41
    return-void
.end method

.method public recycle(Lcom/sonyericsson/animation/Renderer;)V
    .locals 1
    .parameter "renderer"

    .prologue
    .line 87
    instance-of v0, p1, Lcom/sonyericsson/util/Recyclable;

    if-eqz v0, :cond_0

    .line 88
    check-cast p1, Lcom/sonyericsson/util/Recyclable;

    .end local p1
    invoke-interface {p1}, Lcom/sonyericsson/util/Recyclable;->recycle()V

    .line 91
    :cond_0
    return-void
.end method

.method public setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V
    .locals 2
    .parameter "renderer"
    .parameter "position"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/home/layer/LayerRendererFactory;->mOverrideAddRenderers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method
