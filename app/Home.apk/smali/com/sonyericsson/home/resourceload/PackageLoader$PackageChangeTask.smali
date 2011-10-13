.class Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;
.super Lcom/sonyericsson/util/Worker$Task;
.source "PackageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/resourceload/PackageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageChangeTask"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "packageName"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 346
    const-string v0, "package changed"

    invoke-direct {p0, v0}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    .line 347
    iput-object p2, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;->mPackageName:Ljava/lang/String;

    .line 348
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 353
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$000()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 354
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$100(Lcom/sonyericsson/home/resourceload/PackageLoader;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;->mResolveInfos:Ljava/util/List;

    .line 355
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;->mResolveInfos:Ljava/util/List;

    if-nez v1, :cond_0

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;->mResolveInfos:Ljava/util/List;

    .line 358
    :cond_0
    return-void
.end method

.method public postExecute()V
    .locals 8

    .prologue
    .line 362
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v3, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$200(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 365
    .local v0, allAppItems:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 366
    .local v2, item:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-virtual {v2}, Lcom/sonyericsson/home/data/ActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 371
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;->mResolveInfos:Ljava/util/List;

    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v7}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$200(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 372
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    .end local v2           #item:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 378
    .restart local v2       #item:Lcom/sonyericsson/home/data/ActivityInfo;
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$200(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 381
    .end local v2           #item:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_2
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;->mResolveInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 382
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$200(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashMap;

    move-result-object v6

    new-instance v7, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v7, v5}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 385
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$700(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 386
    .local v4, listener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;->onPackageChanged(Ljava/lang/String;)V

    goto :goto_3

    .line 388
    .end local v4           #listener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    :cond_4
    return-void
.end method
