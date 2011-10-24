.class Lcom/android/browser/Tab$3$3;
.super Landroid/os/AsyncTask;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab$3;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
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
.field final synthetic this$1:Lcom/android/browser/Tab$3;

.field final synthetic val$pageUrl:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab$3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 972
    iput-object p1, p0, Lcom/android/browser/Tab$3$3;->this$1:Lcom/android/browser/Tab$3;

    iput-object p2, p0, Lcom/android/browser/Tab$3$3;->val$pageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/browser/Tab$3$3;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 972
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/Tab$3$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .parameter "unused"

    .prologue
    const/4 v13, 0x0

    const-string v1, "Tab"

    const-string v5, "%"

    .line 976
    iget-object v11, p0, Lcom/android/browser/Tab$3$3;->val$pageUrl:Ljava/lang/String;

    .line 977
    .local v11, url:Ljava/lang/String;
    const-string v1, "http://www."

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 978
    const/16 v1, 0xb

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 983
    :cond_0
    :goto_0
    const-string v1, "\\"

    const-string v2, "\\\\"

    invoke-virtual {v11, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    const-string v2, "\\%"

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v5, "\\_"

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 985
    const/4 v6, 0x0

    .line 987
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/Tab$3$3;->this$1:Lcom/android/browser/Tab$3;

    iget-object v1, v1, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 989
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 990
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v11, v4, v1

    .line 991
    .local v4, selArgs:[Ljava/lang/String;
    const-string v3, "url LIKE ? ESCAPE \'\\\' AND bookmark = 0"

    .line 994
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v12, "_id"

    aput-object v12, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 997
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1000
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1001
    .local v9, map:Landroid/content/ContentValues;
    const-string v1, "title"

    iget-object v2, p0, Lcom/android/browser/Tab$3$3;->val$title:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    .line 1004
    .local v10, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v2, "_id = ?"

    invoke-virtual {v0, v1, v9, v2, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1014
    .end local v9           #map:Landroid/content/ContentValues;
    .end local v10           #projection:[Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1016
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selArgs:[Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v13

    .line 979
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    const-string v1, "http://"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    const/4 v1, 0x4

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 1007
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 1008
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v1, "Tab"

    const-string v2, "Tab onReceived title"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1014
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1009
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 1010
    .local v8, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v1, "Tab"

    const-string v2, "onReceivedTitle() caught SQLiteException: "

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1014
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method
