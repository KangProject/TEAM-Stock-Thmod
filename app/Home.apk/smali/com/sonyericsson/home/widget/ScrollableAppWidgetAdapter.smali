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
.method public constructor <init>(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "widgetId"
    .parameter "info"
    .parameter "widgetContext"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 65
    iput-boolean v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mValid:Z

    .line 100
    new-instance v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

    invoke-direct {v0, v2}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;-><init>(Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$1;)V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mLock:Ljava/lang/Object;

    .line 124
    iput-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mThread:Ljava/lang/Thread;

    .line 127
    iput-boolean v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mNeedToRunAgain:Z

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mHandler:Landroid/os/Handler;

    .line 163
    iput p1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mWidgetId:I

    .line 164
    iput-object p3, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContext:Landroid/content/Context;

    .line 165
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 166
    iput-object p2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 169
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_DATA_URI"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDataUri:Ljava/lang/String;

    .line 170
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_PROJECTION"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mProj:[Ljava/lang/String;

    .line 171
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_SELECTION"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mSel:Ljava/lang/String;

    .line 172
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_SELECTION_ARGUMENTS"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mSelArgs:[Ljava/lang/String;

    .line 173
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_SORT_ORDER"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mOrder:Ljava/lang/String;

    .line 174
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_ITEM_LAYOUT_ID"

    invoke-virtual {p4, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mItemId:I

    .line 175
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_ITEM_CHILDREN_CLICKABLE"

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mChildrenClickable:Z

    .line 177
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_ITEM_ACTION_VIEW_URI_INDEX"

    invoke-virtual {p4, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mActionIdx:I

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDataUri:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_VIEW_TYPES"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewTypes:[I

    .line 184
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_VIEW_IDS"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewIds:[I

    .line 185
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_VIEW_CLICKABLE"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewClickable:[Z

    .line 187
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_CURSOR_INDICES"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mColumnIds:[I

    .line 188
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_DEFAULT_RESOURCES"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewTypes:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewIds:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mColumnIds:[I

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewTypes:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewIds:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewTypes:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mColumnIds:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 197
    iput-boolean v4, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mValid:Z

    .line 200
    new-instance v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$1;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$1;-><init>(Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContentObserver:Landroid/database/ContentObserver;

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDataUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 209
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
    .line 576
    if-nez p1, :cond_0

    .line 577
    const/4 v2, 0x0

    .line 586
    :goto_0
    return-object v2

    .line 578
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 579
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 581
    if-lez v0, :cond_1

    .line 582
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 583
    :cond_1
    aget v2, p1, v0

    invoke-direct {p0, v2}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 585
    :cond_2
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private arrToString([I)Ljava/lang/String;
    .locals 3
    .parameter "arr"

    .prologue
    .line 555
    if-nez p1, :cond_0

    .line 556
    const/4 v2, 0x0

    .line 565
    :goto_0
    return-object v2

    .line 557
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 558
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 560
    if-lez v0, :cond_1

    .line 561
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 562
    :cond_1
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 559
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 564
    :cond_2
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private arrToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "arr"

    .prologue
    const/16 v3, 0x22

    .line 533
    if-nez p1, :cond_0

    .line 534
    const/4 v2, 0x0

    .line 545
    :goto_0
    return-object v2

    .line 535
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 536
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 538
    if-lez v0, :cond_1

    .line 539
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 540
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 541
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 544
    :cond_2
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private scheduleFetch()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 420
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mNeedToRunAgain:Z

    .line 426
    :goto_0
    monitor-exit v0

    .line 427
    return-void

    .line 423
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mThread:Ljava/lang/Thread;

    .line 424
    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 426
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
    .line 523
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
    .line 242
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 260
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 272
    .local v8, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

    move-object v13, v0

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;

    .line 275
    .local v10, row:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;
    if-nez p2, :cond_0

    .line 276
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

    .line 280
    :cond_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewTypes:[I

    move-object v13, v0

    array-length v13, v13

    if-ge v7, v13, :cond_f

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewIds:[I

    move-object v13, v0

    aget v13, v13, v7

    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 283
    .local v3, child:Landroid/view/View;
    if-nez v3, :cond_2

    .line 285
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

    .line 280
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {v10, v7}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 292
    .local v5, data:Ljava/lang/Object;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewTypes:[I

    move-object v13, v0

    aget v13, v13, v7

    packed-switch v13, :pswitch_data_0

    .line 362
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

    .line 371
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

    .line 372
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mActionIdx:I

    move v13, v0

    if-ltz v13, :cond_e

    .line 373
    invoke-virtual {v10}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->getActionUri()Ljava/lang/String;

    move-result-object v12

    .line 374
    .local v12, uri:Ljava/lang/String;
    invoke-virtual {v3, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 378
    .end local v12           #uri:Ljava/lang/String;
    :goto_3
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/view/View;->setClickable(Z)V

    .line 379
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 294
    .restart local v5       #data:Ljava/lang/Object;
    :pswitch_0
    :try_start_1
    check-cast v5, Ljava/lang/Integer;

    .end local v5           #data:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 295
    .local v9, resId:I
    if-nez v9, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    if-eqz v13, :cond_4

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    aget v9, v13, v7

    .line 298
    :cond_4
    if-eqz v9, :cond_5

    .line 301
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 302
    .local v4, d:Landroid/graphics/drawable/Drawable;
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 365
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    .end local v9           #resId:I
    :catch_0
    move-exception v13

    move-object v6, v13

    .line 366
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

    .line 367
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 305
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

    .line 309
    .end local v9           #resId:I
    .restart local v5       #data:Ljava/lang/Object;
    :pswitch_1
    check-cast v5, [B

    .end local v5           #data:Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 310
    .local v2, buff:[B
    if-eqz v2, :cond_6

    .line 312
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v13, 0x0

    array-length v14, v2

    invoke-static {v2, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 314
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

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    aget v13, v13, v7

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 317
    .restart local v4       #d:Landroid/graphics/drawable/Drawable;
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 320
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 324
    .end local v2           #buff:[B
    .restart local v5       #data:Ljava/lang/Object;
    :pswitch_2
    if-eqz v5, :cond_8

    .line 326
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    move-object v4, v0

    check-cast v5, Ljava/lang/String;

    .end local v5           #data:Ljava/lang/Object;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 327
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

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    aget v13, v13, v7

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 330
    .restart local v4       #d:Landroid/graphics/drawable/Drawable;
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    move-object v5, v0

    .end local v5           #data:Ljava/lang/Object;
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 333
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    .restart local v5       #data:Ljava/lang/Object;
    :cond_9
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 337
    :pswitch_3
    if-eqz v5, :cond_a

    .line 339
    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    check-cast v5, Ljava/lang/String;

    .end local v5           #data:Ljava/lang/Object;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 340
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

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    aget v13, v13, v7

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 343
    .local v11, s:Ljava/lang/String;
    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 346
    .end local v11           #s:Ljava/lang/String;
    :cond_b
    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 350
    :pswitch_4
    if-eqz v5, :cond_c

    .line 351
    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    check-cast v5, Ljava/lang/String;

    .end local v5           #data:Ljava/lang/Object;
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 352
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

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDefRes:[I

    move-object v13, v0

    aget v13, v13, v7

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 355
    .restart local v11       #s:Ljava/lang/String;
    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 358
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

    .line 376
    .end local v5           #data:Ljava/lang/Object;
    :cond_e
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 383
    .end local v3           #child:Landroid/view/View;
    :cond_f
    return-object p2

    .line 292
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
    .line 233
    iget-boolean v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mValid:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 393
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mobi.intuitit.android.hpp.ACTION_VIEW_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 395
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    const-string v1, "mobi.intuitit.android.hpp.EXTRA_APPWIDGET_ID"

    iget v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    const-string v1, "mobi.intuitit.android.hpp.EXTRA_VIEW_ID"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    const-string v2, "mobi.intuitit.android.hpp.EXTRA_ITEM_POS"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 400
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 433
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 435
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mNeedToRunAgain:Z

    .line 437
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    new-instance v9, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

    invoke-direct {v9, v3}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;-><init>(Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$1;)V

    .line 442
    .local v9, newData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;
    const/4 v6, 0x0

    .line 446
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mDataUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 447
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

    .line 448
    if-nez v6, :cond_1

    .line 493
    if-eqz v6, :cond_0

    .line 494
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 437
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

    .line 451
    .restart local v1       #contentUri:Landroid/net/Uri;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v9       #newData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;
    :cond_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 453
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 454
    new-instance v10, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;

    invoke-direct {v10}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;-><init>()V

    .line 457
    .local v10, row:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mColumnIds:[I

    array-length v0, v0

    if-ge v7, v0, :cond_4

    .line 458
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mColumnIds:[I

    aget v8, v0, v7

    .line 459
    .local v8, idx:I
    if-gez v8, :cond_2

    .line 461
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->add(Ljava/lang/Object;)Z

    .line 457
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mViewTypes:[I

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_0

    .line 476
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 493
    .end local v1           #contentUri:Landroid/net/Uri;
    .end local v7           #i:I
    .end local v8           #idx:I
    .end local v10           #row:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_3

    .line 494
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 466
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

    .line 469
    :pswitch_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 482
    .end local v8           #idx:I
    :cond_4
    iget v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mActionIdx:I

    if-ltz v0, :cond_5

    .line 483
    iget v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mActionIdx:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;->setActionUri(Ljava/lang/String;)V

    .line 485
    :cond_5
    invoke-virtual {v9, v10}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 493
    .end local v7           #i:I
    .end local v10           #row:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataRow;
    :cond_6
    if-eqz v6, :cond_7

    .line 494
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 499
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_5
    iget-boolean v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mNeedToRunAgain:Z

    if-eqz v2, :cond_8

    .line 505
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mThread:Ljava/lang/Thread;

    .line 506
    iget-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 512
    :goto_4
    iget-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataSetChangedRunnable;

    invoke-direct {v3, p0, v9}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataSetChangedRunnable;-><init>(Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    monitor-exit v0

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 509
    :cond_8
    const/4 v2, 0x0

    :try_start_6
    iput-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mThread:Ljava/lang/Thread;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 464
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 408
    return-void
.end method
