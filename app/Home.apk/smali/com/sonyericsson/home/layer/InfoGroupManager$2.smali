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
    .line 178
    iput-object p1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->val$packageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadCompleted(Lcom/sonyericsson/storage/Root;)V
    .locals 5
    .parameter "root"

    .prologue
    const-class v4, Ljava/util/HashMap;

    .line 180
    if-nez p1, :cond_0

    .line 181
    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$002(Lcom/sonyericsson/home/layer/InfoGroupManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 190
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->val$packageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$500(Lcom/sonyericsson/home/layer/InfoGroupManager;)Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 193
    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$600(Lcom/sonyericsson/home/layer/InfoGroupManager;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 194
    .local v1, r:Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 182
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Ljava/lang/Runnable;
    :cond_0
    const-string v2, "version"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/storage/Root;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 183
    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$002(Lcom/sonyericsson/home/layer/InfoGroupManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_0

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    const-class v2, Ljava/util/HashMap;

    const-class v2, Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Lcom/sonyericsson/storage/Root;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v3, v2}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$002(Lcom/sonyericsson/home/layer/InfoGroupManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_0

    .line 196
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager$2;->this$0:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/InfoGroupManager;->access$600(Lcom/sonyericsson/home/layer/InfoGroupManager;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 197
    return-void
.end method
