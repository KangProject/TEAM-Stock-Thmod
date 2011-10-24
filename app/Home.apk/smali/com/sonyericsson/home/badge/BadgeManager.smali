.class public Lcom/sonyericsson/home/badge/BadgeManager;
.super Ljava/lang/Object;
.source "BadgeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/badge/BadgeManager$BadgeManagerListener;,
        Lcom/sonyericsson/home/badge/BadgeManager$State;
    }
.end annotation


# static fields
.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "badgeIntents"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1


# instance fields
.field private mBadgeManagerListener:Lcom/sonyericsson/home/badge/BadgeManager$BadgeManagerListener;

.field private mBadgeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mOnStartCompletedCallbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

.field private mState:Lcom/sonyericsson/home/badge/BadgeManager$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/sonyericsson/home/badge/BadgeManager$State;->UNINITIALIZED:Lcom/sonyericsson/home/badge/BadgeManager$State;

    iput-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mState:Lcom/sonyericsson/home/badge/BadgeManager$State;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeMap:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mOnStartCompletedCallbacks:Ljava/util/LinkedList;

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mContext:Landroid/content/Context;

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mContext:Landroid/content/Context;

    const-string v1, "badgeIntents"

    new-instance v2, Lcom/sonyericsson/home/badge/BadgeManager$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/badge/BadgeManager$1;-><init>(Lcom/sonyericsson/home/badge/BadgeManager;)V

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/badge/BadgeManager;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/badge/BadgeManager;)Lcom/sonyericsson/home/badge/BadgeManager$BadgeManagerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeManagerListener:Lcom/sonyericsson/home/badge/BadgeManager$BadgeManagerListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/badge/BadgeManager;)Lcom/sonyericsson/home/resourceload/ResourceLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/badge/BadgeManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/home/badge/BadgeManager;->restoreBadges()V

    return-void
.end method

.method static synthetic access$402(Lcom/sonyericsson/home/badge/BadgeManager;Lcom/sonyericsson/home/badge/BadgeManager$State;)Lcom/sonyericsson/home/badge/BadgeManager$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mState:Lcom/sonyericsson/home/badge/BadgeManager$State;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/badge/BadgeManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mOnStartCompletedCallbacks:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/home/badge/BadgeManager;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mOnStartCompletedCallbacks:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/badge/BadgeManager;Ljava/lang/String;Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/home/badge/BadgeManager;->updateBadge(Ljava/lang/String;Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;)V

    return-void
.end method

.method private onReceive(Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;)V
    .locals 3
    .parameter "info"
    .parameter "message"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeManagerListener:Lcom/sonyericsson/home/badge/BadgeManager$BadgeManagerListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v0

    .line 171
    .local v0, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v0, :cond_1

    .line 172
    invoke-direct {p0, p2, p1, v0}, Lcom/sonyericsson/home/badge/BadgeManager;->updateBadge(Ljava/lang/String;Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;)V

    .line 187
    .end local v0           #cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    :cond_0
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/home/badge/BadgeManager;->updateStorage(Ljava/lang/String;Lcom/sonyericsson/home/data/ActivityInfo;)V

    .line 189
    return-void

    .line 174
    .restart local v0       #cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    new-instance v2, Lcom/sonyericsson/home/badge/BadgeManager$2;

    invoke-direct {v2, p0, p2}, Lcom/sonyericsson/home/badge/BadgeManager$2;-><init>(Lcom/sonyericsson/home/badge/BadgeManager;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V

    goto :goto_0
.end method

.method private restoreBadges()V
    .locals 4

    .prologue
    .line 86
    iget-object v2, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 88
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 90
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/home/badge/BadgeManager;->onReceive(Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private updateBadge(Ljava/lang/String;Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;)V
    .locals 1
    .parameter "message"
    .parameter "item"
    .parameter "cacheValue"

    .prologue
    .line 205
    iput-object p1, p3, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeManagerListener:Lcom/sonyericsson/home/badge/BadgeManager$BadgeManagerListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeManagerListener:Lcom/sonyericsson/home/badge/BadgeManager$BadgeManagerListener;

    invoke-interface {v0, p2}, Lcom/sonyericsson/home/badge/BadgeManager$BadgeManagerListener;->onBroadcastReceived(Lcom/sonyericsson/home/data/Info;)V

    .line 210
    :cond_0
    return-void
.end method

.method private updateStorage(Ljava/lang/String;Lcom/sonyericsson/home/data/ActivityInfo;)V
    .locals 4
    .parameter "badgeMessage"
    .parameter "info"

    .prologue
    const/4 v3, 0x1

    .line 192
    if-eqz p1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :goto_0
    new-instance v0, Lcom/sonyericsson/storage/Root;

    const-string v1, "badgeIntents"

    invoke-direct {v0, v1}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, root:Lcom/sonyericsson/storage/Root;
    const-string v1, "version"

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 200
    const-class v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeMap:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 201
    iget-object v1, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V

    .line 202
    return-void

    .line 195
    .end local v0           #root:Lcom/sonyericsson/storage/Root;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addOnStartCompletedCallback(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mState:Lcom/sonyericsson/home/badge/BadgeManager$State;

    sget-object v1, Lcom/sonyericsson/home/badge/BadgeManager$State;->INITIALIZED:Lcom/sonyericsson/home/badge/BadgeManager$State;

    if-ne v0, v1, :cond_0

    .line 103
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mOnStartCompletedCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getBadgeMessage(Lcom/sonyericsson/home/data/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .parameter "info"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 149
    if-eqz p1, :cond_1

    .line 150
    const-string v5, "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, activityName:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 154
    new-instance v1, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v1, v3, v0}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .local v1, item:Lcom/sonyericsson/home/data/ActivityInfo;
    const-string v5, "com.sonyericsson.home.intent.extra.badge.MESSAGE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, message:Ljava/lang/String;
    const-string v5, "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 158
    .local v4, showMessage:Z
    if-nez v4, :cond_0

    .line 159
    const/4 v2, 0x0

    .line 162
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/home/badge/BadgeManager;->onReceive(Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;)V

    .line 165
    .end local v0           #activityName:Ljava/lang/String;
    .end local v1           #item:Lcom/sonyericsson/home/data/ActivityInfo;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #showMessage:Z
    :cond_1
    return-void
.end method

.method public setBadgeManagerListener(Lcom/sonyericsson/home/badge/BadgeManager$BadgeManagerListener;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 2
    .parameter "listener"
    .parameter "resourceLoader"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeManagerListener:Lcom/sonyericsson/home/badge/BadgeManager$BadgeManagerListener;

    .line 77
    iput-object p2, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mBadgeManagerListener:Lcom/sonyericsson/home/badge/BadgeManager$BadgeManagerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/home/badge/BadgeManager;->mState:Lcom/sonyericsson/home/badge/BadgeManager$State;

    sget-object v1, Lcom/sonyericsson/home/badge/BadgeManager$State;->INITIALIZED:Lcom/sonyericsson/home/badge/BadgeManager$State;

    if-ne v0, v1, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/sonyericsson/home/badge/BadgeManager;->restoreBadges()V

    .line 83
    :cond_0
    return-void
.end method
