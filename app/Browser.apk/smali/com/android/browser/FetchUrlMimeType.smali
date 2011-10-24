.class Lcom/android/browser/FetchUrlMimeType;
.super Landroid/os/AsyncTask;
.source "FetchUrlMimeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentValues;",
        "Ljava/lang/String;",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# instance fields
.field mActivity:Lcom/android/browser/BrowserActivity;

.field mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/browser/FetchUrlMimeType;->mActivity:Lcom/android/browser/BrowserActivity;

    .line 57
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 15
    .parameter "values"

    .prologue
    .line 61
    const/4 v13, 0x0

    aget-object v13, p1, v13

    iput-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    .line 64
    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v14, "uri"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 65
    .local v12, uri:Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    .line 66
    :cond_0
    const/4 v13, 0x0

    .line 119
    :goto_0
    return-object v13

    .line 71
    :cond_1
    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v14, "useragent"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 73
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-static {v13, v12}, Landroid/net/Proxy;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v5

    .line 74
    .local v5, httpHost:Lorg/apache/http/HttpHost;
    if-eqz v5, :cond_2

    .line 75
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v13

    invoke-static {v13, v5}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 77
    :cond_2
    new-instance v8, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v8, v12}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 79
    .local v8, request:Lorg/apache/http/client/methods/HttpHead;
    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v14, "cookiedata"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, cookie:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_3

    .line 81
    const-string v13, "Cookie"

    invoke-virtual {v8, v13, v2}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_3
    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v14, "referer"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, referer:Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    .line 86
    const-string v13, "Referer"

    invoke-virtual {v8, v13, v7}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_4
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v10, result:Landroid/content/ContentValues;
    :try_start_0
    invoke-virtual {v0, v8}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 96
    .local v9, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_7

    .line 97
    const-string v13, "Content-Type"

    invoke-interface {v9, v13}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 98
    .local v4, header:Lorg/apache/http/Header;
    if-eqz v4, :cond_6

    .line 99
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, mimeType:Ljava/lang/String;
    const/16 v13, 0x3b

    invoke-virtual {v6, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 101
    .local v11, semicolonIndex:I
    const/4 v13, -0x1

    if-eq v11, v13, :cond_5

    .line 102
    const/4 v13, 0x0

    invoke-virtual {v6, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 104
    :cond_5
    const-string v13, "Content-Type"

    invoke-virtual {v10, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v11           #semicolonIndex:I
    :cond_6
    const-string v13, "Content-Disposition"

    invoke-interface {v9, v13}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 107
    .local v1, contentDispositionHeader:Lorg/apache/http/Header;
    if-eqz v1, :cond_7

    .line 108
    const-string v13, "Content-Disposition"

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    .end local v1           #contentDispositionHeader:Lorg/apache/http/Header;
    .end local v4           #header:Lorg/apache/http/Header;
    :cond_7
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .end local v9           #response:Lorg/apache/http/HttpResponse;
    :goto_1
    move-object v13, v10

    .line 119
    goto/16 :goto_0

    .line 111
    :catch_0
    move-exception v13

    move-object v3, v13

    .line 112
    .local v3, ex:Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpHead;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1

    .line 113
    .end local v3           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v13

    move-object v3, v13

    .line 114
    .local v3, ex:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpHead;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1

    .end local v3           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v13
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    check-cast p1, [Landroid/content/ContentValues;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/FetchUrlMimeType;->doInBackground([Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Landroid/content/ContentValues;)V
    .locals 9
    .parameter "values"

    .prologue
    .line 124
    const-string v6, "Content-Type"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, mimeType:Ljava/lang/String;
    const-string v6, "Content-Disposition"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, contentDisposition:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 127
    iget-object v6, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v7, "uri"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, url:Ljava/lang/String;
    const-string v6, "text/plain"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "application/octet-stream"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 130
    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    invoke-static {v5}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, newMimeType:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 134
    iget-object v6, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v7, "mimetype"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v4           #newMimeType:Ljava/lang/String;
    :cond_1
    invoke-static {v5, v0, v3}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, filename:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v7, "hint"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .end local v2           #filename:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/browser/FetchUrlMimeType;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v6}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 145
    .local v1, contentUri:Landroid/net/Uri;
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    check-cast p1, Landroid/content/ContentValues;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/FetchUrlMimeType;->onPostExecute(Landroid/content/ContentValues;)V

    return-void
.end method
