.class Lcom/android/browser/Bookmarks;
.super Ljava/lang/Object;
.source "Bookmarks.java"


# static fields
.field private static final acceptableBookmarkSchemes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "about:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "javascript:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "file:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "content:"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/Bookmarks;->acceptableBookmarkSchemes:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 7
    .parameter "context"
    .parameter "cr"
    .parameter "url"
    .parameter "name"
    .parameter "thumbnail"
    .parameter "retainIcon"

    .prologue
    .line 76
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/browser/Bookmarks;->addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V

    .line 77
    return-void
.end method

.method static addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V
    .locals 9
    .parameter "context"
    .parameter "cr"
    .parameter "url"
    .parameter "name"
    .parameter "thumbnail"
    .parameter "retainIcon"
    .parameter "showToast"

    .prologue
    .line 82
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 83
    .local v1, creationTime:J
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v6, map:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 86
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1, p2}, Landroid/provider/Browser;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 87
    .end local v0           #cursor:Landroid/database/Cursor;
    .local v3, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 91
    const-string v0, "created"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .end local v1           #creationTime:J
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    const-string v0, "title"

    invoke-virtual {v6, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string p3, "bookmark"

    .end local p3
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string p3, "thumbnail"

    invoke-static {p4}, Lcom/android/browser/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p4

    .end local p4
    invoke-virtual {v6, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 96
    sget-object p3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_id = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v6, p4, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    :cond_0
    :goto_0
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object p1, v3

    .line 149
    .end local v3           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    if-eqz p5, :cond_2

    .line 150
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object p1

    .end local p1           #cursor:Landroid/database/Cursor;
    invoke-virtual {p1, p2}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    .line 152
    :cond_2
    if-eqz p0, :cond_3

    if-eqz p6, :cond_3

    .line 153
    const p1, 0x7f080009

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .end local p2
    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 156
    :cond_3
    return-void

    .line 99
    .restart local v1       #creationTime:J
    .restart local v3       #cursor:Landroid/database/Cursor;
    .restart local p0
    .local p1, cr:Landroid/content/ContentResolver;
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_4
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 100
    .local v0, count:I
    const/4 v7, 0x0

    .line 101
    .local v7, matchedTitle:Z
    const/4 v4, 0x0

    .local v4, i:I
    move v5, v4

    .end local v4           #i:I
    .local v5, i:I
    :goto_2
    if-ge v5, v0, :cond_9

    .line 104
    invoke-interface {v3, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 105
    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, databaseTitle:Ljava/lang/String;
    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .end local v4           #databaseTitle:Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 109
    const-string v4, "created"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .end local v5           #i:I
    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    .end local v7           #matchedTitle:Z
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v6, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    const/4 v4, 0x1

    .line 117
    .local v4, matchedTitle:Z
    :goto_3
    if-nez v4, :cond_0

    .line 121
    const-string v4, "title"

    .end local v4           #matchedTitle:Z
    invoke-virtual {v6, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string p3, "url"

    .end local p3
    invoke-virtual {v6, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string p3, "created"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .end local v1           #creationTime:J
    invoke-virtual {v6, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    const-string p3, "bookmark"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string p3, "date"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string p3, "thumbnail"

    invoke-static {p4}, Lcom/android/browser/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p4

    .end local p4
    invoke-virtual {v6, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 128
    const/4 p3, 0x0

    .line 129
    .local p3, visits:I
    if-lez v0, :cond_5

    .line 135
    const/4 p3, 0x2

    invoke-interface {v3, p3}, Landroid/database/Cursor;->getInt(I)I

    .end local p3           #visits:I
    move-result p3

    .line 140
    .restart local p3       #visits:I
    :cond_5
    const-string p4, "visits"

    add-int/lit8 p3, p3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p3           #visits:I
    move-result-object p3

    invoke-virtual {v6, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    sget-object p3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p3, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 144
    .end local v0           #count:I
    :catch_0
    move-exception p1

    move-object p3, p1

    move-object p1, v3

    .line 145
    .end local v3           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    .local p3, e:Ljava/lang/IllegalStateException;
    :goto_4
    :try_start_3
    const-string p4, "Bookmarks"

    const-string v0, "addBookmark"

    invoke-static {p4, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 147
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 101
    .restart local v0       #count:I
    .restart local v1       #creationTime:J
    .restart local v3       #cursor:Landroid/database/Cursor;
    .restart local v5       #i:I
    .restart local v7       #matchedTitle:Z
    .local p1, cr:Landroid/content/ContentResolver;
    .local p3, name:Ljava/lang/String;
    .restart local p4
    :cond_6
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .local v4, i:I
    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto/16 :goto_2

    .line 147
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v5           #i:I
    .end local v7           #matchedTitle:Z
    .local v0, cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #creationTime:J
    .end local p1           #cr:Landroid/content/ContentResolver;
    .end local p3           #name:Ljava/lang/String;
    .end local p4
    .local p0, cursor:Landroid/database/Cursor;
    :goto_5
    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p1

    .restart local v3       #cursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #cr:Landroid/content/ContentResolver;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    .end local v3           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_5

    .local p0, context:Landroid/content/Context;
    .local p1, cursor:Landroid/database/Cursor;
    .local p3, e:Ljava/lang/IllegalStateException;
    :catchall_2
    move-exception p0

    move-object v8, p0

    move-object p0, p1

    .end local p1           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    move-object p1, v8

    goto :goto_5

    .line 144
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #creationTime:J
    .local p0, context:Landroid/content/Context;
    .local p1, cr:Landroid/content/ContentResolver;
    .local p3, name:Ljava/lang/String;
    .restart local p4
    :catch_1
    move-exception p1

    move-object p3, p1

    move-object p1, v0

    .end local v0           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    goto :goto_4

    .end local v1           #creationTime:J
    .end local p3           #name:Ljava/lang/String;
    .end local p4
    .restart local v3       #cursor:Landroid/database/Cursor;
    .local p1, cr:Landroid/content/ContentResolver;
    :cond_8
    move-object p1, v3

    .end local v3           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    goto/16 :goto_1

    .local v0, count:I
    .restart local v1       #creationTime:J
    .restart local v3       #cursor:Landroid/database/Cursor;
    .restart local v5       #i:I
    .restart local v7       #matchedTitle:Z
    .local p1, cr:Landroid/content/ContentResolver;
    .restart local p3       #name:Ljava/lang/String;
    .restart local p4
    :cond_9
    move v4, v7

    .end local v7           #matchedTitle:Z
    .local v4, matchedTitle:Z
    goto :goto_3
.end method

.method private static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .parameter "bm"

    .prologue
    .line 215
    if-nez p0, :cond_0

    .line 216
    const/4 v1, 0x0

    .line 221
    :goto_0
    return-object v1

    .line 219
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 220
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 221
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method static removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "cr"
    .parameter "url"
    .parameter "title"

    .prologue
    const-string v0, "removeFromBookmarks"

    .line 170
    const/4 v6, 0x0

    .line 172
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    if-eqz p3, :cond_1

    const-string v0, "url = ? AND title = ?"

    move-object v3, v0

    :goto_0
    if-eqz p3, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v0, v4

    const/4 v4, 0x1

    aput-object p3, v0, v4

    move-object v4, v0

    :goto_1
    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    .line 180
    .local v8, first:Z
    if-nez v8, :cond_3

    .line 181
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL is not in the database! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v8           #first:Z
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 208
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "Bookmarks"

    const-string v1, "removeFromBookmarks"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 212
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :cond_0
    :goto_2
    return-void

    .line 172
    :cond_1
    :try_start_2
    const-string v0, "url = ? AND title IS NULL"

    move-object v3, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v0, v4

    move-object v4, v0

    goto :goto_1

    .line 185
    .restart local v8       #first:Z
    :cond_3
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 186
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 188
    .local v10, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 190
    .local v9, numVisits:I
    if-nez v9, :cond_5

    .line 191
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v10, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    :goto_3
    if-eqz p0, :cond_4

    .line 204
    const v0, 0x7f08000a

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 210
    :cond_4
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 195
    :cond_5
    :try_start_3
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "bookmark"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 198
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p1, v10, v11, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 199
    :catch_1
    move-exception v7

    .line 200
    .restart local v7       #e:Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v0, "removeFromBookmarks"

    const-string v1, "no database!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 210
    .end local v7           #e:Ljava/lang/IllegalStateException;
    .end local v8           #first:Z
    .end local v9           #numVisits:I
    .end local v10           #uri:Landroid/net/Uri;
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method static urlHasAcceptableScheme(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 225
    if-nez p0, :cond_0

    move v1, v2

    .line 234
    :goto_0
    return v1

    .line 229
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/browser/Bookmarks;->acceptableBookmarkSchemes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 230
    sget-object v1, Lcom/android/browser/Bookmarks;->acceptableBookmarkSchemes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    const/4 v1, 0x1

    goto :goto_0

    .line 229
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 234
    goto :goto_0
.end method
