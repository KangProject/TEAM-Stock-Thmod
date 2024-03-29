.class public final Landroid/view/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"

# interfaces
.implements Landroid/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VelocityTracker$Pointer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Poolable",
        "<",
        "Landroid/view/VelocityTracker;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_AGE_MILLISECONDS:I = 0xc8

.field private static final NUM_PAST:I = 0xa

.field private static final POINTER_POOL_CAPACITY:I = 0x14

.field private static final TAG:Ljava/lang/String; = "VelocityTracker"

.field private static final localLOGV:Z

.field private static final sPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Landroid/view/VelocityTracker;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecycledPointerCount:I

.field private static sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;


# instance fields
.field private mGeneration:I

.field private mLastTouchIndex:I

.field private mNext:Landroid/view/VelocityTracker;

.field private mPointerListHead:Landroid/view/VelocityTracker$Pointer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/view/VelocityTracker$1;

    invoke-direct {v0}, Landroid/view/VelocityTracker$1;-><init>()V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    sput-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/VelocityTracker$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/view/VelocityTracker;-><init>()V

    return-void
.end method

.method private final getPointer(I)Landroid/view/VelocityTracker$Pointer;
    .locals 2
    .parameter "id"

    .prologue
    .line 379
    iget-object v0, p0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .local v0, pointer:Landroid/view/VelocityTracker$Pointer;
    :goto_0
    if-eqz v0, :cond_1

    .line 380
    iget v1, v0, Landroid/view/VelocityTracker$Pointer;->id:I

    if-ne v1, p1, :cond_0

    move-object v1, v0

    .line 384
    :goto_1
    return-object v1

    .line 379
    :cond_0
    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    goto :goto_0

    .line 384
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static obtain()Landroid/view/VelocityTracker;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    invoke-interface {v0}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/VelocityTracker;

    return-object v0
.end method

.method private static final obtainPointer()Landroid/view/VelocityTracker$Pointer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 388
    sget-object v1, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    monitor-enter v1

    .line 389
    :try_start_0
    sget v2, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    if-eqz v2, :cond_0

    .line 390
    sget-object v0, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .line 391
    .local v0, element:Landroid/view/VelocityTracker$Pointer;
    sget v2, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    .line 392
    iget-object v2, v0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    sput-object v2, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .line 393
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    .line 394
    monitor-exit v1

    move-object v1, v0

    .line 397
    .end local v0           #element:Landroid/view/VelocityTracker$Pointer;
    :goto_0
    return-object v1

    .line 396
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    new-instance v1, Landroid/view/VelocityTracker$Pointer;

    invoke-direct {v1, v3}, Landroid/view/VelocityTracker$Pointer;-><init>(Landroid/view/VelocityTracker$1;)V

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static final releasePointer(Landroid/view/VelocityTracker$Pointer;)V
    .locals 3
    .parameter "pointer"

    .prologue
    .line 401
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    monitor-enter v0

    .line 402
    :try_start_0
    sget v1, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 403
    sget-object v1, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    iput-object v1, p0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    .line 404
    sget v1, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    .line 405
    sput-object p0, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .line 407
    :cond_0
    monitor-exit v0

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final releasePointerList(Landroid/view/VelocityTracker$Pointer;)V
    .locals 5
    .parameter "pointer"

    .prologue
    const/16 v4, 0x14

    .line 411
    if-eqz p0, :cond_0

    .line 412
    sget-object v3, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    monitor-enter v3

    .line 413
    :try_start_0
    sget v0, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    .line 414
    .local v0, count:I
    if-lt v0, v4, :cond_1

    .line 415
    monitor-exit v3

    .line 437
    .end local v0           #count:I
    :cond_0
    :goto_0
    return-void

    .line 418
    .restart local v0       #count:I
    :cond_1
    move-object v2, p0

    .line 420
    .local v2, tail:Landroid/view/VelocityTracker$Pointer;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 421
    if-lt v0, v4, :cond_3

    .line 432
    :cond_2
    sget-object v4, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    iput-object v4, v2, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    .line 433
    sput v0, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    .line 434
    sput-object p0, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .line 435
    monitor-exit v3

    goto :goto_0

    .end local v0           #count:I
    .end local v2           #tail:Landroid/view/VelocityTracker$Pointer;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 425
    .restart local v0       #count:I
    .restart local v2       #tail:Landroid/view/VelocityTracker$Pointer;
    :cond_3
    :try_start_1
    iget-object v1, v2, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    .local v1, next:Landroid/view/VelocityTracker$Pointer;
    if-eqz v1, :cond_2

    .line 429
    move-object v2, v1

    .line 430
    goto :goto_1
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 23
    .parameter "ev"

    .prologue
    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v5

    .line 145
    .local v5, historySize:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    .line 146
    .local v16, pointerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/VelocityTracker;->mLastTouchIndex:I

    move v8, v0

    .line 147
    .local v8, lastTouchIndex:I
    add-int/lit8 v20, v8, 0x1

    rem-int/lit8 v11, v20, 0xa

    .line 148
    .local v11, nextTouchIndex:I
    add-int v20, v11, v5

    rem-int/lit8 v3, v20, 0xa

    .line 149
    .local v3, finalTouchIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/VelocityTracker;->mGeneration:I

    move v4, v0

    add-int/lit8 v20, v4, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/VelocityTracker;->mGeneration:I

    .line 151
    .local v4, generation:I
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/VelocityTracker;->mLastTouchIndex:I

    .line 154
    const/16 v18, 0x0

    .line 155
    .local v18, previousPointer:Landroid/view/VelocityTracker$Pointer;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move v0, v6

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    .line 156
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 163
    .local v17, pointerId:I
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/VelocityTracker$Pointer;->id:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 164
    :cond_0
    const/16 v18, 0x0

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    move-object v9, v0

    .line 172
    .local v9, nextPointer:Landroid/view/VelocityTracker$Pointer;
    :goto_1
    if-eqz v9, :cond_3

    .line 173
    iget v10, v9, Landroid/view/VelocityTracker$Pointer;->id:I

    .line 174
    .local v10, nextPointerId:I
    move v0, v10

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 175
    move-object v15, v9

    .line 199
    .end local v10           #nextPointerId:I
    .local v15, pointer:Landroid/view/VelocityTracker$Pointer;
    :goto_2
    iput v4, v15, Landroid/view/VelocityTracker$Pointer;->generation:I

    .line 200
    move-object/from16 v18, v15

    .line 202
    iget-object v13, v15, Landroid/view/VelocityTracker$Pointer;->pastX:[F

    .line 203
    .local v13, pastX:[F
    iget-object v14, v15, Landroid/view/VelocityTracker$Pointer;->pastY:[F

    .line 204
    .local v14, pastY:[F
    iget-object v12, v15, Landroid/view/VelocityTracker$Pointer;->pastTime:[J

    .line 206
    .local v12, pastTime:[J
    const/4 v7, 0x0

    .local v7, j:I
    :goto_3
    if-ge v7, v5, :cond_5

    .line 207
    add-int v20, v11, v7

    rem-int/lit8 v19, v20, 0xa

    .line 208
    .local v19, touchIndex:I
    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v20

    aput v20, v13, v19

    .line 209
    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v20

    aput v20, v14, v19

    .line 210
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v20

    aput-wide v20, v12, v19

    .line 206
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 167
    .end local v7           #j:I
    .end local v9           #nextPointer:Landroid/view/VelocityTracker$Pointer;
    .end local v12           #pastTime:[J
    .end local v13           #pastX:[F
    .end local v14           #pastY:[F
    .end local v15           #pointer:Landroid/view/VelocityTracker$Pointer;
    .end local v19           #touchIndex:I
    :cond_1
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    move-object v9, v0

    .restart local v9       #nextPointer:Landroid/view/VelocityTracker$Pointer;
    goto :goto_1

    .line 178
    .restart local v10       #nextPointerId:I
    :cond_2
    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 179
    iget-object v9, v9, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    .line 180
    goto :goto_1

    .line 187
    .end local v10           #nextPointerId:I
    :cond_3
    invoke-static {}, Landroid/view/VelocityTracker;->obtainPointer()Landroid/view/VelocityTracker$Pointer;

    move-result-object v15

    .line 188
    .restart local v15       #pointer:Landroid/view/VelocityTracker$Pointer;
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Landroid/view/VelocityTracker$Pointer;->id:I

    .line 189
    move-object v0, v15

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->pastTime:[J

    move-object/from16 v20, v0

    const-wide/high16 v21, -0x8000

    aput-wide v21, v20, v8

    .line 190
    iput-object v9, v15, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    .line 191
    if-nez v18, :cond_4

    .line 192
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    goto :goto_2

    .line 194
    :cond_4
    move-object v0, v15

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    goto :goto_2

    .line 212
    .restart local v7       #j:I
    .restart local v12       #pastTime:[J
    .restart local v13       #pastX:[F
    .restart local v14       #pastY:[F
    :cond_5
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    aput v20, v13, v3

    .line 213
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    aput v20, v14, v3

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    aput-wide v20, v12, v3

    .line 155
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 218
    .end local v7           #j:I
    .end local v9           #nextPointer:Landroid/view/VelocityTracker$Pointer;
    .end local v12           #pastTime:[J
    .end local v13           #pastX:[F
    .end local v14           #pastY:[F
    .end local v15           #pointer:Landroid/view/VelocityTracker$Pointer;
    .end local v17           #pointerId:I
    :cond_6
    const/16 v18, 0x0

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    move-object v15, v0

    .restart local v15       #pointer:Landroid/view/VelocityTracker$Pointer;
    :goto_4
    if-eqz v15, :cond_9

    .line 220
    iget-object v9, v15, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    .line 221
    .restart local v9       #nextPointer:Landroid/view/VelocityTracker$Pointer;
    move-object v0, v15

    iget v0, v0, Landroid/view/VelocityTracker$Pointer;->generation:I

    move/from16 v20, v0

    move/from16 v0, v20

    move v1, v4

    if-eq v0, v1, :cond_8

    .line 223
    if-nez v18, :cond_7

    .line 224
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .line 228
    :goto_5
    invoke-static {v15}, Landroid/view/VelocityTracker;->releasePointer(Landroid/view/VelocityTracker$Pointer;)V

    .line 232
    :goto_6
    move-object v15, v9

    .line 233
    goto :goto_4

    .line 226
    :cond_7
    move-object v0, v9

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    goto :goto_5

    .line 230
    :cond_8
    move-object/from16 v18, v15

    goto :goto_6

    .line 234
    .end local v9           #nextPointer:Landroid/view/VelocityTracker$Pointer;
    :cond_9
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    invoke-static {v0}, Landroid/view/VelocityTracker;->releasePointerList(Landroid/view/VelocityTracker$Pointer;)V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/VelocityTracker;->mLastTouchIndex:I

    .line 132
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 1
    .parameter "units"

    .prologue
    .line 243
    const v0, 0x7f7fffff

    invoke-virtual {p0, p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 244
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 29
    .parameter "units"
    .parameter "maxVelocity"

    .prologue
    .line 260
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/VelocityTracker;->mLastTouchIndex:I

    move v7, v0

    .line 262
    .local v7, lastTouchIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    move-object/from16 v22, v0

    .local v22, pointer:Landroid/view/VelocityTracker$Pointer;
    :goto_0
    if-eqz v22, :cond_b

    .line 263
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->pastTime:[J

    move-object/from16 v19, v0

    .line 267
    .local v19, pastTime:[J
    move/from16 v16, v7

    .line 268
    .local v16, oldestTouchIndex:I
    const/4 v13, 0x1

    .line 269
    .local v13, numTouches:I
    aget-wide v25, v19, v7

    const-wide/16 v27, 0xc8

    sub-long v8, v25, v27

    .line 270
    .local v8, minTime:J
    :goto_1
    const/16 v25, 0xa

    move v0, v13

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 271
    add-int/lit8 v25, v16, 0xa

    const/16 v26, 0x1

    sub-int v25, v25, v26

    rem-int/lit8 v12, v25, 0xa

    .line 272
    .local v12, nextOldestTouchIndex:I
    aget-wide v10, v19, v12

    .line 273
    .local v10, nextOldestTime:J
    cmp-long v25, v10, v8

    if-gez v25, :cond_2

    .line 282
    .end local v10           #nextOldestTime:J
    .end local v12           #nextOldestTouchIndex:I
    :cond_0
    const/16 v25, 0x3

    move v0, v13

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 283
    add-int/lit8 v13, v13, -0x1

    .line 287
    :cond_1
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->pastX:[F

    move-object/from16 v20, v0

    .line 288
    .local v20, pastX:[F
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->pastY:[F

    move-object/from16 v21, v0

    .line 290
    .local v21, pastY:[F
    aget v17, v20, v16

    .line 291
    .local v17, oldestX:F
    aget v18, v21, v16

    .line 292
    .local v18, oldestY:F
    aget-wide v14, v19, v16

    .line 294
    .local v14, oldestTime:J
    const/4 v2, 0x0

    .line 295
    .local v2, accumX:F
    const/4 v3, 0x0

    .line 297
    .local v3, accumY:F
    const/4 v6, 0x1

    .local v6, i:I
    :goto_2
    if-ge v6, v13, :cond_6

    .line 298
    add-int v25, v16, v6

    rem-int/lit8 v23, v25, 0xa

    .line 299
    .local v23, touchIndex:I
    aget-wide v25, v19, v23

    sub-long v25, v25, v14

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move v5, v0

    .line 301
    .local v5, duration:I
    if-nez v5, :cond_3

    .line 297
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 276
    .end local v2           #accumX:F
    .end local v3           #accumY:F
    .end local v5           #duration:I
    .end local v6           #i:I
    .end local v14           #oldestTime:J
    .end local v17           #oldestX:F
    .end local v18           #oldestY:F
    .end local v20           #pastX:[F
    .end local v21           #pastY:[F
    .end local v23           #touchIndex:I
    .restart local v10       #nextOldestTime:J
    .restart local v12       #nextOldestTouchIndex:I
    :cond_2
    move/from16 v16, v12

    .line 277
    add-int/lit8 v13, v13, 0x1

    .line 278
    goto :goto_1

    .line 303
    .end local v10           #nextOldestTime:J
    .end local v12           #nextOldestTouchIndex:I
    .restart local v2       #accumX:F
    .restart local v3       #accumY:F
    .restart local v5       #duration:I
    .restart local v6       #i:I
    .restart local v14       #oldestTime:J
    .restart local v17       #oldestX:F
    .restart local v18       #oldestY:F
    .restart local v20       #pastX:[F
    .restart local v21       #pastY:[F
    .restart local v23       #touchIndex:I
    :cond_3
    aget v25, v20, v23

    sub-float v4, v25, v17

    .line 304
    .local v4, delta:F
    move v0, v5

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v4, v25

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v24, v25, v26

    .line 305
    .local v24, velocity:F
    const/16 v25, 0x0

    cmpl-float v25, v2, v25

    if-nez v25, :cond_4

    move/from16 v2, v24

    .line 307
    :goto_4
    aget v25, v21, v23

    sub-float v4, v25, v18

    .line 308
    move v0, v5

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v4, v25

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v24, v25, v26

    .line 309
    const/16 v25, 0x0

    cmpl-float v25, v3, v25

    if-nez v25, :cond_5

    move/from16 v3, v24

    :goto_5
    goto :goto_3

    .line 305
    :cond_4
    add-float v25, v2, v24

    const/high16 v26, 0x3f00

    mul-float v25, v25, v26

    move/from16 v2, v25

    goto :goto_4

    .line 309
    :cond_5
    add-float v25, v3, v24

    const/high16 v26, 0x3f00

    mul-float v25, v25, v26

    move/from16 v3, v25

    goto :goto_5

    .line 312
    .end local v4           #delta:F
    .end local v5           #duration:I
    .end local v23           #touchIndex:I
    .end local v24           #velocity:F
    :cond_6
    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v25, v0

    cmpg-float v25, v2, v25

    if-gez v25, :cond_9

    .line 313
    move/from16 v0, p2

    neg-float v0, v0

    move v2, v0

    .line 318
    :cond_7
    :goto_6
    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v25, v0

    cmpg-float v25, v3, v25

    if-gez v25, :cond_a

    .line 319
    move/from16 v0, p2

    neg-float v0, v0

    move v3, v0

    .line 324
    :cond_8
    :goto_7
    move v0, v2

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/VelocityTracker$Pointer;->xVelocity:F

    .line 325
    move v0, v3

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/VelocityTracker$Pointer;->yVelocity:F

    .line 262
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    move-object/from16 v22, v0

    goto/16 :goto_0

    .line 314
    :cond_9
    cmpl-float v25, v2, p2

    if-lez v25, :cond_7

    .line 315
    move/from16 v2, p2

    goto :goto_6

    .line 320
    :cond_a
    cmpl-float v25, v3, p2

    if-lez v25, :cond_8

    .line 321
    move/from16 v3, p2

    goto :goto_7

    .line 332
    .end local v2           #accumX:F
    .end local v3           #accumY:F
    .end local v6           #i:I
    .end local v8           #minTime:J
    .end local v13           #numTouches:I
    .end local v14           #oldestTime:J
    .end local v16           #oldestTouchIndex:I
    .end local v17           #oldestX:F
    .end local v18           #oldestY:F
    .end local v19           #pastTime:[J
    .end local v20           #pastX:[F
    .end local v21           #pastY:[F
    :cond_b
    return-void
.end method

.method public getNextPoolable()Landroid/view/VelocityTracker;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/view/VelocityTracker;->mNext:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getNextPoolable()Landroid/view/VelocityTracker;

    move-result-object v0

    return-object v0
.end method

.method public getXVelocity()F
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    iget v0, v0, Landroid/view/VelocityTracker$Pointer;->xVelocity:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXVelocity(I)F
    .locals 2
    .parameter "id"

    .prologue
    .line 362
    invoke-direct {p0, p1}, Landroid/view/VelocityTracker;->getPointer(I)Landroid/view/VelocityTracker$Pointer;

    move-result-object v0

    .line 363
    .local v0, pointer:Landroid/view/VelocityTracker$Pointer;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/VelocityTracker$Pointer;->xVelocity:F

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getYVelocity()F
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    iget v0, v0, Landroid/view/VelocityTracker$Pointer;->yVelocity:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getYVelocity(I)F
    .locals 2
    .parameter "id"

    .prologue
    .line 374
    invoke-direct {p0, p1}, Landroid/view/VelocityTracker;->getPointer(I)Landroid/view/VelocityTracker$Pointer;

    move-result-object v0

    .line 375
    .local v0, pointer:Landroid/view/VelocityTracker$Pointer;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/VelocityTracker$Pointer;->yVelocity:F

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    invoke-interface {v0, p0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 104
    return-void
.end method

.method public setNextPoolable(Landroid/view/VelocityTracker;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 110
    iput-object p1, p0, Landroid/view/VelocityTracker;->mNext:Landroid/view/VelocityTracker;

    .line 111
    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    check-cast p1, Landroid/view/VelocityTracker;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->setNextPoolable(Landroid/view/VelocityTracker;)V

    return-void
.end method
