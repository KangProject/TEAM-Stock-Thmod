.class abstract Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethod;
.super Ljava/lang/Object;
.source "ServerMethod.java"


# static fields
.field protected static final BASE_URL:Ljava/lang/String; = null

.field private static final OUT_PARAM_MESSAGE:Ljava/lang/String; = "message"

.field private static final OUT_PARAM_STATUS_CODE:Ljava/lang/String; = "statusCode"

.field public static final SUCCESS:I


# instance fields
.field private final mHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "https://ds-1.sonyericsson.com/v1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethod;->BASE_URL:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;)V
    .locals 0
    .parameter "httpClient"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethod;->mHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 57
    return-void
.end method

.method private parseToJSON(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 8
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/sonyericsson/home/layer/appshare/webservice/ServerReturnCodeException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v5, 0x0

    .line 172
    .local v5, reply:Lorg/json/JSONObject;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, p1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 173
    .local v4, reader:Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v0, builder:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 178
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #reply:Lorg/json/JSONObject;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    .restart local v5       #reply:Lorg/json/JSONObject;
    const-string v6, "statusCode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 180
    .local v1, code:I
    if-eqz v1, :cond_1

    .line 181
    const-string v6, "message"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, message:Ljava/lang/String;
    const/4 v5, 0x0

    .line 183
    new-instance v6, Lcom/sonyericsson/home/layer/appshare/webservice/ServerReturnCodeException;

    invoke-direct {v6, v1, v3}, Lcom/sonyericsson/home/layer/appshare/webservice/ServerReturnCodeException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 186
    .end local v3           #message:Ljava/lang/String;
    :cond_1
    return-object v5
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethodException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v3, 0x0

    .line 69
    .local v3, response:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 72
    .local v1, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethod;->openServerStream()Ljava/io/InputStream;

    move-result-object v1

    .line 73
    if-nez v1, :cond_1

    .line 74
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Failed to open stream"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 88
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v4, Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethodException;

    invoke-direct {v4, v0}, Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethodException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_0

    .line 93
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 94
    const/4 v1, 0x0

    .line 97
    :cond_0
    :goto_0
    throw v4

    .line 78
    :cond_1
    :try_start_3
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethod;->parseToJSON(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v2

    .line 80
    .local v2, reply:Lorg/json/JSONObject;
    if-nez v2, :cond_2

    .line 81
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Failed to parse the response"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 86
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethod;->handleResponse(Lorg/json/JSONObject;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    .line 91
    if-eqz v1, :cond_3

    .line 93
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 94
    const/4 v1, 0x0

    .line 100
    :cond_3
    :goto_1
    return-object v3

    .line 95
    :catch_1
    move-exception v4

    goto :goto_1

    .end local v2           #reply:Lorg/json/JSONObject;
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method protected abstract getHttpMethod()Lorg/apache/http/client/methods/HttpUriRequest;
.end method

.method protected abstract handleResponse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected openServerStream()Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, inputStream:Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethod;->getHttpMethod()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    .line 139
    .local v3, method:Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v6, p0, Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethod;->mHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v6, v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 140
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 141
    .local v5, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 142
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 143
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 153
    return-object v1

    .line 146
    :cond_0
    const-string v2, "Failed to get response - entity was null"

    .line 147
    .local v2, message:Ljava/lang/String;
    new-instance v6, Lorg/apache/http/HttpException;

    invoke-direct {v6, v2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 150
    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    .end local v2           #message:Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HttpRequest failed - status line: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .restart local v2       #message:Ljava/lang/String;
    new-instance v6, Lorg/apache/http/HttpException;

    invoke-direct {v6, v2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
