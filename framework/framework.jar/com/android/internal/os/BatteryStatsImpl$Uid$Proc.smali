.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
.super Landroid/os/BatteryStats$Uid$Proc;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Proc"
.end annotation


# instance fields
.field mExcessivePower:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;",
            ">;"
        }
    .end annotation
.end field

.field mForegroundTime:J

.field mLastForegroundTime:J

.field mLastStarts:I

.field mLastSystemTime:J

.field mLastUserTime:J

.field mLoadedForegroundTime:J

.field mLoadedStarts:I

.field mLoadedSystemTime:J

.field mLoadedUserTime:J

.field mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

.field mStarts:I

.field mSystemTime:J

.field mUnpluggedForegroundTime:J

.field mUnpluggedStarts:I

.field mUnpluggedSystemTime:J

.field mUnpluggedUserTime:J

.field mUserTime:J

.field final synthetic this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V
    .locals 1
    .parameter

    .prologue
    .line 3064
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Proc;-><init>()V

    .line 3065
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3066
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    .line 3067
    return-void
.end method


# virtual methods
.method public addCpuTimeLocked(II)V
    .locals 4
    .parameter "utime"
    .parameter "stime"

    .prologue
    .line 3225
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 3226
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 3227
    return-void
.end method

.method public addExcessiveCpu(JJ)V
    .locals 2
    .parameter "overTime"
    .parameter "usedTime"

    .prologue
    .line 3113
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 3114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 3116
    :cond_0
    new-instance v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    .line 3117
    .local v0, ew:Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 3118
    iput-wide p1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 3119
    iput-wide p3, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 3120
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3121
    return-void
.end method

.method public addExcessiveWake(JJ)V
    .locals 2
    .parameter "overTime"
    .parameter "usedTime"

    .prologue
    .line 3102
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 3103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 3105
    :cond_0
    new-instance v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    .line 3106
    .local v0, ew:Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 3107
    iput-wide p1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 3108
    iput-wide p3, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 3109
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3110
    return-void
.end method

.method public addForegroundTimeLocked(J)V
    .locals 2
    .parameter "ttime"

    .prologue
    .line 3230
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 3231
    return-void
.end method

.method public addSpeedStepTimes([J)V
    .locals 6
    .parameter "values"

    .prologue
    .line 3303
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 3304
    aget-wide v0, p1, v3

    .line 3305
    .local v0, amt:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    .line 3306
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    aget-object v2, v4, v3

    .line 3307
    .local v2, c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    if-nez v2, :cond_0

    .line 3308
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    .end local v2           #c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;-><init>(Ljava/util/ArrayList;)V

    .restart local v2       #c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    aput-object v2, v4, v3

    .line 3310
    :cond_0
    aget-wide v4, p1, v3

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->addCountAtomic(J)V

    .line 3303
    .end local v2           #c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3313
    .end local v0           #amt:J
    :cond_2
    return-void
.end method

.method public countExcessivePowers()I
    .locals 1

    .prologue
    .line 3091
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method detach()V
    .locals 4

    .prologue
    .line 3080
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3081
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 3082
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    aget-object v0, v2, v1

    .line 3083
    .local v0, c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    if-eqz v0, :cond_0

    .line 3084
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3085
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 3081
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3088
    .end local v0           #c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    :cond_1
    return-void
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    .line 3221
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .locals 1
    .parameter "i"

    .prologue
    .line 3095
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3096
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-object v0, p0

    .line 3098
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getForegroundTime(I)J
    .locals 4
    .parameter "which"

    .prologue
    .line 3272
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 3273
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastForegroundTime:J

    .line 3282
    .local v0, val:J
    :cond_0
    :goto_0
    return-wide v0

    .line 3275
    .end local v0           #val:J
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 3276
    .restart local v0       #val:J
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 3277
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 3278
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 3279
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getStarts(I)I
    .locals 2
    .parameter "which"

    .prologue
    .line 3288
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3289
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastStarts:I

    .line 3298
    .local v0, val:I
    :cond_0
    :goto_0
    return v0

    .line 3291
    .end local v0           #val:I
    :cond_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 3292
    .restart local v0       #val:I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 3293
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 3294
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 3295
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSystemTime(I)J
    .locals 4
    .parameter "which"

    .prologue
    .line 3256
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 3257
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastSystemTime:J

    .line 3266
    .local v0, val:J
    :cond_0
    :goto_0
    return-wide v0

    .line 3259
    .end local v0           #val:J
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 3260
    .restart local v0       #val:J
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 3261
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 3262
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 3263
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getTimeAtCpuSpeedStep(II)J
    .locals 4
    .parameter "speedStep"
    .parameter "which"

    .prologue
    const-wide/16 v2, 0x0

    .line 3317
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 3318
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    aget-object v0, v1, p1

    .line 3319
    .local v0, c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->getCountLocked(I)I

    move-result v1

    int-to-long v1, v1

    .line 3321
    .end local v0           #c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    :goto_0
    return-wide v1

    .restart local v0       #c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    :cond_0
    move-wide v1, v2

    .line 3319
    goto :goto_0

    .end local v0           #c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    :cond_1
    move-wide v1, v2

    .line 3321
    goto :goto_0
.end method

.method public getUserTime(I)J
    .locals 4
    .parameter "which"

    .prologue
    .line 3240
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 3241
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastUserTime:J

    .line 3250
    .local v0, val:J
    :cond_0
    :goto_0
    return-wide v0

    .line 3243
    .end local v0           #val:J
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 3244
    .restart local v0       #val:J
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 3245
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 3246
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 3247
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public incStartsLocked()V
    .locals 1

    .prologue
    .line 3234
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 3235
    return-void
.end method

.method public plug(JJ)V
    .locals 0
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 3077
    return-void
.end method

.method readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)Z
    .locals 6
    .parameter "in"

    .prologue
    const/4 v5, 0x1

    .line 3140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3141
    .local v0, N:I
    if-nez v0, :cond_0

    .line 3142
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    move v3, v5

    .line 3159
    :goto_0
    return v3

    .line 3146
    :cond_0
    const/16 v3, 0x2710

    if-le v0, v3, :cond_1

    .line 3147
    const-string v3, "BatteryStatsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File corrupt: too many excessive power entries "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    const/4 v3, 0x0

    goto :goto_0

    .line 3151
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 3152
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 3153
    new-instance v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v1}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    .line 3154
    .local v1, ew:Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 3155
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 3156
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 3157
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3152
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #ew:Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    :cond_2
    move v3, v5

    .line 3159
    goto :goto_0
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 7
    .parameter "in"

    .prologue
    const-wide/16 v5, 0x0

    .line 3191
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 3192
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 3193
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 3194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 3195
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    .line 3196
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    .line 3197
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    .line 3198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    .line 3199
    iput-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastUserTime:J

    .line 3200
    iput-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastSystemTime:J

    .line 3201
    iput-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastForegroundTime:J

    .line 3202
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastStarts:I

    .line 3203
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    .line 3204
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    .line 3205
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    .line 3206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    .line 3208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3209
    .local v0, bins:I
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    move-result v2

    .line 3210
    .local v2, steps:I
    if-lt v0, v2, :cond_1

    move v3, v0

    :goto_0
    new-array v3, v3, [Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    .line 3211
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 3212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3213
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v4, v5, p1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;-><init>(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v4, v3, v1

    .line 3211
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    :cond_1
    move v3, v2

    .line 3210
    goto :goto_0

    .line 3217
    .restart local v1       #i:I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)Z

    .line 3218
    return-void
.end method

.method public unplug(JJ)V
    .locals 2
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 3070
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    .line 3071
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    .line 3072
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    .line 3073
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    .line 3074
    return-void
.end method

.method writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V
    .locals 5
    .parameter "out"

    .prologue
    .line 3124
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 3125
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3137
    :cond_0
    return-void

    .line 3129
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3130
    .local v0, N:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3131
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3132
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    .line 3133
    .local v1, ew:Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    iget v3, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3134
    iget-wide v3, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 3135
    iget-wide v3, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 3131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 4
    .parameter "out"

    .prologue
    .line 3163
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3164
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3165
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3166
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3167
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3168
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3169
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3170
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3171
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3172
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3173
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3174
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3176
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3177
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 3178
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    aget-object v0, v2, v1

    .line 3179
    .local v0, c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    if-eqz v0, :cond_0

    .line 3180
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3181
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 3177
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3183
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 3187
    .end local v0           #c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V

    .line 3188
    return-void
.end method
