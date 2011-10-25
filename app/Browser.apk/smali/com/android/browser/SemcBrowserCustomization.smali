.class public Lcom/android/browser/SemcBrowserCustomization;
.super Ljava/lang/Object;
.source "SemcBrowserCustomization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;
    }
.end annotation


# instance fields
.field private mBookmarkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field mBrowserActivity:Lcom/android/browser/BrowserActivity;

.field private final mContext:Landroid/content/Context;

.field private mCurrentVersion:I

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mHomepage:Ljava/lang/String;

.field private mHomepageRuntime:Z

.field private mInputStream:Ljava/io/InputStream;

.field final mParserListener:Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;

.field private final mResultListener:Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;

.field private mSavedInit:Z

.field private mSavedVersion:I

.field private mSearchEngineSettingDisabled:Z

.field private final mSettings:Lcom/android/browser/BrowserSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/BrowserSettings;Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;)V
    .locals 2
    .parameter "ctx"
    .parameter "settings"
    .parameter "l"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mSavedVersion:I

    .line 42
    iput-boolean v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mSavedInit:Z

    .line 43
    iput v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mCurrentVersion:I

    .line 45
    iput-boolean v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mSearchEngineSettingDisabled:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mHomepageRuntime:Z

    .line 50
    iput-object v1, p0, Lcom/android/browser/SemcBrowserCustomization;->mInputStream:Ljava/io/InputStream;

    .line 90
    new-instance v0, Lcom/android/browser/SemcBrowserCustomization$1;

    invoke-direct {v0, p0}, Lcom/android/browser/SemcBrowserCustomization$1;-><init>(Lcom/android/browser/SemcBrowserCustomization;)V

    iput-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mParserListener:Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;

    .line 82
    iput-object v1, p0, Lcom/android/browser/SemcBrowserCustomization;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    .line 83
    iput-object p1, p0, Lcom/android/browser/SemcBrowserCustomization;->mContext:Landroid/content/Context;

    .line 84
    iput-object p3, p0, Lcom/android/browser/SemcBrowserCustomization;->mResultListener:Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;

    .line 85
    iput-object p2, p0, Lcom/android/browser/SemcBrowserCustomization;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 86
    iput-object v1, p0, Lcom/android/browser/SemcBrowserCustomization;->mBookmarkList:Ljava/util/List;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/BrowserSettings;Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;)V
    .locals 2
    .parameter "activity"
    .parameter "settings"
    .parameter "l"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mSavedVersion:I

    .line 42
    iput-boolean v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mSavedInit:Z

    .line 43
    iput v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mCurrentVersion:I

    .line 45
    iput-boolean v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mSearchEngineSettingDisabled:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mHomepageRuntime:Z

    .line 50
    iput-object v1, p0, Lcom/android/browser/SemcBrowserCustomization;->mInputStream:Ljava/io/InputStream;

    .line 90
    new-instance v0, Lcom/android/browser/SemcBrowserCustomization$1;

    invoke-direct {v0, p0}, Lcom/android/browser/SemcBrowserCustomization$1;-><init>(Lcom/android/browser/SemcBrowserCustomization;)V

    iput-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mParserListener:Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;

    .line 74
    iput-object p1, p0, Lcom/android/browser/SemcBrowserCustomization;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    .line 75
    iput-object p1, p0, Lcom/android/browser/SemcBrowserCustomization;->mContext:Landroid/content/Context;

    .line 76
    iput-object p3, p0, Lcom/android/browser/SemcBrowserCustomization;->mResultListener:Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;

    .line 77
    iput-object p2, p0, Lcom/android/browser/SemcBrowserCustomization;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 78
    iput-object v1, p0, Lcom/android/browser/SemcBrowserCustomization;->mBookmarkList:Ljava/util/List;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/SemcBrowserCustomization;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mSavedVersion:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/browser/SemcBrowserCustomization;Landroid/content/Context;Lcom/android/browser/BrowserSettings;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/SemcBrowserCustomization;->setBookmarks(Landroid/content/Context;Lcom/android/browser/BrowserSettings;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/browser/SemcBrowserCustomization;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/browser/SemcBrowserCustomization;->mCurrentVersion:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/browser/SemcBrowserCustomization;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mSavedInit:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/browser/SemcBrowserCustomization;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/browser/SemcBrowserCustomization;->mSavedInit:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/browser/SemcBrowserCustomization;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/browser/SemcBrowserCustomization;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/browser/SemcBrowserCustomization;->doFinish()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/browser/SemcBrowserCustomization;)Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mResultListener:Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/SemcBrowserCustomization;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mBookmarkList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/browser/SemcBrowserCustomization;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/SemcBrowserCustomization;->mBookmarkList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/browser/SemcBrowserCustomization;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mHomepage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/browser/SemcBrowserCustomization;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/SemcBrowserCustomization;->mHomepage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/browser/SemcBrowserCustomization;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/browser/SemcBrowserCustomization;->mHomepageRuntime:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/browser/SemcBrowserCustomization;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mSearchEngineSettingDisabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/browser/SemcBrowserCustomization;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/browser/SemcBrowserCustomization;->mSearchEngineSettingDisabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/browser/SemcBrowserCustomization;)Lcom/android/browser/BrowserSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/browser/SemcBrowserCustomization;Lcom/android/browser/BrowserSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/browser/SemcBrowserCustomization;->setHomepage(Lcom/android/browser/BrowserSettings;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/browser/SemcBrowserCustomization;Lcom/android/browser/BrowserSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/browser/SemcBrowserCustomization;->setSearchEngineSettingDisabled(Lcom/android/browser/BrowserSettings;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/browser/SemcBrowserCustomization;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private doFinish()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    new-instance v1, Lcom/android/browser/SemcBrowserCustomization$2;

    invoke-direct {v1, p0}, Lcom/android/browser/SemcBrowserCustomization$2;-><init>(Lcom/android/browser/SemcBrowserCustomization;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 339
    :cond_1
    :goto_1
    return-void

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mResultListener:Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mResultListener:Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;

    invoke-interface {v0}, Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;->onFinish()V

    goto :goto_1

    .line 321
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private saveBookmarkstoDb(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "ctx"
    .parameter "cr"
    .parameter "title"
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    .line 281
    invoke-virtual {p0, p4}, Lcom/android/browser/SemcBrowserCustomization;->cleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 285
    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/browser/Bookmarks;->addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V

    .line 286
    return-void
.end method

.method private setBookmarks(Landroid/content/Context;Lcom/android/browser/BrowserSettings;Ljava/util/List;)V
    .locals 9
    .parameter "ctx"
    .parameter "s"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/browser/BrowserSettings;",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, bookmarks:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;>;"
    const-string v8, "customized-version"

    .line 245
    iget-boolean v6, p0, Lcom/android/browser/SemcBrowserCustomization;->mSavedInit:Z

    if-nez v6, :cond_2

    .line 246
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 249
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    .line 250
    .local v2, item:Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;
    invoke-virtual {v2}, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, title:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, url:Ljava/lang/String;
    invoke-direct {p0, p1, v0, v4, v5}, Lcom/android/browser/SemcBrowserCustomization;->saveBookmarkstoDb(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    .end local v2           #item:Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/browser/SemcBrowserCustomization;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "customized-version"

    iget v7, p0, Lcom/android/browser/SemcBrowserCustomization;->mCurrentVersion:I

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 255
    iget-object v6, p0, Lcom/android/browser/SemcBrowserCustomization;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 275
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #i:I
    .end local v3           #n:I
    :cond_1
    :goto_1
    return-void

    .line 258
    :cond_2
    iget v6, p0, Lcom/android/browser/SemcBrowserCustomization;->mSavedVersion:I

    iget v7, p0, Lcom/android/browser/SemcBrowserCustomization;->mCurrentVersion:I

    if-ge v6, v7, :cond_1

    .line 259
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 261
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .restart local v1       #i:I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    .restart local v3       #n:I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 262
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    .line 263
    .restart local v2       #item:Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;
    invoke-virtual {v2}, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 264
    .restart local v4       #title:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 266
    .restart local v5       #url:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->getRuntime()Z

    move-result v6

    if-nez v6, :cond_3

    .line 267
    invoke-direct {p0, p1, v0, v4, v5}, Lcom/android/browser/SemcBrowserCustomization;->saveBookmarkstoDb(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 270
    .end local v2           #item:Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/browser/SemcBrowserCustomization;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "customized-version"

    iget v7, p0, Lcom/android/browser/SemcBrowserCustomization;->mCurrentVersion:I

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 271
    iget-object v6, p0, Lcom/android/browser/SemcBrowserCustomization;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method private setHomepage(Lcom/android/browser/BrowserSettings;Ljava/lang/String;)V
    .locals 3
    .parameter "s"
    .parameter "homepage"

    .prologue
    const-string v2, "customized-version"

    .line 214
    iget-boolean v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mSavedInit:Z

    if-nez v0, :cond_1

    .line 215
    if-eqz p2, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "customized-version"

    iget v1, p0, Lcom/android/browser/SemcBrowserCustomization;->mCurrentVersion:I

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 221
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mSavedVersion:I

    iget v1, p0, Lcom/android/browser/SemcBrowserCustomization;->mCurrentVersion:I

    if-ge v0, v1, :cond_0

    .line 226
    iget-boolean v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mHomepageRuntime:Z

    if-nez v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "customized-version"

    iget v1, p0, Lcom/android/browser/SemcBrowserCustomization;->mCurrentVersion:I

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 233
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setSearchEngineSettingDisabled(Lcom/android/browser/BrowserSettings;Z)V
    .locals 3
    .parameter "s"
    .parameter "disabled"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mSavedInit:Z

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/android/browser/BrowserSettings;->setSearchEngineSettingDisabled(Landroid/content/Context;Z)V

    .line 205
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "customized-version"

    iget v2, p0, Lcom/android/browser/SemcBrowserCustomization;->mCurrentVersion:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 206
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 300
    if-eqz p1, :cond_1

    .line 301
    const-string v1, "http:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    :cond_0
    :try_start_0
    new-instance v0, Landroid/net/WebAddress;

    invoke-direct {v0, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, address:Landroid/net/WebAddress;
    invoke-virtual {v0}, Landroid/net/WebAddress;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 310
    .end local v0           #address:Landroid/net/WebAddress;
    :cond_1
    :goto_0
    return-object p1

    .line 305
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public doCustomization()V
    .locals 4

    .prologue
    .line 157
    iget-object v3, p0, Lcom/android/browser/SemcBrowserCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "content://com.sonyericsson.provider.customization/settings/com.android.browser"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 161
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/SemcBrowserCustomization;->mInputStream:Ljava/io/InputStream;

    .line 162
    iget-object v3, p0, Lcom/android/browser/SemcBrowserCustomization;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p0, v3}, Lcom/android/browser/SemcBrowserCustomization;->doCustomization(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 165
    .local v1, ex:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/android/browser/SemcBrowserCustomization;->doFinish()V

    goto :goto_0
.end method

.method public doCustomization(Ljava/io/InputStream;)V
    .locals 6
    .parameter "is"

    .prologue
    const/4 v5, 0x0

    .line 176
    iget-object v4, p0, Lcom/android/browser/SemcBrowserCustomization;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 178
    .local v3, sPref:Landroid/content/SharedPreferences;
    const-string v4, "customized-version"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/browser/SemcBrowserCustomization;->mSavedVersion:I

    .line 179
    const-string v4, "initialized"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/SemcBrowserCustomization;->mSavedInit:Z

    .line 182
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/SemcBrowserCustomization;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 186
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 187
    .local v1, p:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v1, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 188
    new-instance v2, Lcom/android/browser/SemcBrowserCustomizationParser;

    iget-object v4, p0, Lcom/android/browser/SemcBrowserCustomization;->mParserListener:Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;

    invoke-direct {v2, v1, v4}, Lcom/android/browser/SemcBrowserCustomizationParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;)V

    .line 189
    .local v2, parser:Lcom/android/browser/SemcBrowserCustomizationParser;
    invoke-virtual {v2}, Lcom/android/browser/SemcBrowserCustomizationParser;->runCustomization()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v1           #p:Lorg/xmlpull/v1/XmlPullParser;
    .end local v2           #parser:Lcom/android/browser/SemcBrowserCustomizationParser;
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 192
    .local v0, ex:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/android/browser/SemcBrowserCustomization;->doFinish()V

    goto :goto_0
.end method
