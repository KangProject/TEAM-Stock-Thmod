.class Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;
.super Lcom/sonyericsson/util/Worker$Task;
.source "ResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/resourceload/ResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTask"
.end annotation


# instance fields
.field private mBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

.field private final mInfo:Lcom/sonyericsson/home/data/Info;

.field private mInfosInFolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation
.end field

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter
    .parameter "info"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 218
    const-string v0, "Load resources"

    invoke-direct {p0, v0}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    .line 219
    iput-object p2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    .line 220
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 33

    .prologue
    .line 253
    new-instance v30, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    invoke-direct/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    .line 255
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/sonyericsson/home/data/ActivityInfo;

    move/from16 v30, v0

    if-eqz v30, :cond_4

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v13, v0

    .line 257
    .local v13, info:Landroid/content/pm/ResolveInfo;
    if-eqz v13, :cond_0

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$500(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Z

    move-result v30

    if-eqz v30, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    move-wide/from16 v26, v30

    .line 261
    .local v26, startTime:J
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/pm/PackageManager;

    move-result-object v31

    move-object v0, v13

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/pm/PackageManager;

    move-result-object v30

    move-object v0, v13

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 263
    .local v8, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$700(Lcom/sonyericsson/home/resourceload/ResourceLoader;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$500(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v26

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move v15, v0

    .line 271
    .local v15, loadTime:I
    const/16 v30, 0x64

    move v0, v15

    move/from16 v1, v30

    if-le v0, v1, :cond_0

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$800(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/Set;

    move-result-object v30

    new-instance v31, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;-><init>(Lcom/sonyericsson/home/data/Info;I)V

    invoke-interface/range {v30 .. v31}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .end local v8           #icon:Landroid/graphics/drawable/Drawable;
    .end local v13           #info:Landroid/content/pm/ResolveInfo;
    .end local v15           #loadTime:I
    .end local v26           #startTime:J
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    if-nez v30, :cond_1

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$300(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 371
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    if-nez v30, :cond_2

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v30, v0

    const-string v31, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    .line 374
    :cond_2
    return-void

    .line 258
    .restart local v13       #info:Landroid/content/pm/ResolveInfo;
    :cond_3
    const-wide/16 v30, 0x0

    move-wide/from16 v26, v30

    goto/16 :goto_0

    .line 276
    .end local v13           #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    move/from16 v30, v0

    if-eqz v30, :cond_8

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object/from16 v25, v0

    check-cast v25, Lcom/sonyericsson/home/data/ShortcutInfo;

    .line 278
    .local v25, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    invoke-virtual/range {v25 .. v25}, Lcom/sonyericsson/home/data/ShortcutInfo;->getIconResource()Landroid/content/Intent$ShortcutIconResource;

    move-result-object v10

    .line 279
    .local v10, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v10, :cond_6

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/pm/PackageManager;

    move-result-object v30

    move-object v0, v10

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v20

    .line 283
    .local v20, resources:Landroid/content/res/Resources;
    if-eqz v20, :cond_5

    .line 284
    move-object v0, v10

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 286
    .local v11, id:I
    if-eqz v11, :cond_5

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$700(Lcom/sonyericsson/home/resourceload/ResourceLoader;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 309
    .end local v11           #id:I
    .end local v20           #resources:Landroid/content/res/Resources;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v30, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 364
    .end local v10           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v25           #shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    :catch_0
    move-exception v30

    move-object/from16 v28, v30

    .line 365
    .local v28, throwable:Ljava/lang/Throwable;
    const-string v30, "ResourceLoader"

    const-string v31, "Error loading resource"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 291
    .end local v28           #throwable:Ljava/lang/Throwable;
    .restart local v10       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .restart local v25       #shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    :cond_6
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, bitmapResourceName:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v6

    .line 294
    .local v6, bitmapPath:Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v30, v0

    new-instance v31, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$900(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v32

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/sonyericsson/storage/Storage;->readBitmapSync(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/sonyericsson/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 300
    :cond_7
    if-eqz v6, :cond_5

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v30

    move-object v0, v6

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 303
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_5

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v30, v0

    new-instance v31, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1100(Lcom/sonyericsson/home/resourceload/ResourceLoader;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/sonyericsson/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 310
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #bitmapPath:Ljava/lang/String;
    .end local v7           #bitmapResourceName:Ljava/lang/String;
    .end local v10           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v25           #shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/sonyericsson/home/data/InfoGroup;

    move/from16 v30, v0

    if-eqz v30, :cond_0

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v30

    sget-object v31, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v32, 0x1

    invoke-virtual/range {v30 .. v32}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 314
    .local v8, icon:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 317
    .local v9, iconCanvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1300(Lcom/sonyericsson/home/resourceload/ResourceLoader;)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1400(Lcom/sonyericsson/home/resourceload/ResourceLoader;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 318
    .local v24, scaledIconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1500(Lcom/sonyericsson/home/resourceload/ResourceLoader;)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1400(Lcom/sonyericsson/home/resourceload/ResourceLoader;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v23

    .line 321
    .local v23, scaledIconHeight:I
    const/16 v17, 0x2

    .line 324
    .local v17, paddingBetween:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v30

    mul-int/lit8 v31, v24, 0x2

    sub-int v30, v30, v31

    const/16 v31, 0x2

    sub-int v30, v30, v31

    div-int/lit8 v19, v30, 0x2

    .line 328
    .local v19, paddingSideMiniature:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v31

    mul-int/lit8 v31, v31, 0x2

    sub-int v30, v30, v31

    const/16 v31, 0x2

    sub-int v30, v30, v31

    div-int/lit8 v18, v30, 0x2

    .line 332
    .local v18, paddingSideEmptyIcon:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$400(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 334
    .local v21, scaledEmptyIconBitmap:Landroid/graphics/Bitmap;
    const/16 v16, 0x4

    .line 336
    .local v16, nrOfEmptyIcons:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfosInFolder:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, index:I
    :goto_3
    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_b

    .line 337
    rem-int/lit8 v30, v12, 0x2

    if-nez v30, :cond_9

    move/from16 v14, v18

    .line 339
    .local v14, left:I
    :goto_4
    div-int/lit8 v30, v12, 0x2

    if-nez v30, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1700(Lcom/sonyericsson/home/resourceload/ResourceLoader;)I

    move-result v30

    move/from16 v29, v30

    .line 341
    .local v29, top:I
    :goto_5
    move v0, v14

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object v0, v9

    move-object/from16 v1, v21

    move/from16 v2, v30

    move/from16 v3, v31

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 336
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 337
    .end local v14           #left:I
    .end local v29           #top:I
    :cond_9
    add-int v30, v24, v18

    add-int/lit8 v30, v30, 0x2

    move/from16 v14, v30

    goto :goto_4

    .line 339
    .restart local v14       #left:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1700(Lcom/sonyericsson/home/resourceload/ResourceLoader;)I

    move-result v30

    add-int v30, v30, v23

    add-int/lit8 v30, v30, 0x2

    move/from16 v29, v30

    goto :goto_5

    .line 345
    .end local v14           #left:I
    :cond_b
    const/4 v12, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfosInFolder:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move v0, v12

    move/from16 v1, v30

    if-ge v0, v1, :cond_e

    .line 348
    rem-int/lit8 v30, v12, 0x2

    if-nez v30, :cond_c

    move/from16 v14, v19

    .line 350
    .restart local v14       #left:I
    :goto_7
    div-int/lit8 v30, v12, 0x2

    if-nez v30, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1700(Lcom/sonyericsson/home/resourceload/ResourceLoader;)I

    move-result v30

    move/from16 v29, v30

    .line 354
    .restart local v29       #top:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mBitmapList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 355
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    const/16 v30, 0x1

    move-object v0, v5

    move/from16 v1, v24

    move/from16 v2, v23

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 359
    .local v22, scaledIconBitmap:Landroid/graphics/Bitmap;
    move v0, v14

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object v0, v9

    move-object/from16 v1, v22

    move/from16 v2, v30

    move/from16 v3, v31

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 360
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    .line 345
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 348
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v14           #left:I
    .end local v22           #scaledIconBitmap:Landroid/graphics/Bitmap;
    .end local v29           #top:I
    :cond_c
    add-int v30, v24, v19

    add-int/lit8 v30, v30, 0x2

    move/from16 v14, v30

    goto :goto_7

    .line 350
    .restart local v14       #left:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1700(Lcom/sonyericsson/home/resourceload/ResourceLoader;)I

    move-result v30

    add-int v30, v30, v23

    add-int/lit8 v30, v30, 0x2

    move/from16 v29, v30

    goto :goto_8

    .line 362
    .end local v14           #left:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v30, v0

    new-instance v31, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$900(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public postExecute()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 378
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    instance-of v6, v6, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v6, :cond_0

    .line 379
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1800(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v8, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v7, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    .line 381
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    iget-object v8, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1900(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 385
    .local v2, callbacks:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;>;"
    if-eqz v2, :cond_2

    .line 386
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;

    .line 387
    .local v1, callback:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    iget-object v7, v7, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    iget-object v8, v8, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    iget-object v9, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    iget-object v9, v9, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    invoke-interface {v1, v6, v7, v8, v9}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;->cacheCallback(Lcom/sonyericsson/home/data/Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    .end local v1           #callback:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1900(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    instance-of v6, v6, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v6, :cond_5

    .line 395
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/home/layer/InfoGroupManager;->notifyAppearanceChanged()V

    .line 409
    :cond_3
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$2100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 410
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6, v10}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$2202(Lcom/sonyericsson/home/resourceload/ResourceLoader;Z)Z

    .line 411
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$500(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 412
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6, v10}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$502(Lcom/sonyericsson/home/resourceload/ResourceLoader;Z)Z

    .line 413
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$2300(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 415
    :cond_4
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$2402(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;

    .line 420
    :goto_1
    return-void

    .line 398
    :cond_5
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/data/Info;

    .line 399
    .local v4, info:Lcom/sonyericsson/home/data/Info;
    instance-of v6, v4, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v6, :cond_6

    .line 400
    move-object v0, v4

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    move-object v5, v0

    .line 401
    .local v5, infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v6, v5, v7}, Lcom/sonyericsson/home/layer/InfoGroupManager;->contains(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 402
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6, v4}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$2000(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    goto :goto_2

    .line 417
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Lcom/sonyericsson/home/data/Info;
    .end local v5           #infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    :cond_7
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$2100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/home/data/Info;

    invoke-static {v7, v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$2402(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;

    .line 418
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$2500(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/util/Worker;

    move-result-object v6

    new-instance v7, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;

    iget-object v8, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v9, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v9}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$2400(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/data/Info;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    invoke-virtual {v6, v7}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    goto :goto_1
.end method

.method public preExecute()V
    .locals 9

    .prologue
    .line 224
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    instance-of v7, v7, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v7, :cond_1

    .line 225
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v7}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v8

    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    check-cast v7, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-virtual {v8, v7}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getResolveInfo(Lcom/sonyericsson/home/data/ActivityInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 249
    :cond_0
    return-void

    .line 226
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    instance-of v7, v7, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v7, :cond_0

    .line 230
    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    check-cast v6, Lcom/sonyericsson/home/data/InfoGroup;

    .line 231
    .local v6, infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfosInFolder:Ljava/util/ArrayList;

    .line 232
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v7}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getInfoCount(Lcom/sonyericsson/home/data/InfoGroup;)I

    move-result v2

    .line 233
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v7, 0x4

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 234
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfosInFolder:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v8}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v8

    invoke-virtual {v8, v6, v3}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getInfo(Lcom/sonyericsson/home/data/InfoGroup;I)Lcom/sonyericsson/home/data/Info;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mBitmapList:Ljava/util/ArrayList;

    .line 239
    const/4 v5, 0x0

    .local v5, index:I
    :goto_1
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfosInFolder:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 241
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v7}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfosInFolder:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    .line 242
    .local v1, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v1, :cond_3

    iget-object v7, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    move-object v4, v7

    .line 244
    .local v4, iconDrawable:Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-static {v4}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$400(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 245
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 242
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #iconDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v7}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$300(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v4, v7

    goto :goto_2
.end method
