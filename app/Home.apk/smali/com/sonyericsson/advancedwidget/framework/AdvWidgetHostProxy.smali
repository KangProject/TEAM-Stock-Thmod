.class public final Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;
.super Lcom/sonyericsson/advancedwidget/framework/Proxy;
.source "AdvWidgetHostProxy.java"


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, comm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/sonyericsson/advancedwidget/framework/Proxy;-><init>(Ljava/util/Map;)V

    .line 20
    return-void
.end method


# virtual methods
.method public addFullScreenEffect(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 35
    const-string v0, "addFullScreenEffect"

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public final getFrameworkVersion()I
    .locals 2

    .prologue
    .line 28
    const-string v0, "getFrameworkVersion"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onConfigured(I)V
    .locals 2
    .parameter "response"

    .prologue
    .line 49
    const-string v0, "onConfigured"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public removeFullScreenEffect(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 42
    const-string v0, "removeFullScreenEffect"

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public setId(Ljava/util/UUID;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 57
    const-string v0, "setId"

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method
