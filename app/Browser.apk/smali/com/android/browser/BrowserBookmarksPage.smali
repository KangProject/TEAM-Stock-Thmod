.class public Lcom/android/browser/BrowserBookmarksPage;
.super Landroid/app/Activity;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final FULL_SCREEN_PARAMS:Landroid/view/ViewGroup$LayoutParams;


# instance fields
.field private mAddHeader:Lcom/android/browser/AddNewBookmark;

.field private mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

.field private mCanceled:Z

.field private mContextHeader:Lcom/android/browser/BookmarkItem;

.field private mCreateShortcut:Z

.field private mDisableNewWindow:Z

.field private mEmptyView:Landroid/view/View;

.field private mGridPage:Landroid/widget/GridView;

.field private final mHandler:Landroid/os/Handler;

.field private mIconSize:I

.field private mListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMostVisited:Z

.field private mVerticalList:Landroid/widget/ListView;

.field private mViewMode:Lcom/android/browser/BookmarkViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 400
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/browser/BrowserBookmarksPage;->FULL_SCREEN_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    sget-object v0, Lcom/android/browser/BookmarkViewMode;->NONE:Lcom/android/browser/BookmarkViewMode;

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    .line 407
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserBookmarksPage$2;-><init>(Lcom/android/browser/BrowserBookmarksPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mHandler:Landroid/os/Handler;

    .line 445
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$3;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserBookmarksPage$3;-><init>(Lcom/android/browser/BrowserBookmarksPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserBookmarksPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserBookmarksPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->saveCurrentPage()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/browser/BrowserBookmarksPage;I)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/browser/BrowserBookmarksPage;ILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/BrowserBookmarksAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/browser/BrowserBookmarksPage;Lcom/android/browser/BrowserBookmarksAdapter;)Lcom/android/browser/BrowserBookmarksAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/BookmarkViewMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserBookmarksPage;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/BrowserBookmarksPage;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserBookmarksPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/browser/BrowserBookmarksPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/browser/BrowserBookmarksPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/browser/BrowserBookmarksPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->loadUrl(I)V

    return-void
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter

    .prologue
    .line 744
    :try_start_0
    const-string v0, "clipboard"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 745
    if-eqz v0, :cond_0

    .line 746
    invoke-interface {v0, p1}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 748
    :catch_0
    move-exception v0

    .line 749
    const-string v1, "browser"

    const-string v2, "Copy failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createShortcutIntent(I)Landroid/content/Intent;
    .locals 37
    .parameter "position"

    .prologue
    .line 469
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v28

    .line 470
    .local v28, url:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getBookmarkTitle(I)Ljava/lang/String;

    move-result-object v24

    .line 471
    .local v24, title:Ljava/lang/String;
    if-nez v24, :cond_0

    .line 472
    const-string v24, ""

    .line 474
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getTouchIcon(I)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 476
    .local v25, touchIcon:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 477
    .local v11, i:Landroid/content/Intent;
    new-instance v22, Landroid/content/Intent;

    const-string v33, "android.intent.action.VIEW"

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 479
    .local v22, shortcutIntent:Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->hashCode()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v29, v0

    .line 480
    .local v29, urlHash:J
    const/16 v33, 0x20

    shl-long v33, v29, v33

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->hashCode()I

    move-result v35

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v35, v0

    or-long v26, v33, v35

    .line 481
    .local v26, uniqueId:J
    const-string v33, "com.android.browser.application_id"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v33, "android.intent.extra.shortcut.INTENT"

    move-object v0, v11

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 484
    const-string v33, "android.intent.extra.shortcut.NAME"

    move-object v0, v11

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    if-eqz v25, :cond_1

    .line 490
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserBookmarksPage;->mIconSize:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserBookmarksPage;->mIconSize:I

    move/from16 v34, v0

    sget-object v35, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v33 .. v35}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 492
    .local v5, bm:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 493
    .local v6, canvas:Landroid/graphics/Canvas;
    new-instance v23, Landroid/graphics/Rect;

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move-object/from16 v0, v23

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 495
    .local v23, src:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move-object v0, v9

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 498
    .local v9, dest:Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Paint;

    const/16 v33, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 499
    .local v17, paint:Landroid/graphics/Paint;
    const/16 v33, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 500
    move-object v0, v6

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object v3, v9

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 504
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 505
    .local v18, path:Landroid/graphics/Path;
    sget-object v33, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 506
    new-instance v20, Landroid/graphics/RectF;

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v20

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 507
    .local v20, rect:Landroid/graphics/RectF;
    const/high16 v33, 0x3f80

    const/high16 v34, 0x3f80

    move-object/from16 v0, v20

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 508
    const/high16 v33, 0x4100

    const/high16 v34, 0x4100

    sget-object v35, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v33

    move/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 511
    new-instance v33, Landroid/graphics/PorterDuffXfermode;

    sget-object v34, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v33 .. v34}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 512
    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 514
    const-string v33, "android.intent.extra.shortcut.ICON"

    move-object v0, v11

    move-object/from16 v1, v33

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 566
    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v9           #dest:Landroid/graphics/Rect;
    .end local v17           #paint:Landroid/graphics/Paint;
    .end local v18           #path:Landroid/graphics/Path;
    .end local v20           #rect:Landroid/graphics/RectF;
    .end local v23           #src:Landroid/graphics/Rect;
    :goto_0
    const-string v33, "duplicate"

    const/16 v34, 0x0

    move-object v0, v11

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 567
    return-object v11

    .line 516
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 517
    .local v10, favicon:Landroid/graphics/Bitmap;
    if-nez v10, :cond_2

    .line 518
    const-string v33, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v34, 0x7f020024

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v34

    move-object v0, v11

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 523
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f020025

    invoke-static/range {v33 .. v34}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 527
    .local v12, icon:Landroid/graphics/Bitmap;
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v34, 0x1

    move-object v0, v12

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 528
    .local v7, copy:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 532
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Paint;

    const/16 v33, 0x3

    move-object v0, v15

    move/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 534
    .local v15, p:Landroid/graphics/Paint;
    sget-object v33, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object v0, v15

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 535
    const/16 v33, -0x1

    move-object v0, v15

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move v8, v0

    .line 540
    .local v8, density:F
    const/high16 v33, 0x4180

    mul-float v14, v33, v8

    .line 541
    .local v14, iconSize:F
    const/high16 v33, 0x4000

    mul-float v16, v33, v8

    .line 542
    .local v16, padding:F
    const/high16 v33, 0x4000

    mul-float v33, v33, v16

    add-float v21, v14, v33

    .line 544
    .local v21, rectSize:F
    new-instance v13, Landroid/graphics/Rect;

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move-object v0, v13

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 546
    .local v13, iconBounds:Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v33

    const/high16 v34, 0x4000

    div-float v34, v21, v34

    sub-float v31, v33, v34

    .line 550
    .local v31, x:F
    invoke-virtual {v13}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v33

    const/high16 v34, 0x4000

    div-float v34, v21, v34

    sub-float v33, v33, v34

    sub-float v32, v33, v16

    .line 552
    .local v32, y:F
    new-instance v19, Landroid/graphics/RectF;

    add-float v33, v31, v21

    add-float v34, v32, v21

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 555
    .local v19, r:Landroid/graphics/RectF;
    const/high16 v33, 0x4000

    const/high16 v34, 0x4000

    move-object v0, v6

    move-object/from16 v1, v19

    move/from16 v2, v33

    move/from16 v3, v34

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 560
    move-object/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 561
    const/16 v33, 0x0

    move-object v0, v6

    move-object v1, v10

    move-object/from16 v2, v33

    move-object/from16 v3, v19

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 562
    const-string v33, "android.intent.extra.shortcut.ICON"

    move-object v0, v11

    move-object/from16 v1, v33

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private displayRemoveBookmarkDialog(I)V
    .locals 4
    .parameter

    .prologue
    .line 685
    .line 686
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getBookmarkTitle(I)Ljava/lang/String;

    move-result-object v0

    .line 687
    if-nez v0, :cond_0

    .line 688
    const-string v0, ""

    .line 690
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080041

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080046

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserBookmarksPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080011

    new-instance v2, Lcom/android/browser/BrowserBookmarksPage$4;

    invoke-direct {v2, p0, p1}, Lcom/android/browser/BrowserBookmarksPage$4;-><init>(Lcom/android/browser/BrowserBookmarksPage;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 703
    return-void
.end method

.method private editBookmark(I)V
    .locals 3
    .parameter

    .prologue
    .line 649
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 651
    const-string v1, "bookmark"

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getRow(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 652
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 653
    return-void
.end method

.method private getTouchIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "position"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getTouchIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private loadUrl(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 578
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 579
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 580
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->finish()V

    .line 581
    return-void
.end method

.method private openInNewWindow(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 639
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 640
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "new_window"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 641
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 644
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->finish()V

    .line 645
    return-void
.end method

.method private refreshList()V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    .line 711
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    goto :goto_0
.end method

.method private saveCurrentPage()V
    .locals 2

    .prologue
    .line 571
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 573
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 574
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 575
    return-void
.end method

.method private setResultToParent(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 779
    .local v0, parent:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 780
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BrowserBookmarksPage;->setResult(ILandroid/content/Intent;)V

    .line 785
    .end local v0           #parent:Landroid/app/Activity;
    :goto_0
    return-void

    .line 782
    .restart local v0       #parent:Landroid/app/Activity;
    :cond_0
    check-cast v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;

    .end local v0           #parent:Landroid/app/Activity;
    invoke-virtual {v0, p1, p2}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->setResultFromChild(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private switchViewMode(Lcom/android/browser/BookmarkViewMode;)V
    .locals 8
    .parameter "viewMode"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 320
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    if-ne v4, p1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    .line 327
    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 328
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v4, :cond_6

    .line 329
    const-string v4, "pref_most_visited_view_mode"

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    invoke-virtual {v5}, Lcom/android/browser/BookmarkViewMode;->ordinal()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 333
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 335
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_2

    .line 336
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v4, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->switchViewMode(Lcom/android/browser/BookmarkViewMode;)V

    .line 338
    :cond_2
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v5, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v4, v5, :cond_7

    .line 339
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    if-nez v4, :cond_5

    .line 340
    new-instance v4, Landroid/widget/GridView;

    invoke-direct {v4, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    .line 341
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_3

    .line 342
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 345
    :cond_3
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setDirectionality(I)V

    .line 346
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 347
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 348
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 350
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 351
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 352
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    const v5, 0x108001c

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setSelector(I)V

    .line 353
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 354
    .local v0, density:F
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    const/high16 v5, 0x4160

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 355
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    const/high16 v5, 0x4100

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 356
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 357
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    const/high16 v5, 0x100

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 358
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setDrawSelectorOnTop(Z)V

    .line 359
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v4, :cond_4

    .line 360
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 362
    :cond_4
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v4, :cond_5

    .line 363
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, p0}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 366
    .end local v0           #density:F
    :cond_5
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    sget-object v5, Lcom/android/browser/BrowserBookmarksPage;->FULL_SCREEN_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BrowserBookmarksPage;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    .line 368
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 369
    .local v3, parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 370
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 331
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_6
    const-string v4, "pref_bookmark_view_mode"

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    invoke-virtual {v5}, Lcom/android/browser/BookmarkViewMode;->ordinal()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 374
    :cond_7
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    if-nez v4, :cond_b

    .line 375
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 376
    .local v2, listView:Landroid/widget/ListView;
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_8

    .line 377
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 379
    :cond_8
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 380
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 381
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 382
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v4, :cond_9

    .line 383
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 385
    :cond_9
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v4, :cond_a

    .line 386
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 388
    :cond_a
    iput-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    .line 390
    .end local v2           #listView:Landroid/widget/ListView;
    :cond_b
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    sget-object v5, Lcom/android/browser/BrowserBookmarksPage;->FULL_SCREEN_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BrowserBookmarksPage;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    if-eqz v4, :cond_0

    .line 392
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 393
    .restart local v3       #parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 394
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public deleteBookmark(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    .line 764
    :goto_0
    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->deleteRow(I)V

    goto :goto_0
.end method

.method public getBookmarkTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFavicon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "position"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getRow(I)Landroid/os/Bundle;
    .locals 1
    .parameter "position"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getRow(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 658
    packed-switch p1, :pswitch_data_0

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 660
    :pswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 662
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 665
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, title:Ljava/lang/String;
    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 667
    .local v2, url:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 668
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v3, v0}, Lcom/android/browser/BrowserBookmarksAdapter;->updateRow(Landroid/os/Bundle;)V

    goto :goto_0

    .line 673
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    goto :goto_0

    .line 658
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 768
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    .line 770
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 771
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x1

    .line 98
    iget-boolean v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    if-eqz v6, :cond_0

    move v6, v11

    .line 176
    :goto_0
    return v6

    .line 101
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 104
    .local v1, i:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v1, :cond_1

    move v6, v11

    .line 105
    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 174
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 110
    :sswitch_0
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->saveCurrentPage()V

    :goto_1
    move v6, v11

    .line 176
    goto :goto_0

    .line 113
    :sswitch_1
    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->loadUrl(I)V

    goto :goto_1

    .line 116
    :sswitch_2
    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->editBookmark(I)V

    goto :goto_1

    .line 119
    :sswitch_3
    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(I)Landroid/content/Intent;

    move-result-object v4

    .line 120
    .local v4, send:Landroid/content/Intent;
    const-string v6, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserBookmarksPage;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 124
    .end local v4           #send:Landroid/content/Intent;
    :sswitch_4
    iget-boolean v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v6, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget v7, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/Browser;->deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    goto :goto_1

    .line 129
    :cond_2
    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->displayRemoveBookmarkDialog(I)V

    goto :goto_1

    .line 133
    :sswitch_5
    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->openInNewWindow(I)V

    goto :goto_1

    .line 136
    :sswitch_6
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v7, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/android/browser/BrowserBookmarksAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v6

    iget v7, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v8}, Lcom/android/browser/BrowserBookmarksPage;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v9, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v10, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v9, v10}, Lcom/android/browser/BrowserBookmarksAdapter;->getScreenshot(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {p0, v6, v7, v8, v9}, Lcom/android/browser/BrowserActivity;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 142
    :sswitch_7
    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->copy(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 145
    :sswitch_8
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v6

    iget v7, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0, v7}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    const v6, 0x7f08003c

    invoke-static {p0, v6, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 155
    :sswitch_9
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v7, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v6, v7, :cond_3

    .line 156
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v7, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/android/browser/BrowserBookmarksAdapter;->getIsBookmark(I)Z

    move-result v2

    .line 157
    .local v2, isBookmark:Z
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v7, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/android/browser/BrowserBookmarksAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v7, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/android/browser/BrowserBookmarksAdapter;->getUrl(I)Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, url:Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_4

    .line 168
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {p0, v6, v5, v3}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 160
    .end local v2           #isBookmark:Z
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    :cond_3
    iget-object v0, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/android/browser/HistoryItem;

    .line 161
    .local v0, historyItem:Lcom/android/browser/HistoryItem;
    invoke-virtual {v0}, Lcom/android/browser/HistoryItem;->isBookmark()Z

    move-result v2

    .line 162
    .restart local v2       #isBookmark:Z
    invoke-virtual {v0}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v3

    .line 163
    .restart local v3       #name:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #url:Ljava/lang/String;
    goto :goto_2

    .line 170
    .end local v0           #historyItem:Lcom/android/browser/HistoryItem;
    :cond_4
    invoke-static {p0, v3, v5}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c005b -> :sswitch_0
        0x7f0c005f -> :sswitch_1
        0x7f0c0060 -> :sswitch_5
        0x7f0c0061 -> :sswitch_2
        0x7f0c0062 -> :sswitch_3
        0x7f0c0063 -> :sswitch_6
        0x7f0c0064 -> :sswitch_7
        0x7f0c0065 -> :sswitch_4
        0x7f0c0066 -> :sswitch_8
        0x7f0c00a1 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x0

    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mIconSize:I

    .line 257
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 258
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    .line 261
    :cond_0
    const-string v0, "disable_new_window"

    invoke-virtual {v7, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mDisableNewWindow:Z

    .line 263
    const-string v0, "mostVisited"

    invoke-virtual {v7, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    .line 265
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-eqz v0, :cond_1

    .line 266
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->setTitle(I)V

    .line 269
    :cond_1
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->setContentView(I)V

    .line 270
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    .line 271
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    invoke-virtual {p0, v11}, Lcom/android/browser/BrowserBookmarksPage;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 277
    .local v8, p:Landroid/content/SharedPreferences;
    sget-object v9, Lcom/android/browser/BookmarkViewMode;->NONE:Lcom/android/browser/BookmarkViewMode;

    .line 278
    .local v9, preference:Lcom/android/browser/BookmarkViewMode;
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v0, :cond_2

    .line 280
    sget-object v9, Lcom/android/browser/BookmarkViewMode;->LIST:Lcom/android/browser/BookmarkViewMode;

    .line 285
    :goto_0
    invoke-direct {p0, v9}, Lcom/android/browser/BrowserBookmarksPage;->switchViewMode(Lcom/android/browser/BookmarkViewMode;)V

    .line 287
    iget-boolean v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    .line 288
    .local v5, createShortcut:Z
    iget-boolean v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    .line 289
    .local v6, mostVisited:Z
    const-string v0, "url"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, url:Ljava/lang/String;
    const-string v0, "title"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, title:Ljava/lang/String;
    const-string v0, "thumbnail"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 293
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/browser/BrowserBookmarksPage$1;-><init>(Lcom/android/browser/BrowserBookmarksPage;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V

    new-array v1, v11, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserBookmarksPage$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 307
    return-void

    .line 282
    .end local v2           #url:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #thumbnail:Landroid/graphics/Bitmap;
    .end local v5           #createShortcut:Z
    .end local v6           #mostVisited:Z
    :cond_2
    invoke-static {}, Lcom/android/browser/BookmarkViewMode;->values()[Lcom/android/browser/BookmarkViewMode;

    move-result-object v0

    const-string v1, "pref_bookmark_view_mode"

    sget-object v10, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    invoke-virtual {v10}, Lcom/android/browser/BookmarkViewMode;->ordinal()I

    move-result v10

    invoke-interface {v8, v1, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v9, v0, v1

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x0

    .line 182
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0

    .line 185
    .local v3, i:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    .line 186
    .local v4, inflater:Landroid/view/MenuInflater;
    iget-boolean v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v6, :cond_1

    .line 187
    const v6, 0x7f0b0009

    invoke-virtual {v4, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 192
    :goto_0
    iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v6, :cond_3

    .line 193
    const v6, 0x7f0c005e

    invoke-interface {p1, v6, v9}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 194
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    if-nez v6, :cond_2

    .line 195
    new-instance v6, Lcom/android/browser/AddNewBookmark;

    invoke-direct {v6, p0}, Lcom/android/browser/AddNewBookmark;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    .line 200
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "url"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/browser/AddNewBookmark;->setUrl(Ljava/lang/String;)V

    .line 201
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 244
    :goto_2
    return-void

    .line 189
    :cond_1
    const v6, 0x7f0b0001

    invoke-virtual {v4, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {v6}, Lcom/android/browser/AddNewBookmark;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 197
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {v6}, Lcom/android/browser/AddNewBookmark;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 204
    :cond_3
    iget-boolean v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v6, :cond_9

    .line 205
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v7, Lcom/android/browser/BookmarkViewMode;->LIST:Lcom/android/browser/BookmarkViewMode;

    if-ne v6, v7, :cond_4

    iget-object v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v6, Lcom/android/browser/HistoryItem;

    invoke-virtual {v6}, Lcom/android/browser/HistoryItem;->isBookmark()Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/android/browser/BrowserBookmarksAdapter;->getIsBookmark(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 208
    :cond_5
    const v6, 0x7f0c00a1

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 210
    .local v5, item:Landroid/view/MenuItem;
    const v6, 0x7f080037

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 212
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v6, Lcom/android/browser/HistoryItem;

    invoke-virtual {v6}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/browser/SemcBrowserBookmarkPolicy;->isEditable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 226
    .end local v5           #item:Landroid/view/MenuItem;
    :cond_6
    :goto_3
    iget-boolean v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mDisableNewWindow:Z

    if-eqz v6, :cond_7

    .line 227
    const v6, 0x7f0c0060

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 230
    :cond_7
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    if-nez v6, :cond_a

    .line 231
    new-instance v6, Lcom/android/browser/BookmarkItem;

    invoke-direct {v6, p0}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    .line 236
    :cond_8
    :goto_4
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v7, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v6, v7, :cond_b

    .line 237
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7, v8}, Lcom/android/browser/BrowserBookmarksAdapter;->populateBookmarkItem(Lcom/android/browser/BookmarkItem;I)V

    .line 243
    :goto_5
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    goto/16 :goto_2

    .line 217
    :cond_9
    const v6, 0x7f0c005d

    invoke-interface {p1, v6, v9}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 218
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/android/browser/BrowserBookmarksAdapter;->getIsBookmark(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 220
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Lcom/android/browser/BrowserBookmarksAdapter;->getUrl(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/browser/SemcBrowserBookmarkPolicy;->isEditable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 222
    .local v2, editable:Z
    const v6, 0x7f0c0065

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 223
    const v6, 0x7f0c0061

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 232
    .end local v2           #editable:Z
    :cond_a
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v6}, Lcom/android/browser/BookmarkItem;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 233
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v6}, Lcom/android/browser/BookmarkItem;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 240
    :cond_b
    iget-object v1, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v1, Lcom/android/browser/BookmarkItem;

    .line 241
    .local v1, b:Lcom/android/browser/BookmarkItem;
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v1, v6}, Lcom/android/browser/BookmarkItem;->copyTo(Lcom/android/browser/BookmarkItem;)V

    goto :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 585
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 586
    .local v1, result:Z
    iget-boolean v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v2, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 588
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v2, 0x7f0b

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 589
    const/4 v2, 0x1

    .line 591
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :goto_0
    return v2

    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 313
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 619
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 633
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 635
    :goto_0
    return v0

    .line 621
    :pswitch_0
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->saveCurrentPage()V

    .line 635
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 625
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v1, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v0, v1, :cond_0

    .line 626
    sget-object v0, Lcom/android/browser/BookmarkViewMode;->LIST:Lcom/android/browser/BookmarkViewMode;

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->switchViewMode(Lcom/android/browser/BookmarkViewMode;)V

    goto :goto_1

    .line 628
    :cond_0
    sget-object v0, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->switchViewMode(Lcom/android/browser/BookmarkViewMode;)V

    goto :goto_1

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c005b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    .line 596
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 597
    .local v1, result:Z
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v4}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v1

    .line 614
    :goto_0
    return v4

    .line 602
    :cond_1
    const v4, 0x7f0c005c

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 605
    .local v2, switchItem:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v5, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v4, v5, :cond_2

    .line 606
    const v3, 0x7f080044

    .line 607
    .local v3, titleResId:I
    const v0, 0x7f020030

    .line 612
    .local v0, iconResId:I
    :goto_1
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 613
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 614
    const/4 v4, 0x1

    goto :goto_0

    .line 609
    .end local v0           #iconResId:I
    .end local v3           #titleResId:I
    :cond_2
    const v3, 0x7f080043

    .line 610
    .restart local v3       #titleResId:I
    const v0, 0x7f020032

    .restart local v0       #iconResId:I
    goto :goto_1
.end method
