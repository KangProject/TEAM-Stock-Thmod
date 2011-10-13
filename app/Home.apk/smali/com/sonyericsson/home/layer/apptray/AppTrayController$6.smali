.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$6;
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
    .line 561
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$6;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$6;->val$statistics:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/home/data/ActivityInfo;Lcom/sonyericsson/home/data/ActivityInfo;)I
    .locals 3
    .parameter "activityInfo1"
    .parameter "activityInfo2"

    .prologue
    const/16 v2, 0xff

    .line 563
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$6;->val$statistics:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/home/statistics/Statistics;->getStats(Lcom/sonyericsson/home/data/ActivityInfo;)Lcom/sonyericsson/home/statistics/ActivityStats;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->getStartCount(I)I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$6;->val$statistics:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/statistics/Statistics;->getStats(Lcom/sonyericsson/home/data/ActivityInfo;)Lcom/sonyericsson/home/statistics/ActivityStats;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->getStartCount(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 561
    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    check-cast p2, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$6;->compare(Lcom/sonyericsson/home/data/ActivityInfo;Lcom/sonyericsson/home/data/ActivityInfo;)I

    move-result v0

    return v0
.end method
