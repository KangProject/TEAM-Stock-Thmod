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
.field private mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

.field private final mInfo:Lcom/sonyericsson/home/data/Info;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter
    .parameter "info"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 166
    const-string v0, "Load resources"

    invoke-direct {p0, v0}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    .line 167
    iput-object p2, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    .line 168
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 20

    .prologue
    .line 179
    new-instance v17, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    invoke-direct/range {v17 .. v17}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    .line 181
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sonyericsson/home/data/ActivityInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v10, v0

    .line 183
    .local v10, info:Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_0

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-wide/from16 v14, v17

    .line 187
    .local v14, startTime:J
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 189
    .local v7, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$300(Lcom/sonyericsson/home/resourceload/ResourceLoader;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v14

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move v11, v0

    .line 197
    .local v11, loadTime:I
    const/16 v17, 0x64

    move v0, v11

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$400(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/Set;

    move-result-object v17

    new-instance v18, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move v2, v11

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;-><init>(Lcom/sonyericsson/home/data/Info;I)V

    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    .end local v11           #loadTime:I
    .end local v14           #startTime:J
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$800(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 243
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v17, v0

    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    .line 246
    :cond_2
    return-void

    .line 184
    .restart local v10       #info:Landroid/content/pm/ResolveInfo;
    :cond_3
    const-wide/16 v17, 0x0

    move-wide/from16 v14, v17

    goto/16 :goto_0

    .line 202
    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object v13, v0

    check-cast v13, Lcom/sonyericsson/home/data/ShortcutInfo;

    .line 204
    .local v13, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    invoke-virtual {v13}, Lcom/sonyericsson/home/data/ShortcutInfo;->getIconResource()Landroid/content/Intent$ShortcutIconResource;

    move-result-object v8

    .line 205
    .local v8, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v8, :cond_6

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object v0, v8

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 209
    .local v12, resources:Landroid/content/res/Resources;
    if-eqz v12, :cond_5

    .line 210
    move-object v0, v8

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v12

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 212
    .local v9, id:I
    if-eqz v9, :cond_5

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v18, v0

    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$300(Lcom/sonyericsson/home/resourceload/ResourceLoader;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 234
    .end local v9           #id:I
    .end local v12           #resources:Landroid/content/res/Resources;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v17, v0

    invoke-virtual {v13}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 236
    .end local v8           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v13           #shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    :catch_0
    move-exception v17

    move-object/from16 v16, v17

    .line 237
    .local v16, throwable:Ljava/lang/Throwable;
    const-string v17, "ResourceLoader"

    const-string v18, "Error loading resource"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 217
    .end local v16           #throwable:Ljava/lang/Throwable;
    .restart local v8       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .restart local v13       #shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    :cond_6
    :try_start_2
    invoke-virtual {v13}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v6

    .line 218
    .local v6, bitmapResourceName:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, bitmapPath:Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$500(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/sonyericsson/storage/Storage;->readBitmapSync(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/sonyericsson/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 226
    :cond_7
    if-eqz v5, :cond_5

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v17

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 228
    .local v4, bitmap:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_5

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$700(Lcom/sonyericsson/home/resourceload/ResourceLoader;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/sonyericsson/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method public postExecute()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 250
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    instance-of v3, v3, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v3, :cond_0

    .line 251
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$900(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    .line 253
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 257
    .local v1, callbacks:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;>;"
    if-eqz v1, :cond_2

    .line 258
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;

    .line 259
    .local v0, callback:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    iget-object v4, v4, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    iget-object v5, v5, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    iget-object v6, v6, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;->cacheCallback(Lcom/sonyericsson/home/data/Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .end local v0           #callback:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 267
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3, v7}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1302(Lcom/sonyericsson/home/resourceload/ResourceLoader;Z)Z

    .line 268
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3, v7}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$102(Lcom/sonyericsson/home/resourceload/ResourceLoader;Z)Z

    .line 270
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1400(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 272
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1502(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;

    .line 277
    :goto_1
    return-void

    .line 274
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/data/Info;

    invoke-static {v4, v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1502(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;

    .line 275
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/util/Worker;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;

    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v6, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1500(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/data/Info;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/data/Info;)V

    invoke-virtual {v3, v4}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    goto :goto_1
.end method

.method public preExecute()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    instance-of v0, v0, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getResolveInfo(Lcom/sonyericsson/home/data/ActivityInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 175
    :cond_0
    return-void
.end method
