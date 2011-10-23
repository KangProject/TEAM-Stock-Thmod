.class public Lcom/sonyericsson/providers/cnap/CnapRecords;
.super Ljava/lang/Object;
.source "CnapRecords.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final MIME_DIR_PREFIX:Ljava/lang/String; = "vnd.android.cursor.dir"

.field public static final MIME_ITEM:Ljava/lang/String; = "vnd.semc.cnaprecords"

.field public static final MIME_ITEM_PREFIX:Ljava/lang/String; = "vnd.android.cursor.item"

.field public static final MIME_TYPE_MULTIPLE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.semc.cnaprecords"

.field public static final MIME_TYPE_SINGLE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.semc.cnaprecords"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final UPDATABLE:Ljava/lang/String; = "updatable"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "content://com.sonyericsson.providers.cnap/cnaprecords"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrUpdateRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 7
    .parameter "context"
    .parameter "number"
    .parameter "name"
    .parameter "timeStamp"

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v6, values:Landroid/content/ContentValues;
    const-string v3, "number=?"

    .line 116
    .local v3, where:Ljava/lang/String;
    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    .end local p0
    const/4 p0, 0x0

    aput-object p1, v4, p0

    .line 117
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string v5, "_id"

    aput-object v5, v2, p0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 121
    .local p0, cursor:Landroid/database/Cursor;
    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const-string p1, "name"

    .end local p1
    invoke-virtual {v6, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string p1, "date"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .end local p2
    invoke-virtual {v6, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    const-string p1, "updatable"

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    sget-object p1, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v6, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    const-string p1, "_id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 127
    .local p1, id:Ljava/lang/String;
    sget-object p2, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 130
    .end local p1           #id:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 131
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object p0, p1

    .line 137
    .end local p0           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object p0

    .line 130
    .restart local p0       #cursor:Landroid/database/Cursor;
    .local p1, number:Ljava/lang/String;
    .restart local p2
    :cond_1
    if-eqz p0, :cond_2

    .line 131
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_2
    const-string p0, "name"

    .end local p0           #cursor:Landroid/database/Cursor;
    invoke-virtual {v6, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string p0, "number"

    invoke-virtual {v6, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string p0, "date"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .end local p1           #number:Ljava/lang/String;
    invoke-virtual {v6, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 136
    const-string p0, "updatable"

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    sget-object p0, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p0, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    .line 130
    .end local p2
    .restart local p0       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception p1

    if-eqz p0, :cond_3

    .line 131
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method

.method public static isUpdatable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "updatable"

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "updatable"

    aput-object v4, v2, v8

    const-string v3, "number=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 173
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    const-string v1, "updatable"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    move v1, v7

    .line 177
    :goto_0
    if-eqz v6, :cond_0

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v1, v8

    .line 174
    goto :goto_0

    .line 177
    :cond_2
    if-eqz v6, :cond_3

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v1, v7

    .line 180
    goto :goto_1

    .line 177
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static makeUpdatable(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v4, 0x1

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 193
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "updatable"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    sget-object v2, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "number=?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method
