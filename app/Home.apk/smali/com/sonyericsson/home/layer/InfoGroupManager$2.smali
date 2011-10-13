.class Lcom/sonyericsson/home/layer/InfoGroupManager$2;
.super Ljava/lang/Object;
.source "InfoGroupManager.java"

# interfaces
.implements Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/InfoGroupManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field final synthetic val$packageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->val$packageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadCompleted(Lcom/sonyericsson/storage/Root;)V
    .locals 6
    .parameter "root"

    .prologue
    const-class v5, Ljava/util/HashMap;

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 162
    .local v0, changedInfoGroups:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 163
    iget-object v3, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$002(Lcom/sonyericsson/home/layer/InfoGroupManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 172
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->val$packageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$500(Lcom/sonyericsson/home/layer/InfoGroupManager;)Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 175
    iget-object v3, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$600(Lcom/sonyericsson/home/layer/InfoGroupManager;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 176
    .local v2, r:Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 164
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Ljava/lang/Runnable;
    :cond_0
    const-string v3, "version"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Lcom/sonyericsson/storage/Root;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 165
    iget-object v3, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$002(Lcom/sonyericsson/home/layer/InfoGroupManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_0

    .line 167
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    const-class v3, Ljava/util/HashMap;

    const-class v3, Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Lcom/sonyericsson/storage/Root;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v4, v3}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$002(Lcom/sonyericsson/home/layer/InfoGroupManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_0

    .line 178
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$600(Lcom/sonyericsson/home/layer/InfoGroupManager;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 180
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 181
    iget-object v3, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$300(Lcom/sonyericsson/home/layer/InfoGroupManager;)V

    .line 182
    iget-object v3, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$400(Lcom/sonyericsson/home/layer/InfoGroupManager;)V

    .line 184
    :cond_3
    return-void
.end method
