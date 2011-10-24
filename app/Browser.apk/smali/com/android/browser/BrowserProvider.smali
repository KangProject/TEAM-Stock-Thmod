.class public Lcom/android/browser/BrowserProvider;
.super Landroid/content/ContentProvider;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserProvider$ResultsCursor;,
        Lcom/android/browser/BrowserProvider$MySuggestionCursor;,
        Lcom/android/browser/BrowserProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final MAX_SUGGESTION_LONG_ENTRIES_STRING:Ljava/lang/String;

.field private static final STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

.field private static final SUGGEST_PROJECTION:[Ljava/lang/String;

.field private static final TABLE_NAMES:[Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private SUGGEST_ARGS:[Ljava/lang/String;

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mResultsCursor:Lcom/android/browser/BrowserProvider$ResultsCursor;

.field private mSettings:Lcom/android/browser/BrowserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "browser"

    .line 73
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "bookmarks"

    aput-object v1, v0, v3

    const-string v1, "searches"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "url"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v6

    const-string v1, "bookmark"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "user_entered"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/BrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    .line 96
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_intent_action"

    aput-object v1, v0, v4

    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v6

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_text_2_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/BrowserProvider;->COLUMNS:[Ljava/lang/String;

    .line 110
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/BrowserProvider;->MAX_SUGGESTION_LONG_ENTRIES_STRING:Ljava/lang/String;

    .line 126
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 127
    sget-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    sget-object v1, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v5, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    sget-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    sget-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    sget-object v1, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v5, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    sget-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    sget-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    const-string v1, "search_suggest_query"

    const/16 v2, 0x14

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    sget-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "search_suggest_query"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    const-string v0, "^(http://)(.*?)(/$)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/BrowserProvider;->STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    .line 172
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/browser/BrowserProvider;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/android/browser/BrowserProvider;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .parameter "cr"

    .prologue
    .line 177
    const-string v7, "android-google"

    .line 178
    .local v7, ret:Ljava/lang/String;
    const/4 v6, 0x0

    .line 180
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'client_id\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 182
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 188
    :cond_0
    if-eqz v6, :cond_1

    .line 189
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_1
    :goto_0
    return-object v7

    .line 185
    :catch_0
    move-exception v0

    .line 188
    if-eqz v6, :cond_1

    .line 189
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 189
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static stripUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 1080
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 1085
    :goto_0
    return-object v1

    .line 1081
    :cond_0
    sget-object v1, Lcom/android/browser/BrowserProvider;->STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1082
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1083
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 1085
    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 960
    .local v12, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 961
    .local v15, match:I
    const/4 v5, -0x1

    if-eq v15, v5, :cond_0

    const/16 v5, 0x14

    if-ne v15, v5, :cond_1

    .line 962
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unknown URL"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 966
    :cond_1
    const/16 v5, 0xa

    if-ne v15, v5, :cond_7

    const/4 v5, 0x1

    move v14, v5

    .line 967
    .local v14, isBookmarkTable:Z
    :goto_0
    const/4 v13, 0x0

    .line 969
    .local v13, id:Ljava/lang/String;
    if-nez v14, :cond_2

    const/16 v5, 0xb

    if-ne v15, v5, :cond_4

    .line 970
    :cond_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    .local v16, sb:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 972
    const-string v5, "( "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    const-string v5, " ) AND "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #id:Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 977
    .restart local v13       #id:Ljava/lang/String;
    const-string v5, "_id = "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 982
    .end local v16           #sb:Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 985
    .local v4, cr:Landroid/content/ContentResolver;
    if-eqz v14, :cond_6

    .line 986
    sget-object v5, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "bookmark"

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 989
    .local v11, cursor:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 990
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_5

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 995
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 998
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_6
    sget-object v5, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v6, v15, 0xa

    aget-object v5, v5, v6

    move-object v0, v12

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 999
    .local v10, count:I
    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1000
    return v10

    .line 966
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v10           #count:I
    .end local v13           #id:Ljava/lang/String;
    .end local v14           #isBookmarkTable:Z
    :cond_7
    const/4 v5, 0x0

    move v14, v5

    goto/16 :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 877
    sget-object v1, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 878
    .local v0, match:I
    sparse-switch v0, :sswitch_data_0

    .line 895
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 880
    :sswitch_0
    const-string v1, "vnd.android.cursor.dir/bookmark"

    .line 892
    :goto_0
    return-object v1

    .line 883
    :sswitch_1
    const-string v1, "vnd.android.cursor.item/bookmark"

    goto :goto_0

    .line 886
    :sswitch_2
    const-string v1, "vnd.android.cursor.dir/searches"

    goto :goto_0

    .line 889
    :sswitch_3
    const-string v1, "vnd.android.cursor.item/searches"

    goto :goto_0

    .line 892
    :sswitch_4
    const-string v1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_0

    .line 878
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_3
        0x14 -> :sswitch_4
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 901
    const/4 v1, 0x0

    .line 902
    .local v1, isBookmarkTable:Z
    iget-object v6, p0, Lcom/android/browser/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 904
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 905
    .local v2, match:I
    const/4 v5, 0x0

    .line 906
    .local v5, uri:Landroid/net/Uri;
    packed-switch v2, :pswitch_data_0

    .line 937
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 910
    :pswitch_0
    const-string v6, "url"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 911
    const/4 v6, 0x0

    .line 953
    :goto_0
    return-object v6

    .line 915
    :cond_0
    sget-object v6, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string v7, "url"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 917
    .local v3, rowID:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_1

    .line 918
    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 921
    :cond_1
    const/4 v1, 0x1

    .line 940
    :cond_2
    :goto_1
    if-nez v5, :cond_3

    .line 941
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 927
    .end local v3           #rowID:J
    :pswitch_1
    sget-object v6, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "url"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 929
    .restart local v3       #rowID:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_2

    .line 930
    sget-object v6, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto :goto_1

    .line 943
    :cond_3
    invoke-virtual {p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 948
    if-eqz v1, :cond_4

    const-string v6, "bookmark"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "bookmark"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_4

    .line 951
    iget-object v6, p0, Lcom/android/browser/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    :cond_4
    move-object v6, v5

    .line 953
    goto :goto_0

    .line 906
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 356
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/BrowserProvider$DatabaseHelper;

    invoke-direct {v1, v0}, Lcom/android/browser/BrowserProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 357
    new-instance v1, Landroid/app/backup/BackupManager;

    invoke-direct {v1, v0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 372
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserProvider;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 373
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 26
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 788
    sget-object v6, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    .line 789
    .local v21, match:I
    const/4 v6, -0x1

    move/from16 v0, v21

    move v1, v6

    if-ne v0, v1, :cond_0

    .line 790
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 792
    :cond_0
    const/16 v6, 0x14

    move/from16 v0, v21

    move v1, v6

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->mResultsCursor:Lcom/android/browser/BrowserProvider$ResultsCursor;

    move-object v6, v0

    if-eqz v6, :cond_1

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->mResultsCursor:Lcom/android/browser/BrowserProvider$ResultsCursor;

    move-object/from16 v22, v0

    .line 794
    .local v22, results:Landroid/database/Cursor;
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserProvider;->mResultsCursor:Lcom/android/browser/BrowserProvider$ResultsCursor;

    move-object/from16 v6, v22

    .line 872
    .end local v22           #results:Landroid/database/Cursor;
    .end local p2
    :goto_0
    return-object v6

    .line 797
    .restart local p2
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 799
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v6, 0x14

    move/from16 v0, v21

    move v1, v6

    if-eq v0, v1, :cond_2

    const/16 v6, 0x15

    move/from16 v0, v21

    move v1, v6

    if-ne v0, v1, :cond_a

    .line 802
    :cond_2
    const/4 v6, 0x0

    aget-object v6, p4, v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    aget-object v6, p4, v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 803
    :cond_3
    const/4 v8, 0x0

    .line 804
    .local v8, suggestSelection:Ljava/lang/String;
    const/4 v9, 0x0

    .line 824
    .local v9, myArgs:[Ljava/lang/String;
    :goto_1
    sget-object v6, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    sget-object v7, Lcom/android/browser/BrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "visits DESC, date DESC"

    sget-object v13, Lcom/android/browser/BrowserProvider;->MAX_SUGGESTION_LONG_ENTRIES_STRING:Ljava/lang/String;

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 828
    .local v19, c:Landroid/database/Cursor;
    const/16 v6, 0x15

    move/from16 v0, v21

    move v1, v6

    if-eq v0, v1, :cond_4

    sget-object v6, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 830
    :cond_4
    new-instance v6, Lcom/android/browser/BrowserProvider$MySuggestionCursor;

    const/4 v7, 0x0

    const-string v8, ""

    .end local v8           #suggestSelection:Ljava/lang/String;
    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_0

    .line 806
    .end local v9           #myArgs:[Ljava/lang/String;
    .end local v19           #c:Landroid/database/Cursor;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 807
    .local v20, like:Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, p4, v6

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x0

    aget-object v6, p4, v6

    const-string v7, "file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 809
    :cond_6
    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/String;

    .line 810
    .restart local v9       #myArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    aput-object v20, v9, v6

    .line 811
    move-object/from16 v8, p3

    .restart local v8       #suggestSelection:Ljava/lang/String;
    goto :goto_1

    .line 813
    .end local v8           #suggestSelection:Ljava/lang/String;
    .end local v9           #myArgs:[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://www."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://www."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x4

    aput-object v20, v6, v7

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    move-object v9, v0

    .line 820
    .restart local v9       #myArgs:[Ljava/lang/String;
    const-string v8, "(url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ? OR title LIKE ?) AND (bookmark = 1 OR user_entered = 1)"

    .restart local v8       #suggestSelection:Ljava/lang/String;
    goto/16 :goto_1

    .line 833
    .end local v20           #like:Ljava/lang/String;
    .restart local v19       #c:Landroid/database/Cursor;
    :cond_8
    if-eqz v9, :cond_9

    array-length v6, v9

    const/4 v7, 0x1

    if-le v6, v7, :cond_9

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_9

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v24

    .line 836
    .local v24, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-eqz v24, :cond_9

    invoke-interface/range {v24 .. v24}, Lcom/android/browser/search/SearchEngine;->supportsSuggestions()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    move-object/from16 v0, v24

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lcom/android/browser/search/SearchEngine;->getSuggestions(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 838
    .local v23, sc:Landroid/database/Cursor;
    new-instance v6, Lcom/android/browser/BrowserProvider$MySuggestionCursor;

    const/4 v7, 0x0

    aget-object v7, p4, v7

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v23

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 841
    .end local v23           #sc:Landroid/database/Cursor;
    .end local v24           #searchEngine:Lcom/android/browser/search/SearchEngine;
    :cond_9
    new-instance v6, Lcom/android/browser/BrowserProvider$MySuggestionCursor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, p4, v8

    .end local v8           #suggestSelection:Ljava/lang/String;
    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 845
    .end local v9           #myArgs:[Ljava/lang/String;
    .end local v19           #c:Landroid/database/Cursor;
    :cond_a
    const/4 v12, 0x0

    .line 846
    .local v12, projection:[Ljava/lang/String;
    if-eqz p2, :cond_b

    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    if-lez v6, :cond_b

    .line 847
    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    new-array v12, v6, [Ljava/lang/String;

    .line 848
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move v8, v0

    move-object/from16 v0, p2

    move v1, v6

    move-object v2, v12

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 849
    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    const-string v7, "_id AS _id"

    aput-object v7, v12, v6

    .line 852
    :cond_b
    new-instance v25, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    move-object/from16 v0, v25

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 853
    .local v25, whereClause:Ljava/lang/StringBuilder;
    const/16 v6, 0xa

    move/from16 v0, v21

    move v1, v6

    if-eq v0, v1, :cond_c

    const/16 v6, 0xb

    move/from16 v0, v21

    move v1, v6

    if-ne v0, v1, :cond_d

    .line 854
    :cond_c
    const-string v6, "(_id = "

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    :cond_d
    if-eqz p3, :cond_f

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_f

    .line 860
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_e

    .line 861
    const-string v6, " AND "

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    :cond_e
    const/16 v6, 0x28

    move-object/from16 v0, v25

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 865
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    const/16 v6, 0x29

    move-object/from16 v0, v25

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 868
    :cond_f
    sget-object v6, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v7, v21, 0xa

    aget-object v11, v6, v7

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v10, v5

    move-object/from16 v14, p4

    move-object/from16 v17, p5

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 871
    .restart local v19       #c:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v6, v19

    .line 872
    goto/16 :goto_0
.end method

.method setQueryResults(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 777
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserProvider;->mResultsCursor:Lcom/android/browser/BrowserProvider$ResultsCursor;

    .line 782
    :goto_0
    return-void

    .line 780
    :cond_0
    new-instance v0, Lcom/android/browser/BrowserProvider$ResultsCursor;

    invoke-direct {v0, p1}, Lcom/android/browser/BrowserProvider$ResultsCursor;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/browser/BrowserProvider;->mResultsCursor:Lcom/android/browser/BrowserProvider$ResultsCursor;

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1006
    const-string v6, "url"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "url"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1007
    const/4 v6, 0x0

    .line 1065
    :goto_0
    return v6

    .line 1009
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 1011
    .local v13, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 1012
    .local v15, match:I
    const/4 v6, -0x1

    if-eq v15, v6, :cond_1

    const/16 v6, 0x14

    if-ne v15, v6, :cond_2

    .line 1013
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1016
    :cond_2
    const/16 v6, 0xa

    if-eq v15, v6, :cond_3

    const/16 v6, 0xb

    if-ne v15, v6, :cond_5

    .line 1017
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1018
    .local v17, sb:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 1019
    const-string v6, "( "

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    const-string v6, " ) AND "

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1024
    .local v14, id:Ljava/lang/String;
    const-string v6, "_id = "

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1029
    .end local v14           #id:Ljava/lang/String;
    .end local v17           #sb:Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1034
    .local v5, cr:Landroid/content/ContentResolver;
    const/16 v6, 0xa

    if-eq v15, v6, :cond_6

    if-nez v15, :cond_8

    .line 1035
    :cond_6
    const/4 v11, 0x0

    .line 1039
    .local v11, changingBookmarks:Z
    const-string v6, "bookmark"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1040
    const/4 v11, 0x1

    .line 1058
    :cond_7
    :goto_1
    if-eqz v11, :cond_8

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1063
    .end local v11           #changingBookmarks:Z
    :cond_8
    sget-object v6, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v7, v15, 0xa

    aget-object v6, v6, v7

    move-object v0, v13

    move-object v1, v6

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 1064
    .local v16, ret:I
    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move/from16 v6, v16

    .line 1065
    goto/16 :goto_0

    .line 1041
    .end local v16           #ret:I
    .restart local v11       #changingBookmarks:Z
    :cond_9
    const-string v6, "title"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "url"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_a
    const-string v6, "_id"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1047
    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "bookmark"

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_id"

    move-object/from16 v0, p2

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1051
    .local v12, cursor:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1052
    const/4 v6, 0x0

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    move v11, v6

    .line 1054
    :cond_b
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1052
    :cond_c
    const/4 v6, 0x0

    move v11, v6

    goto :goto_2
.end method
