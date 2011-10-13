.class public Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;
.super Lcom/sonyericsson/home/layer/LayerRendererFactory;
.source "AppTrayRendererFactory.java"


# instance fields
.field private mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

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

.field private mBadgeIcon:Landroid/graphics/Bitmap;

.field private mBadgeOffset:I

.field private mEnableFloatRenderers:Z

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;Lcom/sonyericsson/home/resourceload/PackageLoader;Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "adapter"
    .parameter "packageLoader"
    .parameter "uninstallIcon"
    .parameter "badgeOffset"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/LayerRendererFactory;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mAllStandardRenderers:Ljava/util/HashSet;

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    .line 45
    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 46
    iput-object p3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mBadgeIcon:Landroid/graphics/Bitmap;

    .line 47
    iput p4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mBadgeOffset:I

    .line 48
    return-void
.end method


# virtual methods
.method public enableFloatRenderers(Z)V
    .locals 0
    .parameter "enableFloatRenderers"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mEnableFloatRenderers:Z

    .line 83
    return-void
.end method

.method public getBadgeIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mBadgeIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getStandardRenderer(I)Lcom/sonyericsson/animation/Renderer;
    .locals 6
    .parameter "position"

    .prologue
    const-string v5, "badge"

    .line 52
    const/4 v2, 0x0

    .line 53
    .local v2, renderer:Lcom/sonyericsson/animation/Renderer;
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mAdapter:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->getItem(I)Lcom/sonyericsson/home/data/ActivityInfo;

    move-result-object v1

    .line 54
    .local v1, info:Lcom/sonyericsson/home/data/ActivityInfo;
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mEnableFloatRenderers:Z

    if-eqz v3, :cond_1

    .line 55
    invoke-static {}, Lcom/sonyericsson/animation/FloatRenderer;->obtain()Lcom/sonyericsson/animation/FloatRenderer;

    move-result-object v2

    .line 60
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->isUninstallable(Lcom/sonyericsson/home/data/ActivityInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, extras:Landroid/os/Bundle;
    const-string v3, "badge"

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mBadgeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    const-string v3, "badge"

    iget v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mBadgeOffset:I

    iget v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mBadgeOffset:I

    invoke-interface {v2, v5, v3, v4, v0}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 65
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mAllStandardRenderers:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    return-object v2

    .line 57
    :cond_1
    invoke-static {}, Lcom/sonyericsson/animation/DisabledRenderer;->obtain()Lcom/sonyericsson/animation/DisabledRenderer;

    move-result-object v2

    goto :goto_0
.end method

.method public recycle(Lcom/sonyericsson/animation/Renderer;)V
    .locals 1
    .parameter "renderer"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->mAllStandardRenderers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 72
    invoke-super {p0, p1}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->recycle(Lcom/sonyericsson/animation/Renderer;)V

    .line 73
    return-void
.end method

.method public stopAllStandardAnimators()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
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

    .line 77
    .local v1, renderer:Lcom/sonyericsson/animation/Renderer;
    const-string v2, "stop"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v4, v4, v3}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    goto :goto_0

    .line 79
    .end local v1           #renderer:Lcom/sonyericsson/animation/Renderer;
    :cond_0
    return-void
.end method
