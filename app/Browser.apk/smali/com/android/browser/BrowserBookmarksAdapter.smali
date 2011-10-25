.class Lcom/android/browser/BrowserBookmarksAdapter;
.super Landroid/widget/BaseAdapter;
.source "BrowserBookmarksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;,
        Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;
    }
.end annotation


# instance fields
.field private mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCount:I

.field private mCurrentPage:Ljava/lang/String;

.field private mCurrentThumbnail:Landroid/graphics/Bitmap;

.field private mCurrentTitle:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mExtraOffset:I

.field private mMostVisited:Z

.field private mNeedsOffset:Z

.field private mViewMode:Lcom/android/browser/BookmarkViewMode;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserBookmarksPage;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V
    .locals 7
    .parameter "b"
    .parameter "curPage"
    .parameter "curTitle"
    .parameter "curThumbnail"
    .parameter "createShortcut"
    .parameter "mostVisited"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 69
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 70
    if-nez p5, :cond_0

    if-nez p6, :cond_0

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mNeedsOffset:Z

    .line 71
    iput-boolean p6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mMostVisited:Z

    .line 72
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mNeedsOffset:Z

    if-eqz v0, :cond_1

    move v0, v6

    :goto_1
    iput v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    .line 73
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentPage:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentTitle:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    .line 78
    invoke-virtual {p1}, Lcom/android/browser/BrowserBookmarksPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 79
    sget-object v0, Lcom/android/browser/BookmarkViewMode;->LIST:Lcom/android/browser/BookmarkViewMode;

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    .line 83
    const-string v5, "visits DESC"

    .line 84
    .local v5, orderBy:Ljava/lang/String;
    if-eqz p6, :cond_2

    .line 85
    const-string v3, "visits != 0"

    .line 89
    .local v3, whereClause:Ljava/lang/String;
    :goto_2
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/BrowserBookmarksPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    .line 91
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    new-instance v1, Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;-><init>(Lcom/android/browser/BrowserBookmarksAdapter;)V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 92
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    new-instance v1, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;

    invoke-direct {v1, p0, v4}, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;-><init>(Lcom/android/browser/BrowserBookmarksAdapter;Lcom/android/browser/BrowserBookmarksAdapter$1;)V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 94
    iput-boolean v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    .line 95
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->notifyDataSetChanged()V

    .line 97
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    .line 98
    return-void

    .end local v3           #whereClause:Ljava/lang/String;
    .end local v5           #orderBy:Ljava/lang/String;
    :cond_0
    move v0, v1

    .line 70
    goto :goto_0

    :cond_1
    move v0, v1

    .line 72
    goto :goto_1

    .line 87
    .restart local v5       #orderBy:Ljava/lang/String;
    :cond_2
    const-string v3, "bookmark = 1"

    .restart local v3       #whereClause:Ljava/lang/String;
    goto :goto_2
.end method

.method static synthetic access$102(Lcom/android/browser/BrowserBookmarksAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    return p1
.end method

.method private bind(Lcom/android/browser/BookmarkItem;I)V
    .locals 4
    .parameter "b"
    .parameter "position"

    .prologue
    .line 539
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v3, p2, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 541
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/browser/BookmarkItem;->setName(Ljava/lang/String;)V

    .line 542
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 544
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 545
    .local v0, data:[B
    if-eqz v0, :cond_0

    .line 546
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 551
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->getFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private getBitmap(II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "cursorIndex"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 505
    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p2, v1, :cond_0

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    if-le p2, v1, :cond_1

    :cond_0
    move-object v1, v3

    .line 513
    :goto_0
    return-object v1

    .line 508
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v2, p2, v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 509
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 510
    .local v0, data:[B
    if-nez v0, :cond_2

    move-object v1, v3

    .line 511
    goto :goto_0

    .line 513
    :cond_2
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private getString(II)Ljava/lang/String;
    .locals 2
    .parameter "cursorIndex"
    .parameter "position"

    .prologue
    .line 531
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    if-le p2, v0, :cond_1

    .line 532
    :cond_0
    const-string v0, ""

    .line 535
    :goto_0
    return-object v0

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 535
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static queryBookmarksForUrl(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 10
    .parameter "cr"
    .parameter "originalUrl"
    .parameter "url"
    .parameter "onlyBookmarks"

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x3f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 285
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v5

    .line 317
    :goto_0
    return-object v0

    .line 290
    :cond_1
    if-nez p1, :cond_2

    .line 291
    move-object p1, p2

    .line 296
    :cond_2
    invoke-static {p1}, Lcom/android/browser/BrowserBookmarksAdapter;->removeQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, originalUrlNoQuery:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/browser/BrowserBookmarksAdapter;->removeQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 298
    .local v7, urlNoQuery:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 306
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    aput-object v6, v4, v8

    aput-object v7, v4, v9

    const/4 v0, 0x2

    aput-object p1, v4, v0

    const/4 v0, 0x3

    aput-object p2, v4, v0

    .line 308
    .local v4, selArgs:[Ljava/lang/String;
    const-string v3, "url == ? OR url == ? OR url LIKE ? || \'%\' OR url LIKE ? || \'%\'"

    .line 312
    .local v3, where:Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bookmark"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " == 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 315
    :cond_3
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    .line 317
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method private static removeQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 323
    if-nez p0, :cond_0

    .line 324
    const/4 v2, 0x0

    .line 331
    :goto_0
    return-object v2

    .line 326
    :cond_0
    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 327
    .local v1, query:I
    move-object v0, p0

    .line 328
    .local v0, noQuery:Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 329
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v2, v0

    .line 331
    goto :goto_0
.end method

.method static updateBookmarkFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "cr"
    .parameter "originalUrl"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 257
    new-instance v0, Lcom/android/browser/BrowserBookmarksAdapter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/browser/BrowserBookmarksAdapter$1;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserBookmarksAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 281
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    return v0
.end method

.method public deleteRow(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 175
    iget v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v3, p1, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 179
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, title:Ljava/lang/String;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3, v1, v0}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    .line 340
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    .line 342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFavicon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "position"

    .prologue
    .line 497
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getIsBookmark(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 520
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    if-le p1, v0, :cond_1

    :cond_0
    move v0, v2

    .line 524
    :goto_0
    return v0

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 524
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v3, v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 369
    int-to-long v0, p1

    return-wide v0
.end method

.method public getRow(I)Landroid/os/Bundle;
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 108
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v1, map:Landroid/os/Bundle;
    iget v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p1, v3, :cond_0

    iget v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    if-lt p1, v3, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-object v1

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v4, p1, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 113
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, url:Ljava/lang/String;
    const-string v3, "title"

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 118
    .local v0, data:[B
    if-eqz v0, :cond_2

    .line 119
    const-string v3, "favicon"

    array-length v4, v0

    invoke-static {v0, v6, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    :cond_2
    const-string v3, "id"

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getScreenshot(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "position"

    .prologue
    .line 490
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 476
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTouchIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "position"

    .prologue
    .line 501
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 483
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7f020007

    .line 399
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    if-nez v7, :cond_0

    .line 400
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "this should only be called when the cursor is valid"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 403
    :cond_0
    if-ltz p1, :cond_1

    iget v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    if-le p1, v7, :cond_2

    .line 404
    :cond_1
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "BrowserBookmarksAdapter tried to get a view out of range"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 407
    :cond_2
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v8, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v7, v8, :cond_8

    .line 408
    if-eqz p2, :cond_3

    instance-of v7, p2, Lcom/android/browser/AddNewBookmark;

    if-nez v7, :cond_3

    instance-of v7, p2, Lcom/android/browser/BookmarkItem;

    if-eqz v7, :cond_4

    .line 410
    :cond_3
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 411
    .local v2, factory:Landroid/view/LayoutInflater;
    const v7, 0x7f030002

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 414
    .end local v2           #factory:Landroid/view/LayoutInflater;
    :cond_4
    const v7, 0x7f0c0005

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 415
    .local v3, holder:Landroid/view/View;
    const v7, 0x7f0c0004

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 416
    .local v4, thumb:Landroid/widget/ImageView;
    const v7, 0x7f0c0006

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 418
    .local v6, tv:Landroid/widget/TextView;
    if-nez p1, :cond_6

    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mNeedsOffset:Z

    if-eqz v7, :cond_6

    .line 420
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_5

    .line 424
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    move-object v7, p2

    .line 469
    .end local v3           #holder:Landroid/view/View;
    .end local v4           #thumb:Landroid/widget/ImageView;
    .end local v6           #tv:Landroid/widget/TextView;
    :goto_1
    return-object v7

    .line 426
    .restart local v3       #holder:Landroid/view/View;
    .restart local v4       #thumb:Landroid/widget/ImageView;
    .restart local v6       #tv:Landroid/widget/TextView;
    :cond_5
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 431
    :cond_6
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v8, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v8, p1, v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 433
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x5

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getScreenshot(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 436
    .local v5, thumbnail:Landroid/graphics/Bitmap;
    if-nez v5, :cond_7

    .line 437
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    move-object v7, p2

    .line 442
    goto :goto_1

    .line 439
    :cond_7
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 445
    .end local v3           #holder:Landroid/view/View;
    .end local v4           #thumb:Landroid/widget/ImageView;
    .end local v5           #thumbnail:Landroid/graphics/Bitmap;
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_8
    if-nez p1, :cond_a

    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mNeedsOffset:Z

    if-eqz v7, :cond_a

    .line 447
    instance-of v7, p2, Lcom/android/browser/AddNewBookmark;

    if-eqz v7, :cond_9

    .line 448
    move-object v0, p2

    check-cast v0, Lcom/android/browser/AddNewBookmark;

    move-object v1, v0

    .line 452
    .local v1, b:Lcom/android/browser/AddNewBookmark;
    :goto_3
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentPage:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/android/browser/AddNewBookmark;->setUrl(Ljava/lang/String;)V

    move-object v7, v1

    .line 453
    goto :goto_1

    .line 450
    .end local v1           #b:Lcom/android/browser/AddNewBookmark;
    :cond_9
    new-instance v1, Lcom/android/browser/AddNewBookmark;

    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {v1, v7}, Lcom/android/browser/AddNewBookmark;-><init>(Landroid/content/Context;)V

    .restart local v1       #b:Lcom/android/browser/AddNewBookmark;
    goto :goto_3

    .line 455
    .end local v1           #b:Lcom/android/browser/AddNewBookmark;
    :cond_a
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mMostVisited:Z

    if-eqz v7, :cond_e

    .line 456
    if-eqz p2, :cond_b

    instance-of v7, p2, Lcom/android/browser/HistoryItem;

    if-nez v7, :cond_c

    .line 457
    :cond_b
    new-instance p2, Lcom/android/browser/HistoryItem;

    .end local p2
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {p2, v7}, Lcom/android/browser/HistoryItem;-><init>(Landroid/content/Context;)V

    .line 464
    .restart local p2
    :cond_c
    :goto_4
    move-object v0, p2

    check-cast v0, Lcom/android/browser/BookmarkItem;

    move-object v7, v0

    invoke-direct {p0, v7, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->bind(Lcom/android/browser/BookmarkItem;I)V

    .line 465
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mMostVisited:Z

    if-eqz v7, :cond_d

    .line 466
    move-object v0, p2

    check-cast v0, Lcom/android/browser/HistoryItem;

    move-object v7, v0

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getIsBookmark(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/browser/HistoryItem;->setIsBookmark(Z)V

    :cond_d
    move-object v7, p2

    .line 469
    goto :goto_1

    .line 460
    :cond_e
    if-eqz p2, :cond_f

    instance-of v7, p2, Lcom/android/browser/BookmarkItem;

    if-nez v7, :cond_c

    .line 461
    :cond_f
    new-instance p2, Lcom/android/browser/BookmarkItem;

    .end local p2
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {p2, v7}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    .restart local p2
    goto :goto_4
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method populateBookmarkItem(Lcom/android/browser/BookmarkItem;I)V
    .locals 5
    .parameter "b"
    .parameter "position"

    .prologue
    .line 377
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v4, p2, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 378
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 380
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/browser/BookmarkItem;->setName(Ljava/lang/String;)V

    .line 381
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 382
    .local v1, data:[B
    const/4 v0, 0x0

    .line 383
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 384
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->getFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 389
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 390
    return-void

    .line 387
    :cond_0
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public refreshList()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 243
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    .line 244
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->notifyDataSetChanged()V

    .line 245
    return-void
.end method

.method switchViewMode(Lcom/android/browser/BookmarkViewMode;)V
    .locals 0
    .parameter "viewMode"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    .line 374
    return-void
.end method

.method public updateRow(Landroid/os/Bundle;)V
    .locals 11
    .parameter "map"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "url"

    const-string v9, "title"

    .line 134
    const-string v5, "id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 135
    .local v0, id:I
    const/4 v1, -0x1

    .line 136
    .local v1, position:I
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_0

    .line 137
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v0, :cond_2

    .line 138
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 142
    :cond_0
    if-gez v1, :cond_3

    .line 167
    :cond_1
    :goto_1
    return-void

    .line 136
    :cond_2
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 146
    :cond_3
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 147
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 148
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "title"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 151
    const-string v5, "title"

    invoke-virtual {v4, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_4
    const-string v5, "url"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, url:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 156
    const-string v5, "url"

    invoke-virtual {v4, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_5
    const-string v5, "invalidateThumbnail"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v8, :cond_6

    .line 160
    const-string v5, "thumbnail"

    new-array v6, v7, [B

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 162
    :cond_6
    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    goto :goto_1
.end method
