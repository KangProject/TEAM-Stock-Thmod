.class Lcom/sonyericsson/home/statistics/Statistics$2;
.super Ljava/lang/Object;
.source "Statistics.java"

# interfaces
.implements Lcom/sonyericsson/home/data/SyncHelper$Syncable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/statistics/Statistics;->createSyncable()Lcom/sonyericsson/home/data/SyncHelper$Syncable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/statistics/Statistics;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/statistics/Statistics;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sonyericsson/home/statistics/Statistics$2;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDuringSync(Lcom/sonyericsson/home/data/Info;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 206
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$2;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v0}, Lcom/sonyericsson/home/statistics/Statistics;->access$500(Lcom/sonyericsson/home/statistics/Statistics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$2;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/statistics/Statistics;->getStats(Lcom/sonyericsson/home/data/ActivityInfo;)Lcom/sonyericsson/home/statistics/ActivityStats;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->registerInstall(J)V

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDuringSync(Lcom/sonyericsson/home/data/Info;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 192
    iget-object v2, p0, Lcom/sonyericsson/home/statistics/Statistics$2;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    iget-object v2, v2, Lcom/sonyericsson/home/statistics/Statistics;->mActivityStats:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 193
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/home/statistics/ActivityStats;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/statistics/ActivityStats;

    .line 197
    .local v1, stats:Lcom/sonyericsson/home/statistics/ActivityStats;
    invoke-virtual {v1}, Lcom/sonyericsson/home/statistics/ActivityStats;->getInfo()Lcom/sonyericsson/home/data/ActivityInfo;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 199
    const/4 v2, 0x1

    .line 202
    .end local v1           #stats:Lcom/sonyericsson/home/statistics/ActivityStats;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
