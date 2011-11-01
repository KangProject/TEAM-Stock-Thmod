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

.field public static final SLOW_LOADING_LIMIT:I = 0x64

.field private static final STORAGE_ENTITY_NAME:Ljava/lang/String; = "slowloading"

.field private static final STORAGE_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final STORAGE_VERSION_VALUE:I = 0x1


# instance fields
.field private isTaskExecuting:Z

.field private mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

.field private final mBadgeMap:Ljava/util/HashMap;
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

.field private mIconBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mIconHeight:I

.field private mIconWidth:I

.field private mInfoLoadTarget:Lcom/sonyericsson/home/data/Info;

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

.field private final mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

.field private mPrioritizedResources:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation
.end field

.field private mReadHandle:Ljava/lang/Object;

.field private mSlowLoadingApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateSlowLoadingList:Z

.field private mWorker:Lcom/sonyericsson/util/Worker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/badge/BadgeManager;)V
    .locals 3
    .parameter "context"
    .parameter "packageLoader"
    .parameter "badgeManager"

    .prologue
    const/4 v2, 0x0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheCallbacks:Ljava/util/HashMap;

    .line 123
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mBadgeMap:Ljava/util/HashMap;

    .line 152
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPrioritizedResources:Ljava/util/HashSet;

    .line 328
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    .line 329
    iput-object p2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 330
    iput-object p3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    .line 331
    invoke-static {v2}, Lcom/sonyericsson/util/Worker;->obtain(I)Lcom/sonyericsson/util/Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconWidth:I

    .line 334
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconHeight:I

    .line 336
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 340
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 344
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    const-string v1, "slowloading"

    new-instance v2, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mReadHandle:Ljava/lang/Object;

    .line 400
    new-instance v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/resourceload/ResourceLoader$2;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 466
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 467
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mUpdateSlowLoadingList:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/home/resourceload/ResourceLoader;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mUpdateSlowLoadingList:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sonyericsson/home/resourceload/ResourceLoader;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->isTaskExecuting:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->onLoadTaskFinished()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoLoadTarget:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoLoadTarget:Lcom/sonyericsson/home/data/Info;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/util/Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sonyericsson/home/resourceload/ResourceLoader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mReadHandle:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->loadResource(Lcom/sonyericsson/home/data/Info;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/badge/BadgeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/resourceload/ResourceLoader;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->createIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mSlowLoadingApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/home/resourceload/ResourceLoader;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mSlowLoadingApps:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/resourceload/ResourceLoader;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->createIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mBadgeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private createIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconWidth:I

    iget v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmap"
    .parameter "context"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 662
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    if-nez v3, :cond_0

    .line 663
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 666
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 667
    .local v2, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 669
    .local v1, sourceHeight:I
    if-gt v2, p2, :cond_1

    if-le v1, p3, :cond_3

    .line 671
    :cond_1
    int-to-float v3, v2

    int-to-float v4, v1

    div-float v0, v3, v4

    .line 672
    .local v0, ratio:F
    if-le v2, v1, :cond_4

    .line 673
    int-to-float v3, p2

    div-float/2addr v3, v0

    float-to-int p3, v3

    .line 682
    :cond_2
    :goto_0
    const/4 v3, 0x1

    invoke-static {p0, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 684
    .end local v0           #ratio:F
    :cond_3
    return-object p0

    .line 674
    .restart local v0       #ratio:F
    :cond_4
    if-le v1, v2, :cond_2

    .line 675
    int-to-float v3, p3

    mul-float/2addr v3, v0

    float-to-int p2, v3

    goto :goto_0
.end method

.method private createIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "drawable"

    .prologue
    .line 688
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 689
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 690
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 691
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconWidth:I

    iget v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mIconHeight:I

    invoke-static {v1, v4, v5, v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 692
    .local v3, iconBitmap:Landroid/graphics/Bitmap;
    new-instance v4, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    invoke-direct {v4, v3}, Lcom/sonyericsson/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 694
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
    .line 632
    const-string v3, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 633
    .local v1, bitmapParcelable:Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 634
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 635
    .local v2, res:Landroid/content/res/Resources;
    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1           #bitmapParcelable:Landroid/os/Parcelable;
    const v3, 0x7f0a0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0a0007

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v1, p0, v3, v4}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    move-object v3, v0

    .line 641
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
    .locals 3
    .parameter "info"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPrioritizedResources:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 296
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->isTaskExecuting:Z

    if-nez v0, :cond_1

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->isTaskExecuting:Z

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/Info;

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoLoadTarget:Lcom/sonyericsson/home/data/Info;

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    new-instance v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;

    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoLoadTarget:Lcom/sonyericsson/home/data/Info;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 301
    :cond_1
    return-void

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onLoadTaskFinished()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const-string v7, "slowloading"

    .line 575
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mSlowLoadingApps:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 578
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mSlowLoadingApps:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 579
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mSlowLoadingApps:Ljava/util/Set;

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

    .line 580
    .local v1, info:Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;
    iget-object v4, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;->item:Lcom/sonyericsson/home/data/Info;

    check-cast v4, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 583
    .end local v1           #info:Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;
    :cond_0
    new-instance v3, Lcom/sonyericsson/storage/Root;

    const-string v4, "slowloading"

    invoke-direct {v3, v7}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 584
    .local v3, root:Lcom/sonyericsson/storage/Root;
    const-string v4, "version"

    invoke-virtual {v3, v4, v6}, Lcom/sonyericsson/storage/Root;->put(Ljava/lang/String;I)V

    .line 585
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 586
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v6}, Lcom/sonyericsson/storage/Storage;->write(Landroid/content/Context;Lcom/sonyericsson/storage/Root;Z)V

    .line 592
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    .end local v3           #root:Lcom/sonyericsson/storage/Root;
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPrioritizedResources:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 594
    const/16 v4, 0xa

    invoke-static {v4}, Lcom/sonyericsson/util/Worker;->obtain(I)Lcom/sonyericsson/util/Worker;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mWorker:Lcom/sonyericsson/util/Worker;

    .line 595
    return-void

    .line 588
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    const-string v5, "slowloading"

    invoke-static {v4, v7}, Lcom/sonyericsson/storage/Storage;->deleteRoot(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private unbindDrawables()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 719
    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    .line 720
    .local v0, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    iget-object v2, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 721
    iget-object v2, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 724
    .end local v0           #cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 725
    return-void
.end method


# virtual methods
.method public add(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "shortcutInfo"
    .parameter "bitmap"

    .prologue
    .line 541
    if-eqz p2, :cond_0

    .line 542
    new-instance v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    invoke-direct {v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;-><init>()V

    .line 543
    .local v0, value:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    new-instance v1, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    invoke-direct {v1, p2}, Lcom/sonyericsson/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 544
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    .line 545
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .end local v0           #value:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    :goto_0
    return-void

    .line 547
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->loadResource(Lcom/sonyericsson/home/data/Info;)V

    goto :goto_0
.end method

.method public getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    .locals 5
    .parameter "info"

    .prologue
    .line 476
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    .line 477
    .local v0, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-nez v0, :cond_0

    instance-of v3, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getUnavailablePackageSet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/Info;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 480
    new-instance v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    .end local v0           #cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    invoke-direct {v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;-><init>()V

    .line 481
    .restart local v0       #cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 482
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/Info;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, packageName:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 485
    .local v1, lastDotIndex:I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    .line 486
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .end local v1           #lastDotIndex:I
    .end local v2           #packageName:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getShortcutBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "shortcutData"

    .prologue
    .line 615
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 616
    .local v1, bitmapParcelable:Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 617
    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1           #bitmapParcelable:Landroid/os/Parcelable;
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->createIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    move-object v2, v0

    .line 621
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .restart local v1       #bitmapParcelable:Landroid/os/Parcelable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasQueuedInfos(Ljava/util/Set;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 524
    .local p1, infoSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/Info;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 525
    .local v0, allPendingInfos:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/Info;>;"
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 526
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoLoadTarget:Lcom/sonyericsson/home/data/Info;

    if-eqz v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoLoadTarget:Lcom/sonyericsson/home/data/Info;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPackageUpdateListener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->removeOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    .line 700
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 701
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mReadHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mReadHandle:Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/storage/Storage;->cancelReadRoot(Ljava/lang/Object;)V

    .line 704
    :cond_0
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
    .line 567
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

    .line 568
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    instance-of v2, v1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 569
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->loadResource(Lcom/sonyericsson/home/data/Info;)V

    goto :goto_0

    .line 572
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    return-void
.end method

.method public prioritizeResource(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mInfoQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mPrioritizedResources:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V
    .locals 5
    .parameter "info"
    .parameter "callback"

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v1

    .line 501
    .local v1, value:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v1, :cond_0

    .line 502
    iget-object v2, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    iget-object v4, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    invoke-interface {p2, p1, v2, v3, v4}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;->cacheCallback(Lcom/sonyericsson/home/data/Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 514
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 506
    .local v0, callbackList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;>;"
    if-nez v0, :cond_1

    .line 507
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #callbackList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 510
    .restart local v0       #callbackList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;>;"
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public releaseNonRetainedObjects()V
    .locals 1

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->unbindDrawables()V

    .line 712
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 713
    return-void
.end method

.method public remove(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    return-void
.end method
