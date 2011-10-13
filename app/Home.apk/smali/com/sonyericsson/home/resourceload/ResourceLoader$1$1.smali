.class Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

.field final synthetic val$items:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/resourceload/ResourceLoader$1;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->this$1:Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

    iput-object p2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->val$items:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadCompleted(Lcom/sonyericsson/storage/Root;)V
    .locals 8
    .parameter "root"

    .prologue
    const/4 v6, 0x1

    const-class v7, Ljava/util/ArrayList;

    .line 264
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->this$1:Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

    iget-object v3, v3, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1$1;

    invoke-direct {v5, p0}, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1$1;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;)V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-static {v3, v4}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$502(Lcom/sonyericsson/home/resourceload/ResourceLoader;Ljava/util/Set;)Ljava/util/Set;

    .line 274
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->this$1:Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

    iget-object v3, v3, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3, v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$402(Lcom/sonyericsson/home/resourceload/ResourceLoader;Z)Z

    .line 276
    const/4 v2, 0x0

    .line 277
    .local v2, priorityList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    if-eqz p1, :cond_0

    const-string v3, "version"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Lcom/sonyericsson/storage/Root;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 279
    const-class v3, Ljava/util/ArrayList;

    const-class v3, Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Lcom/sonyericsson/storage/Root;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #priorityList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    check-cast v2, Ljava/util/List;

    .line 283
    .restart local v2       #priorityList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    :cond_0
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 286
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 287
    .local v1, item:Lcom/sonyericsson/home/data/ActivityInfo;
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->val$items:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->this$1:Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

    iget-object v3, v3, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1200(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    goto :goto_0

    .line 291
    .end local v1           #item:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->val$items:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 292
    .restart local v1       #item:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 293
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->this$1:Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

    iget-object v3, v3, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1200(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    goto :goto_1

    .line 297
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->val$items:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 298
    .restart local v1       #item:Lcom/sonyericsson/home/data/ActivityInfo;
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->this$1:Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

    iget-object v3, v3, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1200(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    goto :goto_2

    .line 302
    .end local v1           #item:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_5
    return-void
.end method
