.class public Lcom/sonyericsson/home/resourceload/PackageLoader;
.super Ljava/lang/Object;
.source "PackageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/resourceload/PackageLoader$RemoveStkPackageTask;,
        Lcom/sonyericsson/home/resourceload/PackageLoader$RemovePackageTask;,
        Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;,
        Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;,
        Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;,
        Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    }
.end annotation


# static fields
.field private static final LAUNCHER_INTENT:Landroid/content/Intent; = null

.field private static final STK_PACKAGE_NAME:Ljava/lang/String; = "com.android.stk"


# instance fields
.field private mAllApps:Ljava/util/HashMap;
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

.field private mStkApplicationMonitor:Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;

.field private final mWorker:Lcom/sonyericsson/util/Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/sonyericsson/home/resourceload/PackageLoader;->LAUNCHER_INTENT:Landroid/content/Intent;

    .line 80
    sget-object v0, Lcom/sonyericsson/home/resourceload/PackageLoader;->LAUNCHER_INTENT:Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    sget-object v0, Lcom/sonyericsson/home/resourceload/PackageLoader;->LAUNCHER_INTENT:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnPackageUpdateListeners:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnLoadCompletedCallbacks:Ljava/util/LinkedList;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 119
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sonyericsson/util/Worker;->obtain(I)Lcom/sonyericsson/util/Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    new-instance v1, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;-><init>(Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 121
    return-void
.end method

.method static synthetic access$000()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sonyericsson/home/resourceload/PackageLoader;->LAUNCHER_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/resourceload/PackageLoader;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllPackages:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllApps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllApps:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/resourceload/PackageLoader;)Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mStkApplicationMonitor:Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;)Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mStkApplicationMonitor:Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnLoadCompletedCallbacks:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnLoadCompletedCallbacks:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnPackageUpdateListeners:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addOnLoadCompletedCallback(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllApps:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnLoadCompletedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnPackageUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
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
    .line 152
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllApps:Ljava/util/HashMap;

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
    .line 171
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 172
    .local v3, itemSubSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllApps:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 174
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

    .line 175
    .local v1, item:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
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
    .line 161
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method getResolveInfo(Lcom/sonyericsson/home/data/ActivityInfo;)Landroid/content/pm/ResolveInfo;
    .locals 1
    .parameter "item"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllApps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public isActivityInstalled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "name"
    .parameter "packageName"

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet()Ljava/util/Set;

    move-result-object v0

    .line 480
    .local v0, activityInfo:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 481
    .local v2, info:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-virtual {v2}, Lcom/sonyericsson/home/data/ActivityInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sonyericsson/home/data/ActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    const/4 v3, 0x1

    .line 485
    .end local v2           #info:Lcom/sonyericsson/home/data/ActivityInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isLoadCompleted()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mAllApps:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public packageAdded(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    new-instance v1, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader$AddPackageTask;-><init>(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 302
    const-string v0, "com.android.stk"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mStkApplicationMonitor:Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mStkApplicationMonitor:Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;

    invoke-virtual {v0}, Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;->finish()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mStkApplicationMonitor:Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;

    .line 306
    :cond_0
    return-void
.end method

.method public packageChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    new-instance v1, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader$PackageChangeTask;-><init>(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 369
    return-void
.end method

.method public packageRemoved(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    new-instance v1, Lcom/sonyericsson/home/resourceload/PackageLoader$RemovePackageTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader$RemovePackageTask;-><init>(Lcom/sonyericsson/home/resourceload/PackageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 416
    return-void
.end method

.method public removeOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mOnPackageUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method protected stkPackageRemoved()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    new-instance v1, Lcom/sonyericsson/home/resourceload/PackageLoader$RemoveStkPackageTask;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/resourceload/PackageLoader$RemoveStkPackageTask;-><init>(Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 456
    return-void
.end method
