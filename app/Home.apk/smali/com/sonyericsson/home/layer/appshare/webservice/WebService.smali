.class public Lcom/sonyericsson/home/layer/appshare/webservice/WebService;
.super Ljava/lang/Object;
.source "WebService.java"


# static fields
.field private static final ERROR_MESSAGE_NETWORK_OPERATOR:Ljava/lang/String; = "The network operator string mustn\'t be an empty string (or null)"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final mLocale:Ljava/lang/String;

.field private final mMcc:Ljava/lang/String;

.field private final mNetworkOperator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;->mLocale:Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 61
    .local v1, tel:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, code:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_1

    :cond_0
    move-object v2, v5

    :goto_0
    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;->mNetworkOperator:Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;->mNetworkOperator:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v5

    :goto_1
    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;->mMcc:Ljava/lang/String;

    .line 64
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;->mHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 65
    return-void

    :cond_1
    move-object v2, v0

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;->mNetworkOperator:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private assertNetworkOperatorCode()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethodException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;->mNetworkOperator:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;->mNetworkOperator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;->mMcc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;->mMcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    new-instance v0, Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethodException;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "The network operator string mustn\'t be an empty string (or null)"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethodException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 78
    :cond_1
    return-void
.end method


# virtual methods
.method public isAppAvailable(Ljava/lang/String;)Z
    .locals 7
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethodException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;->assertNetworkOperatorCode()V

    .line 93
    new-instance v0, Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;->mHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;->mLocale:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;->mNetworkOperator:Ljava/lang/String;

    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v0, appAvailability:Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;->execute()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
