.class Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->onReadCompleted(Lcom/sonyericsson/storage/Root;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

.field final synthetic val$root:Lcom/sonyericsson/storage/Root;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/resourceload/ResourceLoader$1;Lcom/sonyericsson/storage/Root;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->this$1:Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

    iput-object p2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->val$root:Lcom/sonyericsson/storage/Root;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const-class v8, Ljava/util/ArrayList;

    .line 509
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->this$1:Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

    iget-object v4, v4, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v4}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet()Ljava/util/Set;

    move-result-object v2

    .line 516
    .local v2, items:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->this$1:Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

    iget-object v4, v4, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    new-instance v5, Ljava/util/TreeSet;

    new-instance v6, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1$1;

    invoke-direct {v6, p0}, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1$1;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;)V

    invoke-direct {v5, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-static {v4, v5}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$802(Lcom/sonyericsson/home/resourceload/ResourceLoader;Ljava/util/Set;)Ljava/util/Set;

    .line 530
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->this$1:Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

    iget-object v4, v4, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v4, v7}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$502(Lcom/sonyericsson/home/resourceload/ResourceLoader;Z)Z

    .line 532
    const/4 v3, 0x0

    .line 533
    .local v3, slowLoadingList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->val$root:Lcom/sonyericsson/storage/Root;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->val$root:Lcom/sonyericsson/storage/Root;

    const-string v5, "version"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/storage/Root;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 535
    const-class v4, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->val$root:Lcom/sonyericsson/storage/Root;

    const-class v5, Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Lcom/sonyericsson/storage/Root;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #slowLoadingList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    check-cast v3, Ljava/util/List;

    .line 539
    .restart local v3       #slowLoadingList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    :cond_0
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 541
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 542
    .local v1, item:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 543
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->this$1:Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

    iget-object v4, v4, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v4, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$2000(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    goto :goto_0

    .line 552
    .end local v1           #item:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 553
    .restart local v1       #item:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 554
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->this$1:Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

    iget-object v4, v4, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v4, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$2000(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    goto :goto_1

    .line 558
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 559
    .restart local v1       #item:Lcom/sonyericsson/home/data/ActivityInfo;
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->this$1:Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

    iget-object v4, v4, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v4, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$2000(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    goto :goto_2

    .line 562
    .end local v1           #item:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_5
    return-void
.end method
