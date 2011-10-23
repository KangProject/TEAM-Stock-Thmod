.class public Lcom/sonyericsson/home/layer/appshare/facebook/SemcFacebookFactoryWrapper;
.super Ljava/lang/Object;
.source "SemcFacebookFactoryWrapper.java"


# static fields
.field private static mSemcFacebook:Lcom/sonyericsson/facebook/proxy/SemcFacebook;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSemcFacebook()Lcom/sonyericsson/facebook/proxy/SemcFacebook;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sonyericsson/home/layer/appshare/facebook/SemcFacebookFactoryWrapper;->mSemcFacebook:Lcom/sonyericsson/facebook/proxy/SemcFacebook;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/sonyericsson/home/layer/appshare/facebook/SemcFacebookFactoryWrapper;->mSemcFacebook:Lcom/sonyericsson/facebook/proxy/SemcFacebook;

    .line 32
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/facebook/proxy/SemcFacebookFactory;->createSemcFacebook()Lcom/sonyericsson/facebook/proxy/SemcFacebook;

    move-result-object v0

    goto :goto_0
.end method

.method public static setMockedSemcFacebook(Lcom/sonyericsson/facebook/proxy/SemcFacebook;)V
    .locals 0
    .parameter "semcFacebook"

    .prologue
    .line 40
    sput-object p0, Lcom/sonyericsson/home/layer/appshare/facebook/SemcFacebookFactoryWrapper;->mSemcFacebook:Lcom/sonyericsson/facebook/proxy/SemcFacebook;

    .line 41
    return-void
.end method
