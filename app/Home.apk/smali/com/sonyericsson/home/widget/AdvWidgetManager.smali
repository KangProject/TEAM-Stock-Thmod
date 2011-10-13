.class public Lcom/sonyericsson/home/widget/AdvWidgetManager;
.super Ljava/lang/Object;
.source "AdvWidgetManager.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/widget/AdvWidgetManager$1;,
        Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;,
        Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    }
.end annotation


# static fields
.field private static final DEF_SPAN_XY:[I = null

.field public static final EXTRA_ADVWIDGET_NAME:Ljava/lang/String; = "advWidgetName"

.field private static final TAG:Ljava/lang/String; = "AdvWidgetManager"


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/home/data/AdvWidgetInfo;",
            "Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/app/Activity;

.field private mHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private final mPendingCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetExtras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetInfoDirty:Z

.field private mWidgetInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->DEF_SPAN_XY:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 1
    .parameter "context"
    .parameter "host"
    .parameter "packageLoader"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfos:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetExtras:Ljava/util/ArrayList;

    .line 92
    iput-object p1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mContext:Landroid/app/Activity;

    .line 93
    iput-object p2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    .line 94
    iput-object p3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 95
    invoke-virtual {p3, p0}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 96
    return-void
.end method

.method private addPendingWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;Landroid/graphics/Point;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)V
    .locals 3
    .parameter "info"
    .parameter "location"
    .parameter "callback"

    .prologue
    .line 308
    new-instance v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;-><init>(Lcom/sonyericsson/home/data/AdvWidgetInfo;Landroid/graphics/Point;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)V

    .line 309
    .local v0, pinfo:Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-void
.end method

.method private createWidgetProxy(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    .locals 6
    .parameter "info"

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mContext:Landroid/app/Activity;

    invoke-static {v4, v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->createAdvWidgetProxy(Landroid/content/Context;Ljava/lang/String;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v3

    .line 136
    .local v3, widget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    if-eqz v3, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->setId(Ljava/util/UUID;)V

    .line 138
    iget-object v4, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->init(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;)V

    .line 139
    iget-object v4, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->setActivity(Landroid/app/Activity;)V

    .line 140
    iget-object v4, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mContext:Landroid/app/Activity;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 142
    .local v0, c:Landroid/content/Context;
    invoke-virtual {v3, v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onCreate(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #c:Landroid/content/Context;
    :cond_0
    move-object v4, v3

    .line 148
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #widget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    :goto_0
    return-object v4

    .line 145
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 146
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 148
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    .locals 3
    .parameter "info"

    .prologue
    .line 120
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    .line 121
    .local v0, cacheEntry:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->createWidgetProxy(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v1

    .line 123
    .local v1, proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    if-eqz v1, :cond_0

    .line 124
    new-instance v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    .end local v0           #cacheEntry:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;-><init>(Lcom/sonyericsson/home/widget/AdvWidgetManager$1;)V

    .line 125
    .restart local v0       #cacheEntry:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iput-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    .line 126
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v1           #proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    :cond_0
    return-object v0
.end method

.method private getWidgetInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, widgetInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .local p2, widgetExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v9, 0x0

    .line 503
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 504
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 506
    iget-object v6, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 507
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 508
    .local v3, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 509
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.sonyericsson.advancedwidget."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 510
    new-instance v5, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v5}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 511
    .local v5, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 512
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 516
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, ""

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 517
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 520
    .local v1, extraBundle:Landroid/os/Bundle;
    const-string v6, "advWidgetName"

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 525
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #extraBundle:Landroid/os/Bundle;
    .end local v5           #widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    iput-boolean v9, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    .line 526
    return-void
.end method


# virtual methods
.method public addNewWidget(Ljava/lang/String;Landroid/graphics/Point;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)Lcom/sonyericsson/home/data/AdvWidgetInfo;
    .locals 7
    .parameter "packageName"
    .parameter "location"
    .parameter "callback"

    .prologue
    const/4 v6, 0x0

    .line 221
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 223
    .local v0, id:Ljava/util/UUID;
    new-instance v1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-direct {v1, p1, v0}, Lcom/sonyericsson/home/data/AdvWidgetInfo;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    .line 225
    .local v1, info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v3

    .line 226
    .local v3, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-nez v3, :cond_0

    move-object v4, v6

    .line 249
    :goto_0
    return-object v4

    .line 230
    :cond_0
    iget-object v4, v3, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    iget-object v5, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->configure(Landroid/content/Context;)I

    move-result v2

    .line 231
    .local v2, ret:I
    packed-switch v2, :pswitch_data_0

    .line 248
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanup(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    move-object v4, v6

    .line 249
    goto :goto_0

    .line 234
    :pswitch_0
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    move-object v4, v1

    .line 235
    goto :goto_0

    .line 238
    :pswitch_1
    invoke-direct {p0, v1, p2, p3}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->addPendingWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;Landroid/graphics/Point;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)V

    move-object v4, v6

    .line 239
    goto :goto_0

    .line 242
    :pswitch_2
    const/4 v4, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    .line 243
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanup(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    move-object v4, v6

    .line 244
    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public cleanup(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 280
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    .line 281
    .local v0, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    .line 282
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDestroy()V

    .line 283
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_0
    return-void
.end method

.method public cleanupPendingWidgets()V
    .locals 5

    .prologue
    .line 298
    iget-object v3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;

    .line 299
    .local v2, pinfo:Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;
    iget-object v1, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .line 300
    .local v1, info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    iget-object v3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    .line 302
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanup(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    goto :goto_0

    .line 304
    .end local v1           #info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    .end local v2           #pinfo:Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 305
    return-void
.end method

.method public configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V
    .locals 2
    .parameter "info"
    .parameter "response"

    .prologue
    .line 261
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    .line 262
    .local v0, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    .line 263
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onConfigured(I)V

    .line 265
    :cond_0
    return-void
.end method

.method public customize(Lcom/sonyericsson/home/data/AdvWidgetInfo;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "info"
    .parameter "settings"

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v1

    .line 351
    .local v1, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-nez v1, :cond_0

    .line 352
    const/4 v2, 0x0

    .line 362
    :goto_0
    return v2

    .line 355
    :cond_0
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->customize(Landroid/os/Bundle;)Z

    move-result v0

    .line 356
    .local v0, success:Z
    if-eqz v0, :cond_1

    .line 357
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    :goto_1
    move v2, v0

    .line 362
    goto :goto_0

    .line 359
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    .line 360
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanup(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    goto :goto_1
.end method

.method public defocus()V
    .locals 0

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onDefocus()V

    .line 412
    return-void
.end method

.method public defocus(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDefocus()V

    .line 459
    return-void
.end method

.method public focus()V
    .locals 0

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onFocus()V

    .line 404
    return-void
.end method

.method public focus(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onFocus()V

    .line 451
    return-void
.end method

.method public getSpanXY(Lcom/sonyericsson/home/data/AdvWidgetInfo;)[I
    .locals 2
    .parameter "info"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v0

    .line 153
    .local v0, widgetCache:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-nez v0, :cond_0

    .line 154
    sget-object v1, Lcom/sonyericsson/home/widget/AdvWidgetManager;->DEF_SPAN_XY:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [I

    move-object v1, p0

    .line 156
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getSpanXY()[I

    move-result-object v1

    goto :goto_0
.end method

.method public getWidgetInfo()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetExtras:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWidgetInfoExtras()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetExtras:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetExtras:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWidgetView(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Landroid/view/View;
    .locals 5
    .parameter "info"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v1

    .line 100
    .local v1, widgetCache:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;

    if-nez v2, :cond_0

    .line 102
    :try_start_0
    new-instance v2, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    iget-object v3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mContext:Landroid/app/Activity;

    iget-object v4, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;-><init>(Landroid/content/Context;Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;)V

    iput-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;

    if-nez v2, :cond_3

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 112
    iput-object v0, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;

    :cond_2
    move-object v2, v0

    .line 116
    .end local v0           #view:Landroid/view/View;
    :goto_1
    return-object v2

    :cond_3
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;

    goto :goto_1

    .line 103
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public hasPendingWidgets()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOpenGLAdvWidgets()V
    .locals 5

    .prologue
    .line 477
    iget-object v3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    .line 478
    .local v2, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;

    instance-of v3, v3, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    if-eqz v3, :cond_0

    .line 479
    iget-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 480
    iget-object v1, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    .line 481
    .local v1, root:Lcom/sonyericsson/home/widget/AdvWidgetRoot;
    invoke-virtual {v1}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->hideWidget()V

    goto :goto_0

    .line 485
    .end local v1           #root:Lcom/sonyericsson/home/widget/AdvWidgetRoot;
    .end local v2           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_1
    return-void
.end method

.method public onConfigured(Ljava/util/UUID;I)V
    .locals 5
    .parameter "id"
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    .line 321
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;

    .line 322
    .local v0, pinfo:Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;
    if-nez v0, :cond_0

    .line 323
    const-string v1, "AdvWidgetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending info not found for widget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    if-ne p2, v4, :cond_1

    .line 332
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->callback:Lcom/sonyericsson/home/widget/OnWidgetConfigured;

    iget-object v2, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    iget-object v3, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->location:Landroid/graphics/Point;

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/home/widget/OnWidgetConfigured;->onWidgetConfigured(Lcom/sonyericsson/home/data/AdvWidgetInfo;Landroid/graphics/Point;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    const/4 p2, -0x1

    .line 338
    :cond_1
    if-ne p2, v4, :cond_2

    .line 339
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-virtual {p0, v1, v4}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    goto :goto_0

    .line 343
    :cond_2
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    .line 344
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanup(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    goto :goto_0
.end method

.method protected onDefocus()V
    .locals 3

    .prologue
    .line 189
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    .line 190
    .local v1, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDefocus()V

    goto :goto_0

    .line 192
    .end local v1           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/home/resourceload/PackageLoader;->removeOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 272
    return-void
.end method

.method protected onFocus()V
    .locals 3

    .prologue
    .line 195
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    .line 196
    .local v1, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onFocus()V

    goto :goto_0

    .line 198
    .end local v1           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_0
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    .line 202
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    .line 206
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    .line 210
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 165
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    .line 166
    .local v1, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onPause()V

    goto :goto_0

    .line 168
    .end local v1           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 171
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    .line 172
    .local v1, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onResume()V

    goto :goto_0

    .line 174
    .end local v1           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_0
    return-void
.end method

.method public onScrolled()V
    .locals 3

    .prologue
    .line 213
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    .line 214
    .local v1, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onMoved()V

    goto :goto_0

    .line 216
    .end local v1           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 183
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    .line 184
    .local v1, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStart()V

    goto :goto_0

    .line 186
    .end local v1           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 177
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    .line 178
    .local v1, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStop()V

    goto :goto_0

    .line 180
    .end local v1           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onPause()V

    .line 396
    return-void
.end method

.method public pause(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onPause()V

    .line 443
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onResume()V

    .line 387
    return-void
.end method

.method public resume(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onResume()V

    .line 434
    return-void
.end method

.method public showOpenGLAdvWidgets()V
    .locals 4

    .prologue
    .line 465
    iget-object v3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    .line 466
    .local v2, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;

    instance-of v3, v3, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    if-eqz v3, :cond_0

    .line 467
    iget-object v1, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    .line 468
    .local v1, root:Lcom/sonyericsson/home/widget/AdvWidgetRoot;
    invoke-virtual {v1}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->showWidget()V

    goto :goto_0

    .line 471
    .end local v1           #root:Lcom/sonyericsson/home/widget/AdvWidgetRoot;
    .end local v2           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_1
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onStart()V

    .line 370
    return-void
.end method

.method public start(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStart()V

    .line 419
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onStop()V

    .line 378
    return-void
.end method

.method public stop(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStop()V

    .line 426
    return-void
.end method

.method public widgetRemoved(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanup(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    .line 162
    return-void
.end method
