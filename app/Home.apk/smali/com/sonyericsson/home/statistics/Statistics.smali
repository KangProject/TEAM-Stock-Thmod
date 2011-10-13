.class public Lcom/sonyericsson/home/statistics/Statistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# static fields
.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "statistics"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1


# instance fields
.field mActivityStats:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/home/statistics/ActivityStats;",
            ">;"
        }
    .end annotation
.end field

.field private mAddDuringSyncIsInstall:Z

.field private mContext:Landroid/content/Context;

.field private mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mReadHandle:Ljava/lang/Object;

.field private mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 3
    .parameter "context"
    .parameter "packageLoader"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics;->mActivityStats:Ljava/util/LinkedList;

    .line 59
    invoke-direct {p0}, Lcom/sonyericsson/home/statistics/Statistics;->createSyncable()Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    .line 62
    invoke-direct {p0}, Lcom/sonyericsson/home/statistics/Statistics;->createOnPackageUpdateListener()Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 79
    iput-object p1, p0, Lcom/sonyericsson/home/statistics/Statistics;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/sonyericsson/home/statistics/Statistics;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v1, p0, Lcom/sonyericsson/home/statistics/Statistics;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics;->mContext:Landroid/content/Context;

    const-string v1, "statistics"

    new-instance v2, Lcom/sonyericsson/home/statistics/Statistics$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/statistics/Statistics$1;-><init>(Lcom/sonyericsson/home/statistics/Statistics;)V

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics;->mReadHandle:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/statistics/Statistics;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sonyericsson/home/statistics/Statistics;->mReadHandle:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/statistics/Statistics;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics;->mSyncable:Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/statistics/Statistics;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/home/statistics/Statistics;->getAllInfos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/statistics/Statistics;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/statistics/Statistics;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/home/statistics/Statistics;->writeToStorage()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/statistics/Statistics;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sonyericsson/home/statistics/Statistics;->mAddDuringSyncIsInstall:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/home/statistics/Statistics;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sonyericsson/home/statistics/Statistics;->mAddDuringSyncIsInstall:Z

    return p1
.end method

.method private createOnPackageUpdateListener()Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    .locals 1

    .prologue
    .line 236
    new-instance v0, Lcom/sonyericsson/home/statistics/Statistics$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/statistics/Statistics$3;-><init>(Lcom/sonyericsson/home/statistics/Statistics;)V

    return-object v0
.end method

.method private createSyncable()Lcom/sonyericsson/home/data/SyncHelper$Syncable;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/sonyericsson/home/statistics/Statistics$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/statistics/Statistics$2;-><init>(Lcom/sonyericsson/home/statistics/Statistics;)V

    return-object v0
.end method

.method private getAllInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/home/statistics/Statistics;->mActivityStats:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    iget-object v3, p0, Lcom/sonyericsson/home/statistics/Statistics;->mActivityStats:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/statistics/ActivityStats;

    .line 223
    .local v2, stats:Lcom/sonyericsson/home/statistics/ActivityStats;
    invoke-virtual {v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->getInfo()Lcom/sonyericsson/home/data/ActivityInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    invoke-virtual {v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->getInfo()Lcom/sonyericsson/home/data/ActivityInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    .end local v2           #stats:Lcom/sonyericsson/home/statistics/ActivityStats;
    :cond_1
    return-object v1
.end method

.method private writeToStorage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 273
    new-instance v0, Lcom/sonyericsson/storage/Root;

    const-string v1, "statistics"

    invoke-direct {v0, v1}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, root:Lcom/sonyericsson/storage/Root;
    const-string v1, "version"

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 275
    iget-object v1, p0, Lcom/sonyericsson/home/statistics/Statistics;->mActivityStats:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/statistics/Statistics;->mActivityStats:Ljava/util/LinkedList;

    invoke-static {v2}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 276
    iget-object v1, p0, Lcom/sonyericsson/home/statistics/Statistics;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V

    .line 277
    return-void
.end method


# virtual methods
.method public getStats(Lcom/sonyericsson/home/data/ActivityInfo;)Lcom/sonyericsson/home/statistics/ActivityStats;
    .locals 3
    .parameter "info"

    .prologue
    .line 153
    iget-object v2, p0, Lcom/sonyericsson/home/statistics/Statistics;->mActivityStats:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    .line 154
    const/4 v2, 0x0

    .line 168
    :goto_0
    return-object v2

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/statistics/Statistics;->mActivityStats:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/statistics/ActivityStats;

    .line 158
    .local v1, stats:Lcom/sonyericsson/home/statistics/ActivityStats;
    invoke-virtual {v1}, Lcom/sonyericsson/home/statistics/ActivityStats;->getInfo()Lcom/sonyericsson/home/data/ActivityInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/data/ActivityInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 159
    goto :goto_0

    .line 164
    .end local v1           #stats:Lcom/sonyericsson/home/statistics/ActivityStats;
    :cond_2
    new-instance v1, Lcom/sonyericsson/home/statistics/ActivityStats;

    invoke-direct {v1, p1}, Lcom/sonyericsson/home/statistics/ActivityStats;-><init>(Lcom/sonyericsson/home/data/ActivityInfo;)V

    .line 165
    .restart local v1       #stats:Lcom/sonyericsson/home/statistics/ActivityStats;
    iget-object v2, p0, Lcom/sonyericsson/home/statistics/Statistics;->mActivityStats:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-direct {p0}, Lcom/sonyericsson/home/statistics/Statistics;->writeToStorage()V

    move-object v2, v1

    .line 168
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v1, p0, Lcom/sonyericsson/home/statistics/Statistics;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->removeOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics;->mReadHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics;->mReadHandle:Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/storage/Storage;->cancelReadRoot(Ljava/lang/Object;)V

    .line 180
    :cond_0
    return-void
.end method

.method public registerAcitvityStart(Lcom/sonyericsson/home/data/ActivityInfo;I)V
    .locals 5
    .parameter "info"
    .parameter "source"

    .prologue
    .line 121
    iget-object v3, p0, Lcom/sonyericsson/home/statistics/Statistics;->mActivityStats:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 144
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 128
    .local v0, found:Z
    iget-object v3, p0, Lcom/sonyericsson/home/statistics/Statistics;->mActivityStats:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/statistics/ActivityStats;

    .line 129
    .local v2, stats:Lcom/sonyericsson/home/statistics/ActivityStats;
    invoke-virtual {v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->getInfo()Lcom/sonyericsson/home/data/ActivityInfo;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonyericsson/home/data/ActivityInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, p2, v3, v4}, Lcom/sonyericsson/home/statistics/ActivityStats;->registerStart(IJ)V

    .line 131
    const/4 v0, 0x1

    goto :goto_1

    .line 136
    .end local v2           #stats:Lcom/sonyericsson/home/statistics/ActivityStats;
    :cond_2
    if-nez v0, :cond_3

    .line 137
    new-instance v2, Lcom/sonyericsson/home/statistics/ActivityStats;

    invoke-direct {v2, p1}, Lcom/sonyericsson/home/statistics/ActivityStats;-><init>(Lcom/sonyericsson/home/data/ActivityInfo;)V

    .line 138
    .restart local v2       #stats:Lcom/sonyericsson/home/statistics/ActivityStats;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, p2, v3, v4}, Lcom/sonyericsson/home/statistics/ActivityStats;->registerStart(IJ)V

    .line 139
    iget-object v3, p0, Lcom/sonyericsson/home/statistics/Statistics;->mActivityStats:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v2           #stats:Lcom/sonyericsson/home/statistics/ActivityStats;
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/home/statistics/Statistics;->writeToStorage()V

    goto :goto_0
.end method
