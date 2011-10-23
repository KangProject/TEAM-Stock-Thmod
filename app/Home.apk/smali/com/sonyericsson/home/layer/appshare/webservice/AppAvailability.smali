.class Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;
.super Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethod;
.source "AppAvailability.java"


# static fields
.field private static final IN_PARAM_ANDROID_VERSION:Ljava/lang/String; = "androidVersion"

.field private static final IN_PARAM_LOCALE:Ljava/lang/String; = "locale"

.field private static final IN_PARAM_OPERATOR_CODE:Ljava/lang/String; = "operatorCode"

.field private static final IN_PARAM_PHONE_NAME:Ljava/lang/String; = "phoneName"

.field private static final OUT_PARAM_AVAILBLE:Ljava/lang/String; = "available"

.field private static final URL:Ljava/lang/String;


# instance fields
.field private final mAndroidVersion:Ljava/lang/String;

.field private final mLocale:Ljava/lang/String;

.field private final mOperatorCode:Ljava/lang/String;

.field private final mPhoneName:Ljava/lang/String;

.field private final mPkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apps/google/{pkgName}/availability"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;->URL:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "httpClient"
    .parameter "pkgName"
    .parameter "locale"
    .parameter "operatorCode"
    .parameter "androidVersion"
    .parameter "phoneName"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethod;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;)V

    .line 62
    iput-object p2, p0, Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;->mPkgName:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;->mLocale:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;->mOperatorCode:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;->mAndroidVersion:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;->mPhoneName:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method protected getHttpMethod()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5

    .prologue
    .line 74
    sget-object v2, Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;->URL:Ljava/lang/String;

    const-string v3, "{pkgName}"

    iget-object v4, p0, Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "locale"

    iget-object v4, p0, Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;->mLocale:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "operatorCode"

    iget-object v4, p0, Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;->mOperatorCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "androidVersion"

    iget-object v4, p0, Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;->mAndroidVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "phoneName"

    iget-object v4, p0, Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;->mPhoneName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 79
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    return-object v0
.end method

.method protected handleResponse(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 88
    const-string v0, "available"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic handleResponse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/appshare/webservice/AppAvailability;->handleResponse(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
