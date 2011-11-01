.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createComparators(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/statistics/Statistics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonyericsson/home/data/ActivityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

.field final synthetic val$statistics:Lcom/sonyericsson/home/statistics/Statistics;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/statistics/Statistics;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->val$statistics:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/home/data/ActivityInfo;Lcom/sonyericsson/home/data/ActivityInfo;)I
    .locals 8
    .parameter "activityInfo1"
    .parameter "activityInfo2"

    .prologue
    const-wide/16 v6, 0x0

    .line 731
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->val$statistics:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/home/statistics/Statistics;->getStats(Lcom/sonyericsson/home/data/ActivityInfo;)Lcom/sonyericsson/home/statistics/ActivityStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->getInstallTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->val$statistics:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/home/statistics/Statistics;->getStats(Lcom/sonyericsson/home/data/ActivityInfo;)Lcom/sonyericsson/home/statistics/ActivityStats;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/home/statistics/ActivityStats;->getInstallTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 736
    .local v0, diff:J
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 737
    const/4 v2, 0x1

    .line 741
    :goto_0
    return v2

    .line 738
    :cond_0
    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    .line 739
    const/4 v2, -0x1

    goto :goto_0

    .line 741
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 729
    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    check-cast p2, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$10;->compare(Lcom/sonyericsson/home/data/ActivityInfo;Lcom/sonyericsson/home/data/ActivityInfo;)I

    move-result v0

    return v0
.end method
