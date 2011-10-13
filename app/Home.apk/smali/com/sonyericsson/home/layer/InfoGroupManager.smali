.class public Lcom/sonyericsson/home/layer/InfoGroupManager;
.super Ljava/lang/Object;
.source "InfoGroupManager.java"

# interfaces
.implements Lcom/sonyericsson/home/data/InfoGroupInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;,
        Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    }
.end annotation


# static fields
.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "infogroups"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfoGroupListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;

.field private mInfoLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;>;"
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

.field private final mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 3
    .parameter "context"
    .parameter "packageLoader"

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoGroupListeners:Ljava/util/LinkedList;

    .line 78
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mOnLoadCompletedCallbacks:Ljava/util/LinkedList;

    .line 81
    new-instance v0, Lcom/sonyericsson/home/layer/InfoGroupManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/InfoGroupManager$1;-><init>(Lcom/sonyericsson/home/layer/InfoGroupManager;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mContext:Landroid/content/Context;

    const-string v1, "infogroups"

    new-instance v2, Lcom/sonyericsson/home/layer/InfoGroupManager$2;

    invoke-direct {v2, p0, p2}, Lcom/sonyericsson/home/layer/InfoGroupManager$2;-><init>(Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)V

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/InfoGroupManager;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/layer/InfoGroupManager;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/InfoGroupManager;)Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/InfoGroupManager;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/InfoGroupManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->writeToStorage()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/InfoGroupManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->notifyContentChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/InfoGroupManager;)Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mOnPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/InfoGroupManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mOnLoadCompletedCallbacks:Ljava/util/LinkedList;

    return-object v0
.end method

.method private getOrCreateInfoList(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 2
    .parameter "uuidString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 206
    .local v0, infoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #infoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 208
    .restart local v0       #infoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    iget-object v1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_0
    return-object v0
.end method

.method private notifyContentChanged()V
    .locals 3

    .prologue
    .line 350
    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoGroupListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    .line 351
    .local v1, listener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    invoke-interface {v1}, Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;->onContentChanged()V

    goto :goto_0

    .line 353
    .end local v1           #listener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    :cond_0
    return-void
.end method

.method private writeToStorage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 369
    new-instance v0, Lcom/sonyericsson/storage/Root;

    const-string v1, "infogroups"

    invoke-direct {v0, v1}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, root:Lcom/sonyericsson/storage/Root;
    const-string v1, "version"

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 371
    iget-object v1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 372
    iget-object v1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V

    .line 373
    return-void
.end method


# virtual methods
.method public add(Lcom/sonyericsson/home/data/InfoGroup;ILcom/sonyericsson/home/data/Info;)V
    .locals 3
    .parameter "infoGroup"
    .parameter "location"
    .parameter "info"

    .prologue
    .line 255
    iget-object v1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 256
    const-string v1, "InfoGroupManager"

    const-string v2, "add() called before InfoGroupManager initialized."

    invoke-static {v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getOrCreateInfoList(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 262
    .local v0, infoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-virtual {v0, p2, p3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 264
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->writeToStorage()V

    .line 265
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->notifyContentChanged()V

    goto :goto_0
.end method

.method public addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V
    .locals 3
    .parameter "infoGroup"
    .parameter "info"

    .prologue
    .line 275
    iget-object v1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 276
    const-string v1, "InfoGroupManager"

    const-string v2, "addLast() called before InfoGroupManager initialized."

    invoke-static {v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getOrCreateInfoList(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 282
    .local v0, infoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 284
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->writeToStorage()V

    .line 285
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->notifyContentChanged()V

    goto :goto_0
.end method

.method public bind(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 0
    .parameter "resourceLoader"

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->cacheShortcuts(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 395
    return-void
.end method

.method public cacheShortcuts(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 1
    .parameter "resourceLoader"

    .prologue
    .line 384
    new-instance v0, Lcom/sonyericsson/home/layer/InfoGroupManager$3;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/layer/InfoGroupManager$3;-><init>(Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->registerOnLoadCompletedCallback(Ljava/lang/Runnable;)V

    .line 391
    return-void
.end method

.method public getInfo(Lcom/sonyericsson/home/data/InfoGroup;I)Lcom/sonyericsson/home/data/Info;
    .locals 2
    .parameter "infoGroup"
    .parameter "location"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 239
    const-string v0, "InfoGroupManager"

    const-string v1, "getInfo() called before InfoGroupManager initialized."

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x0

    .line 244
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/home/data/Info;

    move-object v0, p0

    goto :goto_0
.end method

.method public getInfoCount(Lcom/sonyericsson/home/data/InfoGroup;)I
    .locals 4
    .parameter "infoGroup"

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-object v1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 221
    const-string v1, "InfoGroupManager"

    const-string v2, "getInfoCount() called before InfoGroupManager initialized."

    invoke-static {v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 227
    :goto_0
    return v1

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 227
    .local v0, infoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    if-nez v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public isLoadCompleted()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyAppearanceChanged()V
    .locals 3

    .prologue
    .line 363
    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoGroupListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    .line 364
    .local v1, listener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    invoke-interface {v1}, Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;->onAppearanceChanged()V

    goto :goto_0

    .line 366
    .end local v1           #listener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;
    :cond_0
    return-void
.end method

.method public registerInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V
    .locals 1
    .parameter "infoGroupListener"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoGroupListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 325
    return-void
.end method

.method public registerOnLoadCompletedCallback(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->isLoadCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mOnLoadCompletedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public remove(Lcom/sonyericsson/home/data/InfoGroup;I)Lcom/sonyericsson/home/data/Info;
    .locals 4
    .parameter "infoGroup"
    .parameter "location"

    .prologue
    .line 296
    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 297
    const-string v2, "InfoGroupManager"

    const-string v3, "remove() called before InfoGroupManager initialized."

    invoke-static {v2, v3}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v2, 0x0

    .line 314
    :goto_0
    return-object v2

    .line 302
    :cond_0
    const/4 v1, 0x0

    .line 304
    .local v1, removedInfo:Lcom/sonyericsson/home/data/Info;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoLists:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 305
    .local v0, infoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/home/data/Info;>;"
    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #removedInfo:Lcom/sonyericsson/home/data/Info;
    check-cast v1, Lcom/sonyericsson/home/data/Info;

    .line 309
    .restart local v1       #removedInfo:Lcom/sonyericsson/home/data/Info;
    :cond_1
    if-eqz v1, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->writeToStorage()V

    .line 311
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->notifyContentChanged()V

    :cond_2
    move-object v2, v1

    .line 314
    goto :goto_0
.end method

.method public setInfoListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoListener:Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;

    .line 344
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoGroupListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 399
    return-void
.end method

.method public unregisterInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V
    .locals 1
    .parameter "infoGroupListener"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonyericsson/home/layer/InfoGroupManager;->mInfoGroupListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 335
    return-void
.end method
