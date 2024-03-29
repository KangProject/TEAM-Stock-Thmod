.class public Lcom/sonyericsson/home/resourceload/PackageLoader;
.super Ljava/lang/Object;
.source "PackageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/resourceload/PackageLoader$RemovePackageTask;,
        Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;,
        Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;,
        Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;,
        Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    }
.end annotation


# static fields
.field private static final LAUNCHER_INTENT:Landroid/content/Intent;


# instance fields
.field private mAllActivities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLoadCompletedCallbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnPackageUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnavailableApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorker:Lcom/sonyericsson/util/Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/sonyericsson/home/resourceload/PackageLoader;->LAUNCHER_INTENT:Landroid/content/Intent;

    .line 82
    sget-object v0, Lcom/sonyericsson/home/resourceload/PackageLoader;->LAUNCHER_INTENT:Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    sget-object v0, Lcom/sonyericsson/home/resourceload/PackageLoader;->LAUNCHER_INTENT:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnPackageUpdateListeners:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mUnavailableApps:Ljava/util/HashSet;

    .line 102
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnLoadCompletedCallbacks:Ljava/util/LinkedList;

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mPendingPackages:Ljava/util/HashSet;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 120
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sonyericsson/util/Worker;->obtain(I)Lcom/sonyericsson/util/Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    new-instance v1, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;-><init>(Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 122
    return-void
.end method

.method static synthetic access$000()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sonyericsson/home/resourceload/PackageLoader;->LAUNCHER_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/resourceload/PackageLoader;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllActivities:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllActivities:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllPackages:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mUnavailableApps:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnLoadCompletedCallbacks:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnLoadCompletedCallbacks:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mPendingPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnPackageUpdateListeners:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addOnLoadCompletedCallback(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllActivities:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnLoadCompletedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnPackageUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public addPendingPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mPendingPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 504
    return-void
.end method

.method public getActivityInfoSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllActivities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 210
    .local v3, itemSubSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllActivities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 212
    .local v2, itemSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 213
    .local v1, item:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    .end local v1           #item:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_1
    return-object v3
.end method

.method public getPackageSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method public getPendingPackageSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mPendingPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method getResolveInfo(Lcom/sonyericsson/home/data/ActivityInfo;)Landroid/content/pm/ResolveInfo;
    .locals 1
    .parameter "item"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllActivities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public getUnavailablePackageSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mUnavailableApps:Ljava/util/HashSet;

    return-object v0
.end method

.method public isActivityInstalled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "name"
    .parameter "packageName"

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 488
    .local v1, info:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 489
    const/4 v2, 0x1

    .line 492
    .end local v1           #info:Lcom/sonyericsson/home/data/ActivityInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLoadCompleted()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllActivities:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUninstallable(Lcom/sonyericsson/home/data/ActivityInfo;)Z
    .locals 5
    .parameter "activityInfo"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 143
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 144
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    move v1, v4

    .line 149
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 144
    goto :goto_0

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mUnavailableApps:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/ActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    .line 146
    goto :goto_0

    :cond_2
    move v1, v3

    .line 149
    goto :goto_0
.end method

.method public packageAdded(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    new-instance v1, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;-><init>(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 336
    return-void
.end method

.method public packageChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    new-instance v1, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;-><init>(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 398
    return-void
.end method

.method public packageRemoved(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    new-instance v1, Lcom/sonyericsson/home/resourceload/PackageLoader$RemovePackageTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader$RemovePackageTask;-><init>(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 445
    return-void
.end method

.method public packagesAvailable([Ljava/lang/String;)V
    .locals 6
    .parameter "packageList"

    .prologue
    .line 448
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 449
    .local v4, packageName:Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mUnavailableApps:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 450
    invoke-virtual {p0, v4}, Lcom/sonyericsson/home/resourceload/PackageLoader;->packageChanged(Ljava/lang/String;)V

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    .end local v4           #packageName:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnPackageUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 454
    .local v3, listener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    invoke-interface {v3, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;->onPackagesAvailable([Ljava/lang/String;)V

    goto :goto_1

    .line 456
    .end local v3           #listener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    :cond_1
    return-void
.end method

.method public packagesUnavailable([Ljava/lang/String;)V
    .locals 6
    .parameter "packageList"

    .prologue
    .line 459
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 460
    .local v4, packageName:Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mUnavailableApps:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    .end local v4           #packageName:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnPackageUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 464
    .local v3, listener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    invoke-interface {v3, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;->onPackagesUnavailable([Ljava/lang/String;)V

    goto :goto_1

    .line 466
    .end local v3           #listener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    :cond_1
    return-void
.end method

.method public removeOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnPackageUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method
