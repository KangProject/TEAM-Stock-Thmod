.class public Lcom/sonyericsson/home/widget/AdvWidgetManager;
.super Ljava/lang/Object;
.source "AdvWidgetManager.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
.implements Lcom/sonyericsson/util/ViewSnapshot$ViewRenderer;


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
    .line 78
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
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfos:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetExtras:Ljava/util/ArrayList;

    .line 95
    iput-object p1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mContext:Landroid/app/Activity;

    .line 96
    iput-object p2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    .line 97
    iput-object p3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 98
    invoke-virtual {p3, p0}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 99
    const-class v0, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    invoke-static {v0, p0}, Lcom/sonyericsson/util/ViewSnapshot;->registerRenderer(Ljava/lang/Class;Lcom/sonyericsson/util/ViewSnapshot$ViewRenderer;)V

    .line 100
    return-void
.end method

.method private addPendingWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;Lcom/sonyericsson/grid/GridLocation;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)V
    .locals 3
    .parameter "info"
    .parameter "location"
    .parameter "callback"

    .prologue
    .line 325
    new-instance v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;-><init>(Lcom/sonyericsson/home/data/AdvWidgetInfo;Lcom/sonyericsson/grid/GridLocation;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)V

    .line 326
    .local v0, pinfo:Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    return-void
.end method

.method private createWidgetProxy(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    .locals 6
    .parameter "info"

    .prologue
    .line 138
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mContext:Landroid/app/Activity;

    invoke-static {v4, v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->createAdvWidgetProxy(Landroid/content/Context;Ljava/lang/String;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v3

    .line 140
    .local v3, widget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    if-eqz v3, :cond_0

    .line 141
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->setId(Ljava/util/UUID;)V

    .line 142
    iget-object v4, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->init(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;)V

    .line 143
    iget-object v4, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->setActivity(Landroid/app/Activity;)V

    .line 144
    iget-object v4, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mContext:Landroid/app/Activity;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 146
    .local v0, c:Landroid/content/Context;
    invoke-virtual {v3, v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onCreate(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #c:Landroid/content/Context;
    :cond_0
    move-object v4, v3

    .line 152
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #widget:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    :goto_0
    return-object v4

    .line 149
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 150
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 152
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    .locals 3
    .parameter "info"

    .prologue
    .line 124
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    .line 125
    .local v0, cacheEntry:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->createWidgetProxy(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v1

    .line 127
    .local v1, proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    if-eqz v1, :cond_0

    .line 128
    new-instance v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    .end local v0           #cacheEntry:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;-><init>(Lcom/sonyericsson/home/widget/AdvWidgetManager$1;)V

    .line 129
    .restart local v0       #cacheEntry:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iput-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    .line 130
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
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

    .line 538
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 539
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 541
    iget-object v6, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 542
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 543
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

    .line 544
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.sonyericsson.advancedwidget."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 545
    new-instance v5, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v5}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 546
    .local v5, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 547
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 551
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, ""

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 552
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 555
    .local v1, extraBundle:Landroid/os/Bundle;
    const-string v6, "advWidgetName"

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 560
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #extraBundle:Landroid/os/Bundle;
    .end local v5           #widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    iput-boolean v9, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    .line 561
    return-void
.end method


# virtual methods
.method public addNewWidget(Ljava/lang/String;Lcom/sonyericsson/grid/GridLocation;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)Lcom/sonyericsson/home/data/AdvWidgetInfo;
    .locals 7
    .parameter "packageName"
    .parameter "location"
    .parameter "callback"

    .prologue
    const/4 v6, 0x0

    .line 233
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 235
    .local v0, id:Ljava/util/UUID;
    new-instance v1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-direct {v1, p1, v0}, Lcom/sonyericsson/home/data/AdvWidgetInfo;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    .line 237
    .local v1, info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v3

    .line 238
    .local v3, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-nez v3, :cond_0

    move-object v4, v6

    .line 261
    :goto_0
    return-object v4

    .line 242
    :cond_0
    iget-object v4, v3, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    iget-object v5, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->configure(Landroid/content/Context;)I

    move-result v2

    .line 243
    .local v2, ret:I
    packed-switch v2, :pswitch_data_0

    .line 260
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanup(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    move-object v4, v6

    .line 261
    goto :goto_0

    .line 246
    :pswitch_0
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    move-object v4, v1

    .line 247
    goto :goto_0

    .line 250
    :pswitch_1
    invoke-direct {p0, v1, p2, p3}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->addPendingWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;Lcom/sonyericsson/grid/GridLocation;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)V

    move-object v4, v6

    .line 251
    goto :goto_0

    .line 254
    :pswitch_2
    const/4 v4, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    .line 255
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanup(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    move-object v4, v6

    .line 256
    goto :goto_0

    .line 243
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
    .line 296
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    .line 297
    .local v0, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    .line 298
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->remove()V

    .line 299
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_0
    return-void
.end method

.method public cleanupPendingWidgets()V
    .locals 4

    .prologue
    .line 316
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

    .line 317
    .local v2, pinfo:Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;
    iget-object v1, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .line 318
    .local v1, info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    .line 319
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanup(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    goto :goto_0

    .line 321
    .end local v1           #info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    .end local v2           #pinfo:Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 322
    return-void
.end method

.method public configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V
    .locals 2
    .parameter "info"
    .parameter "response"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    .line 274
    .local v0, widget:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    .line 275
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onConfigured(I)V

    .line 277
    :cond_0
    return-void
.end method

.method public customize(Lcom/sonyericsson/home/data/AdvWidgetInfo;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "info"
    .parameter "settings"

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v1

    .line 368
    .local v1, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-nez v1, :cond_0

    .line 369
    const/4 v2, 0x0

    .line 379
    :goto_0
    return v2

    .line 372
    :cond_0
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->customize(Landroid/os/Bundle;)Z

    move-result v0

    .line 373
    .local v0, success:Z
    if-eqz v0, :cond_1

    .line 374
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    :goto_1
    move v2, v0

    .line 379
    goto :goto_0

    .line 376
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    .line 377
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanup(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    goto :goto_1
.end method

.method public defocus()V
    .locals 0

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onDefocus()V

    .line 429
    return-void
.end method

.method public defocus(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v0

    .line 491
    .local v0, widgetCache:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    .line 492
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDefocus()V

    .line 494
    :cond_0
    return-void
.end method

.method public focus()V
    .locals 0

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onFocus()V

    .line 421
    return-void
.end method

.method public focus(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v0

    .line 480
    .local v0, widgetCache:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    .line 481
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onFocus()V

    .line 483
    :cond_0
    return-void
.end method

.method public getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "view"

    .prologue
    .line 569
    instance-of v0, p1, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    if-eqz v0, :cond_0

    .line 570
    check-cast p1, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->getSnapshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 574
    :goto_0
    return-object v0

    .line 572
    .restart local p1
    :cond_0
    const-string v0, "AdvWidgetManager"

    const-string v1, "getSnapshot() on non AdvWidgetRoot view"

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpanXY(Lcom/sonyericsson/home/data/AdvWidgetInfo;)[I
    .locals 2
    .parameter "info"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v0

    .line 157
    .local v0, widgetCache:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-nez v0, :cond_0

    .line 158
    sget-object v1, Lcom/sonyericsson/home/widget/AdvWidgetManager;->DEF_SPAN_XY:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [I

    move-object v1, p0

    .line 160
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
    .line 523
    iget-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetExtras:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 526
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
    .line 530
    iget-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetExtras:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetExtras:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWidgetView(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Landroid/view/View;
    .locals 5
    .parameter "info"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v1

    .line 104
    .local v1, widgetCache:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;

    if-nez v2, :cond_0

    .line 106
    :try_start_0
    new-instance v2, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    iget-object v3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mContext:Landroid/app/Activity;

    iget-object v4, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;-><init>(Landroid/content/Context;Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;)V

    iput-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;

    if-nez v2, :cond_3

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 116
    iput-object v0, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;

    :cond_2
    move-object v2, v0

    .line 120
    .end local v0           #view:Landroid/view/View;
    :goto_1
    return-object v2

    :cond_3
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;

    goto :goto_1

    .line 107
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public hasPendingWidgets()Z
    .locals 1

    .prologue
    .line 309
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
    .line 512
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

    .line 513
    .local v2, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;

    instance-of v3, v3, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    if-eqz v3, :cond_0

    .line 514
    iget-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 515
    iget-object v1, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    .line 516
    .local v1, root:Lcom/sonyericsson/home/widget/AdvWidgetRoot;
    invoke-virtual {v1}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->hideWidget()V

    goto :goto_0

    .line 520
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

    .line 338
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;

    .line 339
    .local v0, pinfo:Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;
    if-nez v0, :cond_0

    .line 340
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

    .line 364
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPendingCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    if-ne p2, v4, :cond_1

    .line 349
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->callback:Lcom/sonyericsson/home/widget/OnWidgetConfigured;

    iget-object v2, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    iget-object v3, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->location:Lcom/sonyericsson/grid/GridLocation;

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/home/widget/OnWidgetConfigured;->onWidgetConfigured(Lcom/sonyericsson/home/data/AdvWidgetInfo;Lcom/sonyericsson/grid/GridLocation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 351
    const/4 p2, -0x1

    .line 355
    :cond_1
    if-ne p2, v4, :cond_2

    .line 356
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-virtual {p0, v1, v4}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    goto :goto_0

    .line 360
    :cond_2
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->configured(Lcom/sonyericsson/home/data/AdvWidgetInfo;I)V

    .line 361
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanup(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    goto :goto_0
.end method

.method protected onDefocus()V
    .locals 3

    .prologue
    .line 193
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

    .line 194
    .local v1, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDefocus()V

    goto :goto_0

    .line 196
    .end local v1           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 283
    const-class v2, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    invoke-static {v2}, Lcom/sonyericsson/util/ViewSnapshot;->unregisterRenderer(Ljava/lang/Class;)V

    .line 284
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v2, p0}, Lcom/sonyericsson/home/resourceload/PackageLoader;->removeOnPackageUpdateListener(Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;)V

    .line 285
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

    .line 286
    .local v1, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDestroy()V

    goto :goto_0

    .line 288
    .end local v1           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_0
    return-void
.end method

.method protected onFocus()V
    .locals 3

    .prologue
    .line 199
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

    .line 200
    .local v1, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onFocus()V

    goto :goto_0

    .line 202
    .end local v1           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_0
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    .line 206
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    .line 210
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager;->mWidgetInfoDirty:Z

    .line 214
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 218
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 222
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 169
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

    .line 170
    .local v1, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onPause()V

    goto :goto_0

    .line 172
    .end local v1           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 175
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

    .line 176
    .local v1, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onResume()V

    goto :goto_0

    .line 178
    .end local v1           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_0
    return-void
.end method

.method public onScrolled()V
    .locals 3

    .prologue
    .line 225
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

    .line 226
    .local v1, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onMoved()V

    goto :goto_0

    .line 228
    .end local v1           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 187
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

    .line 188
    .local v1, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStart()V

    goto :goto_0

    .line 190
    .end local v1           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 181
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

    .line 182
    .local v1, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v2, v1, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStop()V

    goto :goto_0

    .line 184
    .end local v1           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onPause()V

    .line 413
    return-void
.end method

.method public pause(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v0

    .line 469
    .local v0, widgetCache:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    .line 470
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onPause()V

    .line 472
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onResume()V

    .line 404
    return-void
.end method

.method public resume(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v0

    .line 457
    .local v0, widgetCache:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    .line 458
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onResume()V

    .line 460
    :cond_0
    return-void
.end method

.method public showOpenGLAdvWidgets()V
    .locals 4

    .prologue
    .line 500
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

    .line 501
    .local v2, w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    iget-object v3, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;

    instance-of v3, v3, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    if-eqz v3, :cond_0

    .line 502
    iget-object v1, v2, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->view:Landroid/view/View;

    check-cast v1, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    .line 503
    .local v1, root:Lcom/sonyericsson/home/widget/AdvWidgetRoot;
    invoke-virtual {v1}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->showWidget()V

    goto :goto_0

    .line 506
    .end local v1           #root:Lcom/sonyericsson/home/widget/AdvWidgetRoot;
    .end local v2           #w:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    :cond_1
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onStart()V

    .line 387
    return-void
.end method

.method public start(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v0

    .line 436
    .local v0, widgetCache:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    .line 437
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStart()V

    .line 439
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onStop()V

    .line 395
    return-void
.end method

.method public stop(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidget(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;

    move-result-object v0

    .line 446
    .local v0, widgetCache:Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    .line 447
    iget-object v1, v0, Lcom/sonyericsson/home/widget/AdvWidgetManager$WidgetCache;->proxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStop()V

    .line 449
    :cond_0
    return-void
.end method

.method public widgetRemoved(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanup(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    .line 166
    return-void
.end method
