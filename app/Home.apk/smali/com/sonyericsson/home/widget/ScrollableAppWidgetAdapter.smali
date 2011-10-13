.class public Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScrollableAppWidgetAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;,
        Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;,
        Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataSetChangedRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG_DATA:Z = false

.field private static final TAG:Ljava/lang/String; = "ScrollableAppWidgetAdapter"


# instance fields
.field private mActionIdx:I

.field private mChildrenClickable:Z

.field private mColumnIds:[I

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

.field private mDataUri:Ljava/lang/String;

.field private mDefRes:[I

.field private mHandler:Landroid/os/Handler;

.field private mItemId:I

.field private mLock:Ljava/lang/Object;

.field private mNeedToRunAgain:Z

.field private mOrder:Ljava/lang/String;

.field private mProj:[Ljava/lang/String;

.field private mScrollableAppWidgetManager:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;

.field private mSel:Ljava/lang/String;

.field private mSelArgs:[Ljava/lang/String;

.field private mThread:Ljava/lang/Thread;

.field private mValid:Z

.field private mViewClickable:[Z

.field private mViewIds:[I

.field private mViewTypes:[I

.field private mWidgetId:I

.field private mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/content/Intent;Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;)V
    .locals 6
    .parameter "widgetId"
    .parameter "widgetContext"
    .parameter "intent"
    .parameter "scrollableAppWidgetManager"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 165
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    iput-boolean v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mValid:Z

    .line 103
    new-instance v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

    invoke-direct {v0, v3}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;-><init>(Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$1;)V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mLock:Ljava/lang/Object;

    .line 127
    iput-object v3, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mThread:Ljava/lang/Thread;

    .line 130
    iput-boolean v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mNeedToRunAgain:Z

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mHandler:Landroid/os/Handler;

    .line 167
    iput p1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mWidgetId:I

    .line 168
    iput-object p2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 170
    iput-object p4, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mScrollableAppWidgetManager:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mScrollableAppWidgetManager:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->getWidgetManager()Lcom/sonyericsson/home/widget/WidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mWidgetId:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 174
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_DATA_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDataUri:Ljava/lang/String;

    .line 175
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_PROJECTION"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mProj:[Ljava/lang/String;

    .line 176
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_SELECTION"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mSel:Ljava/lang/String;

    .line 177
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_SELECTION_ARGUMENTS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mSelArgs:[Ljava/lang/String;

    .line 178
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_SORT_ORDER"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mOrder:Ljava/lang/String;

    .line 179
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_ITEM_LAYOUT_ID"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mItemId:I

    .line 180
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_ITEM_CHILDREN_CLICKABLE"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mChildrenClickable:Z

    .line 182
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_ITEM_ACTION_VIEW_URI_INDEX"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mActionIdx:I

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDataUri:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_VIEW_TYPES"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewTypes:[I

    .line 189
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_VIEW_IDS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewIds:[I

    .line 190
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_VIEW_CLICKABLE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewClickable:[Z

    .line 192
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_CURSOR_INDICES"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mColumnIds:[I

    .line 193
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_DEFAULT_RESOURCES"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewTypes:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewIds:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mColumnIds:[I

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewTypes:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewIds:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewTypes:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mColumnIds:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 202
    iput-boolean v5, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mValid:Z

    .line 205
    new-instance v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$1;

    invoke-direct {v0, p0, v3}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$1;-><init>(Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContentObserver:Landroid/database/ContentObserver;

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDataUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 214
    invoke-direct {p0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->scheduleFetch()V

    goto :goto_0
.end method

.method static synthetic access$102(Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;)Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->scheduleFetch()V

    return-void
.end method

.method private arrToHexString([I)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 581
    if-nez p1, :cond_0

    .line 582
    const/4 v2, 0x0

    .line 591
    :goto_0
    return-object v2

    .line 583
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 584
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 586
    if-lez v0, :cond_1

    .line 587
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 588
    :cond_1
    aget v2, p1, v0

    invoke-direct {p0, v2}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 590
    :cond_2
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 591
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private arrToString([I)Ljava/lang/String;
    .locals 3
    .parameter "arr"

    .prologue
    .line 560
    if-nez p1, :cond_0

    .line 561
    const/4 v2, 0x0

    .line 570
    :goto_0
    return-object v2

    .line 562
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 563
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 565
    if-lez v0, :cond_1

    .line 566
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 567
    :cond_1
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 569
    :cond_2
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private arrToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "arr"

    .prologue
    const/16 v3, 0x22

    .line 538
    if-nez p1, :cond_0

    .line 539
    const/4 v2, 0x0

    .line 550
    :goto_0
    return-object v2

    .line 540
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 541
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 543
    if-lez v0, :cond_1

    .line 544
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 545
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 546
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 549
    :cond_2
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private scheduleFetch()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 425
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mNeedToRunAgain:Z

    .line 431
    :goto_0
    monitor-exit v0

    .line 432
    return-void

    .line 428
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mThread:Ljava/lang/Thread;

    .line 429
    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private toHexString(I)Ljava/lang/String;
    .locals 2
    .parameter "v"

    .prologue
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 265
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 277
    .local v8, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

    move-object v13, v0

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;

    .line 280
    .local v10, row:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;
    if-nez p2, :cond_0

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mItemId:I

    move v14, v0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 285
    :cond_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewTypes:[I

    move-object v13, v0

    array-length v13, v13

    if-ge v7, v13, :cond_f

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewIds:[I

    move-object v13, v0

    aget v13, v13, v7

    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 288
    .local v3, child:Landroid/view/View;
    if-nez v3, :cond_2

    .line 290
    const-string v13, "ScrollableAppWidgetAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot find view id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewIds:[I

    move-object v15, v0

    aget v15, v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {v10, v7}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 297
    .local v5, data:Ljava/lang/Object;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewTypes:[I

    move-object v13, v0

    aget v13, v13, v7

    packed-switch v13, :pswitch_data_0

    .line 367
    const-string v13, "ScrollableAppWidgetAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot handle type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewTypes:[I

    move-object v15, v0

    aget v15, v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v5           #data:Ljava/lang/Object;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mChildrenClickable:Z

    move v13, v0

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewClickable:[Z

    move-object v13, v0

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewClickable:[Z

    move-object v13, v0

    aget-boolean v13, v13, v7

    if-eqz v13, :cond_1

    .line 377
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mActionIdx:I

    move v13, v0

    if-ltz v13, :cond_e

    .line 378
    invoke-virtual {v10}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->getActionUri()Ljava/lang/String;

    move-result-object v12

    .line 379
    .local v12, uri:Ljava/lang/String;
    invoke-virtual {v3, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 383
    .end local v12           #uri:Ljava/lang/String;
    :goto_3
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/view/View;->setClickable(Z)V

    .line 384
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 299
    .restart local v5       #data:Ljava/lang/Object;
    :pswitch_0
    :try_start_1
    check-cast v5, Ljava/lang/Integer;

    .end local v5           #data:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 300
    .local v9, resId:I
    if-nez v9, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    if-eqz v13, :cond_4

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    aget v9, v13, v7

    .line 303
    :cond_4
    if-eqz v9, :cond_5

    .line 306
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 307
    .local v4, d:Landroid/graphics/drawable/Drawable;
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 370
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    .end local v9           #resId:I
    :catch_0
    move-exception v13

    move-object v6, v13

    .line 371
    .local v6, e:Ljava/lang/Exception;
    const-string v13, "ScrollableAppWidgetAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception while setting up child #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 310
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v9       #resId:I
    :cond_5
    :try_start_2
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 314
    .end local v9           #resId:I
    .restart local v5       #data:Ljava/lang/Object;
    :pswitch_1
    check-cast v5, [B

    .end local v5           #data:Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 315
    .local v2, buff:[B
    if-eqz v2, :cond_6

    .line 317
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v13, 0x0

    array-length v14, v2

    invoke-static {v2, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 319
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    aget v13, v13, v7

    if-eqz v13, :cond_7

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    aget v13, v13, v7

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 322
    .restart local v4       #d:Landroid/graphics/drawable/Drawable;
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 325
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 329
    .end local v2           #buff:[B
    .restart local v5       #data:Ljava/lang/Object;
    :pswitch_2
    if-eqz v5, :cond_8

    .line 331
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    move-object v4, v0

    check-cast v5, Ljava/lang/String;

    .end local v5           #data:Ljava/lang/Object;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 332
    .restart local v5       #data:Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    aget v13, v13, v7

    if-eqz v13, :cond_9

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    aget v13, v13, v7

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 335
    .restart local v4       #d:Landroid/graphics/drawable/Drawable;
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    move-object v5, v0

    .end local v5           #data:Ljava/lang/Object;
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 338
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    .restart local v5       #data:Ljava/lang/Object;
    :cond_9
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 342
    :pswitch_3
    if-eqz v5, :cond_a

    .line 344
    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    check-cast v5, Ljava/lang/String;

    .end local v5           #data:Ljava/lang/Object;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 345
    .restart local v5       #data:Ljava/lang/Object;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    aget v13, v13, v7

    if-eqz v13, :cond_b

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    aget v13, v13, v7

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 348
    .local v11, s:Ljava/lang/String;
    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 351
    .end local v11           #s:Ljava/lang/String;
    :cond_b
    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 355
    :pswitch_4
    if-eqz v5, :cond_c

    .line 356
    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    check-cast v5, Ljava/lang/String;

    .end local v5           #data:Ljava/lang/Object;
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 357
    .restart local v5       #data:Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    aget v13, v13, v7

    if-eqz v13, :cond_d

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    aget v13, v13, v7

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 360
    .restart local v11       #s:Ljava/lang/String;
    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 363
    .end local v11           #s:Ljava/lang/String;
    :cond_d
    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 381
    .end local v5           #data:Ljava/lang/Object;
    :cond_e
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 388
    .end local v3           #child:Landroid/view/View;
    :cond_f
    return-object p2

    .line 297
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mValid:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 398
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mobi.intuitit.android.hpp.ACTION_VIEW_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 400
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    const-string v1, "mobi.intuitit.android.hpp.EXTRA_APPWIDGET_ID"

    iget v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    const-string v1, "mobi.intuitit.android.hpp.EXTRA_VIEW_ID"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    const-string v2, "mobi.intuitit.android.hpp.EXTRA_ITEM_POS"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 405
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 438
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mNeedToRunAgain:Z

    .line 442
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    new-instance v9, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

    invoke-direct {v9, v3}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;-><init>(Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$1;)V

    .line 447
    .local v9, newData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;
    const/4 v6, 0x0

    .line 451
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDataUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 452
    .local v1, contentUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mProj:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mSel:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mSelArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 453
    if-nez v6, :cond_1

    .line 498
    if-eqz v6, :cond_0

    .line 499
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 442
    .end local v1           #contentUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #newData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 456
    .restart local v1       #contentUri:Landroid/net/Uri;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v9       #newData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;
    :cond_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 458
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 459
    new-instance v10, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;

    invoke-direct {v10}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;-><init>()V

    .line 462
    .local v10, row:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mColumnIds:[I

    array-length v0, v0

    if-ge v7, v0, :cond_4

    .line 463
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mColumnIds:[I

    aget v8, v0, v7

    .line 464
    .local v8, idx:I
    if-gez v8, :cond_2

    .line 466
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->add(Ljava/lang/Object;)Z

    .line 462
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewTypes:[I

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_0

    .line 481
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 498
    .end local v1           #contentUri:Landroid/net/Uri;
    .end local v7           #i:I
    .end local v8           #idx:I
    .end local v10           #row:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_3

    .line 499
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 471
    .restart local v1       #contentUri:Landroid/net/Uri;
    .restart local v7       #i:I
    .restart local v8       #idx:I
    .restart local v10       #row:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;
    :pswitch_0
    :try_start_4
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 474
    :pswitch_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 487
    .end local v8           #idx:I
    :cond_4
    iget v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mActionIdx:I

    if-ltz v0, :cond_5

    .line 488
    iget v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mActionIdx:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->setActionUri(Ljava/lang/String;)V

    .line 490
    :cond_5
    invoke-virtual {v9, v10}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 498
    .end local v7           #i:I
    .end local v10           #row:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;
    :cond_6
    if-eqz v6, :cond_7

    .line 499
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 504
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    :try_start_5
    iget-boolean v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mNeedToRunAgain:Z

    if-eqz v2, :cond_8

    .line 510
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mThread:Ljava/lang/Thread;

    .line 511
    iget-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 517
    :goto_4
    iget-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataSetChangedRunnable;

    invoke-direct {v3, p0, v9}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataSetChangedRunnable;-><init>(Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 518
    monitor-exit v0

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 514
    :cond_8
    const/4 v2, 0x0

    :try_start_6
    iput-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mThread:Ljava/lang/Thread;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 469
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 413
    return-void
.end method
