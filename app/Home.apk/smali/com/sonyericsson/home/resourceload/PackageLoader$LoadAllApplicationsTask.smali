.class Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;
.super Lcom/sonyericsson/util/Worker$Task;
.source "PackageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/resourceload/PackageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAllApplicationsTask"
.end annotation


# instance fields
.field private mTaskAllAppPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskUnavailableApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 248
    const-string v0, "load all applications"

    invoke-direct {p0, v0}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskAllAppPackages:Ljava/util/HashSet;

    .line 245
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskUnavailableApps:Ljava/util/HashSet;

    .line 249
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .prologue
    .line 253
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v4}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$100(Lcom/sonyericsson/home/resourceload/PackageLoader;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$000()Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskResolveInfos:Ljava/util/List;

    .line 254
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskResolveInfos:Ljava/util/List;

    if-nez v4, :cond_0

    .line 255
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskResolveInfos:Ljava/util/List;

    .line 258
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v4}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$100(Lcom/sonyericsson/home/resourceload/PackageLoader;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 260
    .local v0, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 261
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    new-instance v1, Ljava/io/File;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v1, apkFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 264
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskAllAppPackages:Ljava/util/HashSet;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :cond_2
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 268
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskUnavailableApps:Ljava/util/HashSet;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    .end local v1           #apkFile:Ljava/io/File;
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_3
    return-void
.end method

.method public postExecute()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 275
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v4}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$202(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 276
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskResolveInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 277
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$200(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v4, v2}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 280
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskAllAppPackages:Ljava/util/HashSet;

    invoke-static {v3, v4}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$302(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 281
    iput-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskAllAppPackages:Ljava/util/HashSet;

    .line 282
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$400(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskUnavailableApps:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 284
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$500(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 285
    .local v0, callback:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 287
    .end local v0           #callback:Ljava/lang/Runnable;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$500(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 288
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v3, v5}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$502(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 289
    return-void
.end method
