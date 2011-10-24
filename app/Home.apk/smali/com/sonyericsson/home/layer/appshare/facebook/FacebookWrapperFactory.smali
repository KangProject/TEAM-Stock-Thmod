.class public Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapperFactory;
.super Ljava/lang/Object;
.source "FacebookWrapperFactory.java"


# static fields
.field private static sFacebookWrapper:Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFacebookWrapper(Landroid/content/Context;)Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    sget-object v0, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapperFactory;->sFacebookWrapper:Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapperFactory;->sFacebookWrapper:Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

    .line 31
    :goto_0
    return-object v0

    .line 28
    :cond_0
    if-eqz p0, :cond_1

    .line 29
    new-instance v0, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setMockedFacebookWrapper(Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;)V
    .locals 0
    .parameter "facebookWrapper"

    .prologue
    .line 43
    sput-object p0, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapperFactory;->sFacebookWrapper:Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

    .line 44
    return-void
.end method
