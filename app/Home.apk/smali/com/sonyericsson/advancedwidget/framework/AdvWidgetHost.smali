.class public abstract Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;
.super Lcom/sonyericsson/advancedwidget/framework/Stub;
.source "AdvWidgetHost.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvWidgetHost"


# instance fields
.field private mId:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addFullScreenEffect(Landroid/view/View;)V
.end method

.method protected call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "funcName"
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 80
    const-string v0, "addFullScreenEffect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    check-cast p2, Landroid/view/View;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->addFullScreenEffect(Landroid/view/View;)V

    move-object v0, v3

    .line 96
    :goto_0
    return-object v0

    .line 83
    .restart local p2
    :cond_0
    const-string v0, "removeFullScreenEffect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    check-cast p2, Landroid/view/View;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->removeFullScreenEffect(Landroid/view/View;)V

    move-object v0, v3

    .line 85
    goto :goto_0

    .line 86
    .restart local p2
    :cond_1
    const-string v0, "onConfigured"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->onConfigured(I)V

    move-object v0, v3

    .line 88
    goto :goto_0

    .line 89
    .restart local p2
    :cond_2
    const-string v0, "setId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    check-cast p2, Ljava/util/UUID;

    .end local p2
    iput-object p2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->mId:Ljava/util/UUID;

    move-object v0, v3

    .line 91
    goto :goto_0

    .line 92
    .restart local p2
    :cond_3
    const-string v0, "getFrameworkVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->getFrameworkVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_4
    const-string v0, "AdvWidgetHost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown function: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 96
    goto :goto_0
.end method

.method public final getFrameworkVersion()I
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x120

    return v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method public abstract onConfigured(I)V
.end method

.method public abstract removeFullScreenEffect(Landroid/view/View;)V
.end method
