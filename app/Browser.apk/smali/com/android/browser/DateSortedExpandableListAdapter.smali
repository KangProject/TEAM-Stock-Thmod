.class public Lcom/android/browser/DateSortedExpandableListAdapter;
.super Ljava/lang/Object;
.source "DateSortedExpandableListAdapter.java"

# interfaces
.implements Landroid/widget/ExpandableListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/DateSortedExpandableListAdapter$ChangeObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDateIndex:I

.field private mDateSorter:Landroid/webkit/DateSorter;

.field private mIdIndex:I

.field private mItemMap:[I

.field private mNumberOfBins:I

.field private mObservers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "dateIndex"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Landroid/webkit/DateSorter;

    invoke-direct {v0, p1}, Landroid/webkit/DateSorter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mObservers:Ljava/util/Vector;

    .line 74
    iput-object p2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    .line 75
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mIdIndex:I

    .line 76
    new-instance v0, Lcom/android/browser/DateSortedExpandableListAdapter$ChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/browser/DateSortedExpandableListAdapter$ChangeObserver;-><init>(Lcom/android/browser/DateSortedExpandableListAdapter;)V

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 77
    iput p3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateIndex:I

    .line 78
    invoke-direct {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->buildMap()V

    .line 79
    return-void
.end method

.method private buildMap()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 87
    new-array v0, v7, [I

    .line 89
    .local v0, array:[I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 90
    aput v6, v0, v5

    .line 89
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 92
    :cond_0
    iput v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    .line 93
    const/4 v3, -0x1

    .line 94
    .local v3, dateIndex:I
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 95
    :goto_1
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1

    .line 96
    iget v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateIndex:I

    invoke-virtual {p0, v6}, Lcom/android/browser/DateSortedExpandableListAdapter;->getLong(I)J

    move-result-wide v1

    .line 97
    .local v1, date:J
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-virtual {v6, v1, v2}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result v4

    .line 98
    .local v4, index:I
    if-le v4, v3, :cond_3

    .line 99
    iget v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    .line 100
    const/4 v6, 0x4

    if-ne v4, v6, :cond_2

    .line 103
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v0, v4

    .line 113
    .end local v1           #date:J
    .end local v4           #index:I
    :cond_1
    iput-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    .line 114
    return-void

    .line 107
    .restart local v1       #date:J
    .restart local v4       #index:I
    :cond_2
    move v3, v4

    .line 109
    :cond_3
    aget v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v3

    .line 110
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method private groupPositionToBin(I)I
    .locals 3
    .parameter "groupPosition"

    .prologue
    const/4 v2, 0x5

    .line 196
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 197
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "group position out of range"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 199
    :cond_1
    iget v1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    if-eq v2, v1, :cond_2

    iget v1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    if-nez v1, :cond_3

    :cond_2
    move v1, p1

    .line 215
    :goto_0
    return v1

    .line 208
    :cond_3
    const/4 v0, -0x1

    .line 209
    .local v0, arrayPosition:I
    :cond_4
    :goto_1
    const/4 v1, -0x1

    if-le p1, v1, :cond_5

    .line 210
    add-int/lit8 v0, v0, 0x1

    .line 211
    iget-object v1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    aget v1, v1, v0

    if-eqz v1, :cond_4

    .line 212
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    move v1, v0

    .line 215
    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method getBlob(I)[B
    .locals 1
    .parameter "cursorIndex"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/DateSortedExpandableListAdapter;->moveCursorToChildPosition(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mIdIndex:I

    invoke-virtual {p0, v0}, Lcom/android/browser/DateSortedExpandableListAdapter;->getLong(I)J

    move-result-wide v0

    .line 315
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    invoke-direct {p0, p1}, Lcom/android/browser/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getCombinedChildId(JJ)J
    .locals 0
    .parameter "groupId"
    .parameter "childId"

    .prologue
    .line 337
    return-wide p3
.end method

.method public getCombinedGroupId(J)J
    .locals 0
    .parameter "groupId"

    .prologue
    .line 341
    return-wide p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 308
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 267
    if-eqz p3, :cond_0

    instance-of v4, p3, Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 268
    :cond_0
    iget-object v4, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 269
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f03000c

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 273
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .local v2, item:Landroid/widget/TextView;
    :goto_0
    iget-object v4, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-direct {p0, p1}, Lcom/android/browser/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/DateSorter;->getLabel(I)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, label:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    return-object v2

    .line 271
    .end local v2           #item:Landroid/widget/TextView;
    .end local v3           #label:Ljava/lang/String;
    :cond_1
    move-object v0, p3

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .restart local v2       #item:Landroid/widget/TextView;
    goto :goto_0
.end method

.method getInt(I)I
    .locals 1
    .parameter "cursorIndex"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method getLong(I)J
    .locals 2
    .parameter "cursorIndex"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getString(I)Ljava/lang/String;
    .locals 1
    .parameter "cursorIndex"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveCursorToChildPosition(II)Z
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 244
    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 250
    :goto_0
    return v2

    .line 245
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/browser/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result p1

    .line 246
    move v1, p2

    .line 247
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 248
    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    :cond_1
    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    goto :goto_0
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 334
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 331
    return-void
.end method

.method refreshData()V
    .locals 3

    .prologue
    .line 254
    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    :cond_0
    return-void

    .line 257
    :cond_1
    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    .line 258
    invoke-direct {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->buildMap()V

    .line 259
    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 260
    .local v1, o:Landroid/database/DataSetObserver;
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 324
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method
