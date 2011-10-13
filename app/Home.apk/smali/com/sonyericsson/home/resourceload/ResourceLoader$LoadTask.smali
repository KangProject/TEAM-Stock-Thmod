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

.field final synthetic this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 135
    const-string v0, "Load resources"

    invoke-direct {p0, v0}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/Info;

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    .line 137
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 22

    .prologue
    .line 141
    new-instance v17, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    invoke-direct/range {v17 .. v17}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    .line 143
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sonyericsson/home/data/ActivityInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object v4, v0

    check-cast v4, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 145
    .local v4, activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getResolveInfo(Lcom/sonyericsson/home/data/ActivityInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 147
    .local v10, info:Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_0

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 150
    .local v11, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 153
    .local v14, startTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v17, v0

    invoke-virtual {v10, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v18, v0

    invoke-virtual {v10, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$300(Lcom/sonyericsson/home/resourceload/ResourceLoader;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$400(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 158
    .local v6, endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$500(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/Set;

    move-result-object v17

    new-instance v18, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object/from16 v19, v0

    sub-long v20, v6, v14

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;-><init>(Lcom/sonyericsson/home/data/Info;I)V

    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v4           #activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    .end local v6           #endTime:J
    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    .end local v11           #packageManager:Landroid/content/pm/PackageManager;
    .end local v14           #startTime:J
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    move-object v13, v0

    check-cast v13, Lcom/sonyericsson/home/data/ShortcutInfo;

    .line 163
    .local v13, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    invoke-virtual {v13}, Lcom/sonyericsson/home/data/ShortcutInfo;->getIconResource()Landroid/content/Intent$ShortcutIconResource;

    move-result-object v8

    .line 164
    .local v8, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v8, :cond_3

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object v0, v8

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 168
    .local v12, resources:Landroid/content/res/Resources;
    if-eqz v12, :cond_2

    .line 169
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

    .line 171
    .local v9, id:I
    if-eqz v9, :cond_2

    .line 172
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

    .line 185
    .end local v9           #id:I
    .end local v12           #resources:Landroid/content/res/Resources;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 189
    .end local v8           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v13           #shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    :catch_0
    move-exception v17

    move-object/from16 v16, v17

    .line 190
    .local v16, throwable:Ljava/lang/Throwable;
    const-string v17, "ResourceLoader"

    const-string v18, "Error loading resource"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$600(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 176
    .end local v16           #throwable:Ljava/lang/Throwable;
    .restart local v8       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .restart local v13       #shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    :cond_3
    :try_start_1
    invoke-virtual {v13}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, bitmapResourceName:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sonyericsson/drawable/FastBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/storage/Storage;->readBitmapSync(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/sonyericsson/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public postExecute()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 197
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    if-eqz v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$700(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$800(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 202
    .local v1, callbacks:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;>;"
    if-eqz v1, :cond_1

    .line 203
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;

    .line 204
    .local v0, callback:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    iget-object v4, v4, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mCacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    iget-object v5, v5, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    invoke-interface {v0, v3, v4, v5}, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;->cacheCallback(Lcom/sonyericsson/home/data/Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 206
    .end local v0           #callback:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$800(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->mInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .end local v1           #callbacks:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 212
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3, v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$902(Lcom/sonyericsson/home/resourceload/ResourceLoader;Z)Z

    .line 213
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$400(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3, v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$402(Lcom/sonyericsson/home/resourceload/ResourceLoader;Z)Z

    .line 215
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 220
    :cond_2
    :goto_1
    return-void

    .line 218
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v3}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$1100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/util/Worker;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;

    iget-object v5, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-direct {v4, v5}, Lcom/sonyericsson/home/resourceload/ResourceLoader$LoadTask;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    invoke-virtual {v3, v4}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    goto :goto_1
.end method
