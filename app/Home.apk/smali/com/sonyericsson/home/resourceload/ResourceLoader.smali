.class public Lcom/sonyericsson/home/resourceload/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;,
        Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;,
        Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;,
        Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResourceLoader"

.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "activitypriority"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1


# instance fields
.field private isTaskExecuting:Z

.field private final mCacheCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            "Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconHeight:I

.field private mIconWidth:I

.field private final mInfoQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTimingEnabled:Z

.field private mLoadingTimings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

.field private final mWorker:Lcom/sonyericsson/util/Worker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 2
    .parameter "context"
    .parameter "packageLoader"

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheCallbacks:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    .line 247
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    .line 248
    iput-object p2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 249
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/sonyericsson/util/Worker;->obtain(I)Lcom/sonyericsson/util/Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconWidth:I

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconHeight:I

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    new-instance v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnLoadCompletedCallback(Ljava/lang/Runnable;)V

    .line 307
    new-instance v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 354
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 355
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->onLoadTaskFinished()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/util/Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->loadResource(Lcom/sonyericsson/home/data/Info;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/resourceload/ResourceLoader;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->createIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIsTimingEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/home/resourceload/ResourceLoader;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIsTimingEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mLoadingTimings:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/home/resourceload/ResourceLoader;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mLoadingTimings:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sonyericsson/home/resourceload/ResourceLoader;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->isTaskExecuting:Z

    return p1
.end method

.method private static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmap"
    .parameter "context"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    if-nez v3, :cond_0

    .line 507
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 510
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 511
    .local v2, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 513
    .local v1, sourceHeight:I
    if-gt v2, p2, :cond_1

    if-le v1, p3, :cond_3

    .line 515
    :cond_1
    int-to-float v3, v2

    int-to-float v4, v1

    div-float v0, v3, v4

    .line 516
    .local v0, ratio:F
    if-le v2, v1, :cond_4

    .line 517
    int-to-float v3, p2

    div-float/2addr v3, v0

    float-to-int p3, v3

    .line 526
    :cond_2
    :goto_0
    const/4 v3, 0x1

    invoke-static {p0, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 528
    .end local v0           #ratio:F
    :cond_3
    return-object p0

    .line 518
    .restart local v0       #ratio:F
    :cond_4
    if-le v1, v2, :cond_2

    .line 519
    int-to-float v3, p3

    mul-float/2addr v3, v0

    float-to-int p2, v3

    goto :goto_0
.end method

.method private createIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "drawable"

    .prologue
    .line 532
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 533
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 534
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 535
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconWidth:I

    iget v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconHeight:I

    invoke-static {v1, v4, v5, v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 536
    .local v3, iconBitmap:Landroid/graphics/Bitmap;
    new-instance v4, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    invoke-direct {v4, v3}, Lcom/sonyericsson/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 538
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #iconBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v4

    :cond_0
    move-object v4, p1

    goto :goto_0
.end method

.method public static getShortcutBitmap(Landroid/content/Context;Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "context"
    .parameter "shortcutData"

    .prologue
    .line 481
    const-string v3, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 482
    .local v1, bitmapParcelable:Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 483
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 484
    .local v2, res:Landroid/content/res/Resources;
    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1           #bitmapParcelable:Landroid/os/Parcelable;
    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f090002

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v1, p0, v3, v4}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    move-object v3, v0

    .line 490
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v3

    .restart local v1       #bitmapParcelable:Landroid/os/Parcelable;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadResource(Lcom/sonyericsson/home/data/Info;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 234
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->isTaskExecuting:Z

    if-nez v0, :cond_1

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->isTaskExecuting:Z

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    new-instance v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 238
    :cond_1
    return-void
.end method

.method private onLoadTaskFinished()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 435
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mLoadingTimings:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 436
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mLoadingTimings:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;

    .line 437
    .local v1, info:Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;
    iget-object v4, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;->item:Lcom/sonyericsson/home/data/Info;

    check-cast v4, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 440
    .end local v1           #info:Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;
    :cond_0
    new-instance v3, Lcom/sonyericsson/storage/Root;

    const-string v4, "activitypriority"

    invoke-direct {v3, v4}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 441
    .local v3, root:Lcom/sonyericsson/storage/Root;
    const-string v4, "version"

    invoke-virtual {v3, v4, v6}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 442
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 443
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v6}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V

    .line 444
    return-void
.end method


# virtual methods
.method public add(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "shortcutInfo"
    .parameter "bitmap"

    .prologue
    .line 400
    if-eqz p2, :cond_0

    .line 401
    new-instance v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    invoke-direct {v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;-><init>()V

    .line 402
    .local v0, value:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 403
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .end local v0           #value:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->loadResource(Lcom/sonyericsson/home/data/Info;)V

    goto :goto_0
.end method

.method public getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    .locals 1
    .parameter "info"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    return-object p0
.end method

.method public getShortcutBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "shortcutData"

    .prologue
    .line 464
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 465
    .local v1, bitmapParcelable:Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 466
    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1           #bitmapParcelable:Landroid/os/Parcelable;
    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconWidth:I

    iget v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconHeight:I

    invoke-static {v1, v2, v3, v4}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    move-object v2, v0

    .line 471
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .restart local v1       #bitmapParcelable:Landroid/os/Parcelable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->removeOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 543
    return-void
.end method

.method public preCacheShortcuts(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/Info;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/Info;

    .line 426
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    instance-of v2, v1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v2, :cond_0

    .line 427
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->loadResource(Lcom/sonyericsson/home/data/Info;)V

    goto :goto_0

    .line 430
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    return-void
.end method

.method public registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V
    .locals 4
    .parameter "info"
    .parameter "callback"

    .prologue
    .line 374
    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    .line 376
    .local v1, value:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v1, :cond_0

    .line 377
    iget-object v2, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    invoke-interface {p2, p1, v2, v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;->cacheCallback(Lcom/sonyericsson/home/data/Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 389
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 381
    .local v0, callbackList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;>;"
    if-nez v0, :cond_1

    .line 382
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #callbackList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 385
    .restart local v0       #callbackList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;>;"
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    return-void
.end method
