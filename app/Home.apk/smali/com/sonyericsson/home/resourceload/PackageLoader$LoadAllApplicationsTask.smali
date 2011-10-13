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
.field private mTaskAllPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
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

.field final synthetic this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 207
    const-string v0, "load all applications"

    invoke-direct {p0, v0}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    .line 208
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v0}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$100(Lcom/sonyericsson/home/resourceload/PackageLoader;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$000()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskResolveInfos:Ljava/util/List;

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskResolveInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskResolveInfos:Ljava/util/List;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v0}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$100(Lcom/sonyericsson/home/resourceload/PackageLoader;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskAllPackages:Ljava/util/List;

    .line 217
    return-void
.end method

.method public postExecute()V
    .locals 8

    .prologue
    .line 221
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-static {v5, v6}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$202(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 222
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v5, v6}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$302(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 223
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskResolveInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 224
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v5}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$300(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashMap;

    move-result-object v5

    new-instance v6, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v6, v4}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 229
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    const/4 v2, 0x0

    .line 230
    .local v2, isStkPackageFound:Z
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->mTaskAllPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 231
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v5}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$200(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashSet;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    if-nez v2, :cond_1

    .line 234
    const-string v5, "com.android.stk"

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 238
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_2
    if-nez v2, :cond_3

    .line 239
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    new-instance v6, Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;

    new-instance v7, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask$1;

    invoke-direct {v7, p0}, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask$1;-><init>(Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;)V

    invoke-direct {v6, v7}, Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;-><init>(Lcom/sonyericsson/home/resourceload/StkApplicationMonitor$OnStkApplicationPackageListener;)V

    invoke-static {v5, v6}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$402(Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;)Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;

    .line 247
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v5}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$400(Lcom/sonyericsson/home/resourceload/PackageLoader;)Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;->start()V

    .line 250
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v5}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$500(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 251
    .local v0, callback:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 253
    .end local v0           #callback:Ljava/lang/Runnable;
    :cond_4
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v5}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$500(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V

    .line 254
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$502(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 255
    return-void
.end method
