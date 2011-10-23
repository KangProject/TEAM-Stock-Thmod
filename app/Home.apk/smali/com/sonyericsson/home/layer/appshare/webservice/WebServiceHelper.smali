.class public Lcom/sonyericsson/home/layer/appshare/webservice/WebServiceHelper;
.super Ljava/lang/Object;
.source "WebServiceHelper.java"


# static fields
.field protected static final BASE_MARKET_URI:Ljava/lang/String; = "https://market.android.com/details?id="


# instance fields
.field private mWebService:Lcom/sonyericsson/home/layer/appshare/webservice/WebService;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/layer/appshare/webservice/WebService;)V
    .locals 0
    .parameter "webService"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/webservice/WebServiceHelper;->mWebService:Lcom/sonyericsson/home/layer/appshare/webservice/WebService;

    .line 29
    return-void
.end method


# virtual methods
.method public getMarketUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethodException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/webservice/WebServiceHelper;->mWebService:Lcom/sonyericsson/home/layer/appshare/webservice/WebService;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;->isAppAvailable(Ljava/lang/String;)Z

    move-result v0

    .line 42
    .local v0, isAvailable:Z
    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://market.android.com/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 43
    .local v1, url:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 42
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_0
.end method
