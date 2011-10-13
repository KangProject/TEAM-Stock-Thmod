.class Lcom/sonyericsson/home/statistics/Statistics$1$1;
.super Ljava/lang/Object;
.source "Statistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/statistics/Statistics$1;->onReadCompleted(Lcom/sonyericsson/storage/Root;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/statistics/Statistics$1;

.field final synthetic val$root:Lcom/sonyericsson/storage/Root;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/statistics/Statistics$1;Lcom/sonyericsson/storage/Root;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonyericsson/home/statistics/Statistics$1$1;->this$1:Lcom/sonyericsson/home/statistics/Statistics$1;

    iput-object p2, p0, Lcom/sonyericsson/home/statistics/Statistics$1$1;->val$root:Lcom/sonyericsson/storage/Root;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-class v6, Ljava/util/LinkedList;

    .line 89
    iget-object v3, p0, Lcom/sonyericsson/home/statistics/Statistics$1$1;->val$root:Lcom/sonyericsson/storage/Root;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/home/statistics/Statistics$1$1;->val$root:Lcom/sonyericsson/storage/Root;

    const-string v4, "version"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/storage/Root;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 91
    const-class v3, Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/sonyericsson/home/statistics/Statistics$1$1;->val$root:Lcom/sonyericsson/storage/Root;

    const-class v4, Ljava/util/LinkedList;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/storage/Root;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 94
    .local v0, activityStats:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/statistics/ActivityStats;>;"
    if-eqz v0, :cond_0

    .line 95
    iget-object v3, p0, Lcom/sonyericsson/home/statistics/Statistics$1$1;->this$1:Lcom/sonyericsson/home/statistics/Statistics$1;

    iget-object v3, v3, Lcom/sonyericsson/home/statistics/Statistics$1;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    iput-object v0, v3, Lcom/sonyericsson/home/statistics/Statistics;->mActivityStats:Ljava/util/LinkedList;

    .line 100
    .end local v0           #activityStats:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/statistics/ActivityStats;>;"
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/statistics/Statistics$1$1;->this$1:Lcom/sonyericsson/home/statistics/Statistics$1;

    iget-object v3, v3, Lcom/sonyericsson/home/statistics/Statistics$1;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v3}, Lcom/sonyericsson/home/statistics/Statistics;->access$000(Lcom/sonyericsson/home/statistics/Statistics;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet()Ljava/util/Set;

    move-result-object v1

    .line 102
    .local v1, installedActivityInfos:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v3, p0, Lcom/sonyericsson/home/statistics/Statistics$1$1;->this$1:Lcom/sonyericsson/home/statistics/Statistics$1;

    iget-object v3, v3, Lcom/sonyericsson/home/statistics/Statistics$1;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v3}, Lcom/sonyericsson/home/statistics/Statistics;->access$000(Lcom/sonyericsson/home/statistics/Statistics;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getPackageSet()Ljava/util/Set;

    move-result-object v2

    .line 105
    .local v2, installedPackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonyericsson/home/statistics/Statistics$1$1;->this$1:Lcom/sonyericsson/home/statistics/Statistics$1;

    iget-object v3, v3, Lcom/sonyericsson/home/statistics/Statistics$1;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v3}, Lcom/sonyericsson/home/statistics/Statistics;->access$100(Lcom/sonyericsson/home/statistics/Statistics;)Lcom/sonyericsson/home/layer/LayerController$Syncable;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/statistics/Statistics$1$1;->this$1:Lcom/sonyericsson/home/statistics/Statistics$1;

    iget-object v4, v4, Lcom/sonyericsson/home/statistics/Statistics$1;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v4}, Lcom/sonyericsson/home/statistics/Statistics;->access$200(Lcom/sonyericsson/home/statistics/Statistics;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Lcom/sonyericsson/home/layer/LayerController;->sync(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 108
    iget-object v3, p0, Lcom/sonyericsson/home/statistics/Statistics$1$1;->this$1:Lcom/sonyericsson/home/statistics/Statistics$1;

    iget-object v3, v3, Lcom/sonyericsson/home/statistics/Statistics$1;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v3}, Lcom/sonyericsson/home/statistics/Statistics;->access$300(Lcom/sonyericsson/home/statistics/Statistics;)V

    .line 109
    return-void
.end method
