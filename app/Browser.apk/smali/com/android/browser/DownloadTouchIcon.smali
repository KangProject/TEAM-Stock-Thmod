.class Lcom/android/browser/DownloadTouchIcon;
.super Landroid/os/AsyncTask;
.source "DownloadTouchIcon.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mOriginalUrl:Ljava/lang/String;

.field mTab:Lcom/android/browser/Tab;

.field private final mUrl:Ljava/lang/String;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .parameter "ctx"
    .parameter "cr"
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/android/browser/DownloadTouchIcon;->mTab:Lcom/android/browser/Tab;

    .line 65
    iput-object p1, p0, Lcom/android/browser/DownloadTouchIcon;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/browser/DownloadTouchIcon;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    iput-object v0, p0, Lcom/android/browser/DownloadTouchIcon;->mOriginalUrl:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/android/browser/DownloadTouchIcon;->mUrl:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/android/browser/DownloadTouchIcon;->mUserAgent:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/android/browser/Tab;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "tab"
    .parameter "ctx"
    .parameter "cr"
    .parameter "view"

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/browser/DownloadTouchIcon;->mTab:Lcom/android/browser/Tab;

    .line 55
    iput-object p2, p0, Lcom/android/browser/DownloadTouchIcon;->mContext:Landroid/content/Context;

    .line 56
    iput-object p3, p0, Lcom/android/browser/DownloadTouchIcon;->mContentResolver:Landroid/content/ContentResolver;

    .line 58
    invoke-virtual {p4}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/DownloadTouchIcon;->mOriginalUrl:Ljava/lang/String;

    .line 59
    invoke-virtual {p4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/DownloadTouchIcon;->mUrl:Ljava/lang/String;

    .line 60
    invoke-virtual {p4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/DownloadTouchIcon;->mUserAgent:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private storeIcon(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "icon"

    .prologue
    const/4 v6, 0x0

    .line 128
    iget-object v2, p0, Lcom/android/browser/DownloadTouchIcon;->mTab:Lcom/android/browser/Tab;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/android/browser/DownloadTouchIcon;->mTab:Lcom/android/browser/Tab;

    iput-object v6, v2, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    .line 133
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/browser/DownloadTouchIcon;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 139
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 140
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "touch_icon"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 143
    iget-object v2, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    :cond_3
    iget-object v2, p0, Lcom/android/browser/DownloadTouchIcon;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 148
    iget-object v2, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/DownloadTouchIcon;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 14
    .parameter "values"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 74
    iget-object v9, p0, Lcom/android/browser/DownloadTouchIcon;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v10, p0, Lcom/android/browser/DownloadTouchIcon;->mOriginalUrl:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/browser/DownloadTouchIcon;->mUrl:Ljava/lang/String;

    invoke-static {v9, v10, v11, v13}, Lcom/android/browser/BrowserBookmarksAdapter;->queryBookmarksForUrl(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    .line 76
    iget-object v9, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_2

    .line 77
    const/4 v9, 0x0

    aget-object v8, p1, v9

    .line 79
    .local v8, url:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/browser/DownloadTouchIcon;->mUserAgent:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 81
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    iget-object v9, p0, Lcom/android/browser/DownloadTouchIcon;->mContext:Landroid/content/Context;

    invoke-static {v9, v8}, Landroid/net/Proxy;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v4

    .line 82
    .local v4, httpHost:Lorg/apache/http/HttpHost;
    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    invoke-static {v9, v4}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 86
    :cond_0
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 89
    .local v6, request:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    invoke-static {v9, v13}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 92
    :try_start_0
    invoke-virtual {v0, v6}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 94
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_1

    .line 95
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 96
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_1

    .line 97
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 98
    .local v1, content:Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 99
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 101
    .local v5, icon:Landroid/graphics/Bitmap;
    invoke-direct {p0, v5}, Lcom/android/browser/DownloadTouchIcon;->storeIcon(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    .end local v1           #content:Ljava/io/InputStream;
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #icon:Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 113
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local v4           #httpHost:Lorg/apache/http/HttpHost;
    .end local v6           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #url:Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v9, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_3

    .line 114
    iget-object v9, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_3
    return-object v12

    .line 105
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v4       #httpHost:Lorg/apache/http/HttpHost;
    .restart local v6       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #url:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 106
    .local v3, ex:Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 107
    .end local v3           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v9

    move-object v3, v9

    .line 108
    .local v3, ex:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .end local v3           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v9
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_0
    return-void
.end method
