.class Lcom/android/browser/BrowserActivity$8;
.super Landroid/os/AsyncTask;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->updateScreenshot(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$bm:Landroid/graphics/Bitmap;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$originalUrl:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2446
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$8;->this$0:Lcom/android/browser/BrowserActivity;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$8;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/browser/BrowserActivity$8;->val$originalUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/browser/BrowserActivity$8;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/browser/BrowserActivity$8;->val$bm:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2446
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserActivity$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "unused"

    .prologue
    const/4 v8, 0x0

    .line 2449
    const/4 v0, 0x0

    .line 2451
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/android/browser/BrowserActivity$8;->val$cr:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/browser/BrowserActivity$8;->val$originalUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/browser/BrowserActivity$8;->val$url:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/android/browser/BrowserBookmarksAdapter;->queryBookmarksForUrl(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 2453
    if-eqz v0, :cond_1

    .line 2454
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2455
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2456
    .local v3, values:Landroid/content/ContentValues;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2458
    .local v1, os:Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Lcom/android/browser/BrowserActivity$8;->val$bm:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2459
    const-string v4, "thumbnail"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2462
    :cond_0
    iget-object v4, p0, Lcom/android/browser/BrowserActivity$8;->val$cr:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2465
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    .line 2475
    .end local v1           #os:Ljava/io/ByteArrayOutputStream;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2477
    :cond_2
    :goto_0
    return-object v8

    .line 2468
    :catch_0
    move-exception v4

    .line 2475
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2470
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 2473
    .local v2, s:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v4, "browser"

    const-string v5, "Error when running updateScreenshot "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2475
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v2           #s:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4
.end method
