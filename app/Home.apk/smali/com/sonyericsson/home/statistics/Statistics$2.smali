.class Lcom/sonyericsson/home/statistics/Statistics$2;
.super Ljava/lang/Object;
.source "Statistics.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/LayerController$Syncable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/statistics/Statistics;->createSyncable()Lcom/sonyericsson/home/layer/LayerController$Syncable;
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
    .line 187
    iput-object p1, p0, Lcom/sonyericsson/home/statistics/Statistics$2;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDuringSync(Lcom/sonyericsson/home/data/Info;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 204
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$2;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v0}, Lcom/sonyericsson/home/statistics/Statistics;->access$400(Lcom/sonyericsson/home/statistics/Statistics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$2;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/statistics/Statistics;->getStats(Lcom/sonyericsson/home/data/ActivityInfo;)Lcom/sonyericsson/home/statistics/ActivityStats;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->registerInstall(J)V

    .line 207
    :cond_0
    return-void
.end method

.method public removeDuringSync(Lcom/sonyericsson/home/data/Info;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 191
    iget-object v2, p0, Lcom/sonyericsson/home/statistics/Statistics$2;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    iget-object v2, v2, Lcom/sonyericsson/home/statistics/Statistics;->mActivityStats:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 192
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/home/statistics/ActivityStats;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/statistics/ActivityStats;

    .line 196
    .local v1, stats:Lcom/sonyericsson/home/statistics/ActivityStats;
    invoke-virtual {v1}, Lcom/sonyericsson/home/statistics/ActivityStats;->getInfo()Lcom/sonyericsson/home/data/ActivityInfo;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 201
    .end local v1           #stats:Lcom/sonyericsson/home/statistics/ActivityStats;
    :cond_1
    return-void
.end method
