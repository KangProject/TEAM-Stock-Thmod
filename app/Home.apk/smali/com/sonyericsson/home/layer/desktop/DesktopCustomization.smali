.class public Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;
.super Lcom/sonyericsson/home/customization/GenericCustomization;
.source "DesktopCustomization.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "desktop"


# instance fields
.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mCategories:[Ljava/lang/String;

.field private mFolderNames:[Ljava/lang/String;

.field private mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field private mModel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/home/layer/InfoGroupManager;Landroid/appwidget/AppWidgetManager;Landroid/appwidget/AppWidgetHost;Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "infoGroupManager"
    .parameter "appWidgetManager"
    .parameter "appWidgetHost"
    .parameter "packageLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Lcom/sonyericsson/home/layer/InfoGroupManager;",
            "Landroid/appwidget/AppWidgetManager;",
            "Landroid/appwidget/AppWidgetHost;",
            "Lcom/sonyericsson/home/resourceload/PackageLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    const-string v0, "desktop"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/home/customization/GenericCustomization;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mFolders:Ljava/util/HashMap;

    .line 67
    iput-object p3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 68
    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mCategories:[Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mFolderNames:[Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 73
    iput-object p5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 74
    iput-object p6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 75
    return-void
.end method

.method private addActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 11
    .parameter
    .parameter "name"
    .parameter "packageName"
    .parameter "pane"
    .parameter "x"
    .parameter "y"
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    :try_start_0
    new-instance v5, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v5, p3, p2}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .local v5, info:Lcom/sonyericsson/home/data/ActivityInfo;
    if-eqz p7, :cond_1

    .line 203
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mFolders:Ljava/util/HashMap;

    move-object v0, v8

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 204
    .local v4, folderItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-eqz v4, :cond_0

    .line 205
    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/data/InfoGroup;

    .line 206
    .local v3, folderInfo:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v8, v3, v5}, Lcom/sonyericsson/home/layer/InfoGroupManager;->addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V

    .line 225
    .end local v3           #folderInfo:Lcom/sonyericsson/home/data/InfoGroup;
    .end local v4           #folderItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v5           #info:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 209
    .restart local v5       #info:Lcom/sonyericsson/home/data/ActivityInfo;
    :cond_1
    new-instance v7, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v7}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 210
    .local v7, location:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    move/from16 v0, p5

    move-object v1, v7

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 211
    move/from16 v0, p6

    move-object v1, v7

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 212
    const/4 v8, 0x1

    iput v8, v7, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 213
    const/4 v8, 0x1

    iput v8, v7, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 214
    iput p4, v7, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 216
    new-instance v6, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v6, v5, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 217
    .local v6, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-direct {p0, p1, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->removeOverlappingItems(Ljava/util/ArrayList;Lcom/sonyericsson/home/layer/desktop/DesktopItem;)V

    .line 218
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    .end local v5           #info:Lcom/sonyericsson/home/data/ActivityInfo;
    .end local v6           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v7           #location:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 221
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "desktop"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to add activity item, packageName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addAdvWidget(Ljava/util/ArrayList;Ljava/lang/String;IIIIILjava/util/HashMap;)V
    .locals 4
    .parameter
    .parameter "packageName"
    .parameter "pane"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    .local p8, custMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 273
    .local v2, location:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    iput p4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 274
    iput p5, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 275
    iput p6, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 276
    iput p7, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 277
    iput p3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 279
    new-instance v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v0, p2, v3, p8}, Lcom/sonyericsson/home/data/AdvWidgetInfo;-><init>(Ljava/lang/String;Ljava/util/UUID;Ljava/util/HashMap;)V

    .line 280
    .local v0, info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 281
    .local v1, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->removeOverlappingItems(Ljava/util/ArrayList;Lcom/sonyericsson/home/layer/desktop/DesktopItem;)V

    .line 282
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method private addFolder(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 4
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter "category"
    .parameter "pane"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .prologue
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    const/4 v3, 0x1

    .line 420
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 421
    .local v2, location:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    iput p6, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 422
    iput p7, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 423
    iput v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 424
    iput v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 425
    iput p5, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 427
    new-instance v0, Lcom/sonyericsson/home/data/InfoGroup;

    invoke-direct {v0, p3}, Lcom/sonyericsson/home/data/InfoGroup;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, info:Lcom/sonyericsson/home/data/InfoGroup;
    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 429
    .local v1, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->removeOverlappingItems(Ljava/util/ArrayList;Lcom/sonyericsson/home/layer/desktop/DesktopItem;)V

    .line 431
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    return-void
.end method

.method private addShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 10
    .parameter
    .parameter "name"
    .parameter "uri"
    .parameter "iconPackageName"
    .parameter "iconResourceName"
    .parameter "iconFilename"
    .parameter "pane"
    .parameter "x"
    .parameter "y"
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    :try_start_0
    invoke-static/range {p2 .. p6}, Lcom/sonyericsson/home/customization/CustomizationUtils;->createShortcutInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/home/data/ShortcutInfo;

    move-result-object v5

    .line 370
    .local v5, info:Lcom/sonyericsson/home/data/ShortcutInfo;
    if-eqz p10, :cond_1

    .line 371
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mFolders:Ljava/util/HashMap;

    move-object v0, v8

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 372
    .local v4, folderItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-eqz v4, :cond_0

    .line 373
    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/data/InfoGroup;

    .line 374
    .local v3, folderInfo:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v8, v3, v5}, Lcom/sonyericsson/home/layer/InfoGroupManager;->addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V

    .line 390
    .end local v3           #folderInfo:Lcom/sonyericsson/home/data/InfoGroup;
    .end local v4           #folderItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v5           #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    :cond_0
    :goto_0
    return-void

    .line 377
    .restart local v5       #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    :cond_1
    new-instance v7, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v7}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 378
    .local v7, location:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    move/from16 v0, p8

    move-object v1, v7

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 379
    move/from16 v0, p9

    move-object v1, v7

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 380
    const/4 v8, 0x1

    iput v8, v7, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 381
    const/4 v8, 0x1

    iput v8, v7, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 382
    move/from16 v0, p7

    move-object v1, v7

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 383
    new-instance v6, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v6, v5, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 384
    .local v6, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-direct {p0, p1, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->removeOverlappingItems(Ljava/util/ArrayList;Lcom/sonyericsson/home/layer/desktop/DesktopItem;)V

    .line 385
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    .end local v5           #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    .end local v6           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v7           #location:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 388
    .local v2, e:Ljava/net/URISyntaxException;
    const-string v8, "desktop"

    const-string v9, "Shorcut URI parsing failed"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addWidget(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 11
    .parameter
    .parameter "name"
    .parameter "packageName"
    .parameter "pane"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    new-instance v7, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v7}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 309
    .local v7, location:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    move/from16 v0, p5

    move-object v1, v7

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 310
    move/from16 v0, p6

    move-object v1, v7

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 311
    move/from16 v0, p7

    move-object v1, v7

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 312
    move/from16 v0, p8

    move-object v1, v7

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 313
    iput p4, v7, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 314
    const/4 v5, 0x0

    .line 318
    .local v5, isWidgetFound:Z
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->registerAppWidget(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 319
    .local v3, id:I
    const/4 v5, 0x1

    .line 325
    :goto_0
    if-nez v5, :cond_0

    iget-boolean v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mIsMissingPackageAllowed:Z

    if-eqz v8, :cond_1

    .line 327
    :cond_0
    if-eqz v5, :cond_2

    .line 328
    new-instance v4, Lcom/sonyericsson/home/data/WidgetInfo;

    invoke-direct {v4, v3, p2, p3}, Lcom/sonyericsson/home/data/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 334
    .local v4, info:Lcom/sonyericsson/home/data/WidgetInfo;
    :goto_1
    new-instance v6, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v6, v4, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 335
    .local v6, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-direct {p0, p1, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->removeOverlappingItems(Ljava/util/ArrayList;Lcom/sonyericsson/home/layer/desktop/DesktopItem;)V

    .line 336
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v4           #info:Lcom/sonyericsson/home/data/WidgetInfo;
    .end local v6           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_1
    return-void

    .line 320
    .end local v3           #id:I
    :catch_0
    move-exception v2

    .line 321
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v8, "desktop"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to register app widget: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v3, 0x0

    .restart local v3       #id:I
    goto :goto_0

    .line 330
    .end local v2           #e:Ljava/lang/RuntimeException;
    :cond_2
    new-instance v4, Lcom/sonyericsson/home/data/WidgetInfo;

    const/4 v8, 0x1

    invoke-direct {v4, v3, p2, p3, v8}, Lcom/sonyericsson/home/data/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 331
    .restart local v4       #info:Lcom/sonyericsson/home/data/WidgetInfo;
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v8, p3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addPendingPackage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private deleteAppWidgetId(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 452
    if-eqz p1, :cond_0

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 455
    :cond_0
    return-void
.end method

.method private findActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 4
    .parameter
    .parameter "name"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 260
    .local v2, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    instance-of v3, v3, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v3, :cond_0

    .line 261
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 262
    .local v1, info:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 267
    .end local v1           #info:Lcom/sonyericsson/home/data/ActivityInfo;
    .end local v2           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private findAdvWidget(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 4
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 296
    .local v2, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    instance-of v3, v3, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v3, :cond_0

    .line 297
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .line 298
    .local v1, info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 303
    .end local v1           #info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    .end local v2           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private findShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 7
    .parameter
    .parameter "name"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p3, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 404
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 405
    .local v4, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v5

    instance-of v5, v5, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v5, :cond_0

    .line 406
    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/data/ShortcutInfo;

    .line 407
    .local v2, info:Lcom/sonyericsson/home/data/ShortcutInfo;
    invoke-virtual {v2}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/sonyericsson/home/data/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v4

    .line 415
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :goto_0
    return-object v5

    .line 412
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 413
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v5, "desktop"

    const-string v6, "Shorcut URI parsing failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    .end local v0           #e:Ljava/net/URISyntaxException;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private findWidget(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 4
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 353
    .local v2, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    instance-of v3, v3, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v3, :cond_0

    .line 354
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/WidgetInfo;

    .line 355
    .local v1, info:Lcom/sonyericsson/home/data/WidgetInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/WidgetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 360
    .end local v1           #info:Lcom/sonyericsson/home/data/WidgetInfo;
    .end local v2           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private registerAppWidget(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "name"
    .parameter "packageName"

    .prologue
    .line 445
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .local v0, cmp:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 447
    .local v1, id:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 448
    return v1
.end method

.method private removeActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter "name"
    .parameter "packageName"
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    if-eqz p4, :cond_2

    .line 230
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v8, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 231
    .local v3, folderItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-eqz v3, :cond_0

    .line 232
    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/home/data/InfoGroup;

    .line 233
    .local v5, info:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v8, v5}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getInfoCount(Lcom/sonyericsson/home/data/InfoGroup;)I

    move-result v2

    .line 234
    .local v2, cnt:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 235
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v8, v5, v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getInfo(Lcom/sonyericsson/home/data/InfoGroup;I)Lcom/sonyericsson/home/data/Info;

    move-result-object v7

    .line 236
    .local v7, tmp:Lcom/sonyericsson/home/data/Info;
    instance-of v8, v7, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v8, :cond_1

    .line 237
    move-object v0, v7

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    move-object v1, v0

    .line 238
    .local v1, activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 240
    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v8, v5, v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->remove(Lcom/sonyericsson/home/data/InfoGroup;I)Lcom/sonyericsson/home/data/Info;

    .line 255
    .end local v1           #activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    .end local v2           #cnt:I
    .end local v3           #folderItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v4           #i:I
    .end local v5           #info:Lcom/sonyericsson/home/data/InfoGroup;
    .end local v7           #tmp:Lcom/sonyericsson/home/data/Info;
    :cond_0
    :goto_1
    return-void

    .line 234
    .restart local v2       #cnt:I
    .restart local v3       #folderItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .restart local v4       #i:I
    .restart local v5       #info:Lcom/sonyericsson/home/data/InfoGroup;
    .restart local v7       #tmp:Lcom/sonyericsson/home/data/Info;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 247
    .end local v2           #cnt:I
    .end local v3           #folderItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v4           #i:I
    .end local v5           #info:Lcom/sonyericsson/home/data/InfoGroup;
    .end local v7           #tmp:Lcom/sonyericsson/home/data/Info;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->findActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v6

    .line 248
    .local v6, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-nez v6, :cond_3

    .line 249
    const-string v8, "desktop"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring removal of missing Activity shortcut item : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 252
    :cond_3
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private removeAdvWidget(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->findAdvWidget(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    .line 287
    .local v0, info:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-nez v0, :cond_0

    .line 288
    const-string v1, "desktop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring removal of missing AdvWidget item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeFolder(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 437
    .local v0, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-nez v0, :cond_0

    .line 438
    const-string v1, "desktop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring removal of missing folder item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeOverlappingItems(Ljava/util/ArrayList;Lcom/sonyericsson/home/layer/desktop/DesktopItem;)V
    .locals 5
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 460
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 462
    .local v2, modelItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->overlaps(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 464
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    instance-of v3, v0, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v3, :cond_1

    .line 465
    check-cast v0, Lcom/sonyericsson/home/data/WidgetInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v0}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->deleteAppWidgetId(I)V

    .line 467
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 470
    .end local v2           #modelItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_2
    return-void
.end method

.method private removeShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "name"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->findShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    .line 394
    .local v0, info:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-nez v0, :cond_0

    .line 395
    const-string v1, "desktop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring removal of missing shortcut item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeWidget(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->findWidget(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    .line 343
    .local v0, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-nez v0, :cond_0

    .line 344
    const-string v1, "desktop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring removal of missing widget item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/WidgetInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->deleteAppWidgetId(I)V

    .line 347
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 42
    .parameter "groupType"
    .parameter "groupId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p3, settings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "activities"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    const-string v5, "package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 82
    .local v8, packageName:Ljava/lang/String;
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/sonyericsson/home/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, name:Ljava/lang/String;
    const-string v5, "folder"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 84
    .local v12, folderId:Ljava/lang/String;
    const-string v5, "pane"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 85
    .local v9, pane:I
    const-string v5, "x"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 86
    .local v10, x:I
    const-string v5, "y"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 87
    .local v11, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-object v5, v0

    invoke-virtual {v5, v7, v8}, Lcom/sonyericsson/home/resourceload/PackageLoader;->isActivityInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->addActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 194
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #pane:I
    .end local v10           #x:I
    .end local v11           #y:I
    .end local v12           #folderId:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v5, 0x1

    :goto_1
    return v5

    .line 89
    .restart local v7       #name:Ljava/lang/String;
    .restart local v8       #packageName:Ljava/lang/String;
    .restart local v9       #pane:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    .restart local v12       #folderId:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mIsMissingPackageAllowed:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-object v5, v0

    invoke-virtual {v5, v8}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addPendingPackage(Ljava/lang/String;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->addActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #pane:I
    .end local v10           #x:I
    .end local v11           #y:I
    .end local v12           #folderId:Ljava/lang/String;
    .restart local p1
    :cond_2
    const-string v5, "remove-activities"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 97
    const-string v5, "package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 98
    .restart local v8       #packageName:Ljava/lang/String;
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/sonyericsson/home/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 99
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "folder"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 100
    .restart local v12       #folderId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object v3, v8

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->removeActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v12           #folderId:Ljava/lang/String;
    .restart local p1
    :cond_3
    const-string v5, "widgets"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 102
    const-string v5, "package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 103
    .restart local v8       #packageName:Ljava/lang/String;
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/sonyericsson/home/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 104
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "pane"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 105
    .restart local v9       #pane:I
    const-string v5, "x"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 106
    .restart local v10       #x:I
    const-string v5, "y"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 107
    .restart local v11       #y:I
    const-string v5, "width"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v20

    .line 108
    .local v20, width:I
    const-string v5, "height"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v21

    .line 109
    .local v21, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v14, v0

    move-object/from16 v13, p0

    move-object v15, v7

    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-direct/range {v13 .. v21}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->addWidget(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIIII)V

    goto/16 :goto_0

    .line 110
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #pane:I
    .end local v10           #x:I
    .end local v11           #y:I
    .end local v20           #width:I
    .end local v21           #height:I
    .restart local p1
    :cond_4
    const-string v5, "remove-widgets"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 111
    const-string v5, "package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 112
    .restart local v8       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->removeWidget(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    .end local v8           #packageName:Ljava/lang/String;
    :cond_5
    const-string v5, "advanced-widgets"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 114
    const/4 v8, 0x0

    .line 115
    .restart local v8       #packageName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 116
    .restart local v9       #pane:I
    const/4 v10, 0x0

    .line 117
    .restart local v10       #x:I
    const/4 v11, 0x0

    .line 118
    .restart local v11       #y:I
    const/16 v20, 0x0

    .line 119
    .restart local v20       #width:I
    const/16 v21, 0x0

    .line 120
    .restart local v21       #height:I
    const/16 v22, 0x0

    .line 122
    .local v22, custMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .local v38, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/Map$Entry;

    .line 123
    .local v40, setting:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 124
    .local v39, key:Ljava/lang/String;
    invoke-interface/range {v40 .. v40}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    .line 126
    .local v41, value:Ljava/lang/String;
    const-string v5, "package-name"

    move-object v0, v5

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 127
    move-object/from16 v8, v41

    goto :goto_2

    .line 128
    :cond_6
    const-string v5, "pane"

    move-object v0, v5

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 129
    const/4 v5, 0x0

    move-object/from16 v0, v41

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v9

    goto :goto_2

    .line 130
    :cond_7
    const-string v5, "x"

    move-object v0, v5

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 131
    const/4 v5, 0x0

    move-object/from16 v0, v41

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v10

    goto :goto_2

    .line 132
    :cond_8
    const-string v5, "y"

    move-object v0, v5

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 133
    const/4 v5, 0x0

    move-object/from16 v0, v41

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v11

    goto :goto_2

    .line 134
    :cond_9
    const-string v5, "width"

    move-object v0, v5

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 135
    const/4 v5, 0x0

    move-object/from16 v0, v41

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v20

    goto :goto_2

    .line 136
    :cond_a
    const-string v5, "height"

    move-object v0, v5

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 137
    const/4 v5, 0x0

    move-object/from16 v0, v41

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v21

    goto/16 :goto_2

    .line 141
    :cond_b
    if-nez v22, :cond_c

    .line 142
    new-instance v22, Ljava/util/HashMap;

    .end local v22           #custMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 144
    .restart local v22       #custMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 148
    .end local v39           #key:Ljava/lang/String;
    .end local v40           #setting:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v41           #value:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v15, v0

    move-object/from16 v14, p0

    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-direct/range {v14 .. v22}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->addAdvWidget(Ljava/util/ArrayList;Ljava/lang/String;IIIIILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 149
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #pane:I
    .end local v10           #x:I
    .end local v11           #y:I
    .end local v20           #width:I
    .end local v21           #height:I
    .end local v22           #custMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v38           #i$:Ljava/util/Iterator;
    :cond_e
    const-string v5, "remove-advanced-widgets"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 150
    const-string v5, "package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 151
    .restart local v8       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->removeAdvWidget(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    .end local v8           #packageName:Ljava/lang/String;
    :cond_f
    const-string v5, "shortcuts"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 153
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 154
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "uri"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 155
    .local v26, uri:Ljava/lang/String;
    const-string v5, "icon-package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 156
    .local v27, iconPackageName:Ljava/lang/String;
    const-string v5, "icon-resource-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 157
    .local v28, iconResourceName:Ljava/lang/String;
    const-string v5, "icon-filename"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 158
    .local v29, iconFilename:Ljava/lang/String;
    const-string v5, "folder"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 159
    .restart local v12       #folderId:Ljava/lang/String;
    const-string v5, "pane"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 160
    .restart local v9       #pane:I
    const-string v5, "x"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 161
    .restart local v10       #x:I
    const-string v5, "y"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 162
    .restart local v11       #y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v23, p0

    move-object/from16 v25, v7

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move-object/from16 v33, v12

    invoke-direct/range {v23 .. v33}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->addShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto/16 :goto_0

    .line 164
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #pane:I
    .end local v10           #x:I
    .end local v11           #y:I
    .end local v12           #folderId:Ljava/lang/String;
    .end local v26           #uri:Ljava/lang/String;
    .end local v27           #iconPackageName:Ljava/lang/String;
    .end local v28           #iconResourceName:Ljava/lang/String;
    .end local v29           #iconFilename:Ljava/lang/String;
    .restart local p1
    :cond_10
    const-string v5, "remove-shortcuts"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 165
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 166
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "uri"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 167
    .restart local v26       #uri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->removeShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    .end local v7           #name:Ljava/lang/String;
    .end local v26           #uri:Ljava/lang/String;
    :cond_11
    const-string v5, "folders"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 169
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 170
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "category"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 171
    .local v34, category:Ljava/lang/String;
    const-string v5, "id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 172
    .local v32, id:Ljava/lang/String;
    if-nez v7, :cond_12

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mCategories:[Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mFolderNames:[Ljava/lang/String;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/home/customization/CustomizationUtils;->getFolderName([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 175
    :cond_12
    if-nez v32, :cond_13

    .line 178
    move-object/from16 v32, v7

    .line 180
    :cond_13
    const-string v5, "pane"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 181
    .restart local v9       #pane:I
    const-string v5, "x"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 182
    .restart local v10       #x:I
    const-string v5, "y"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 183
    .restart local v11       #y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v30, p0

    move-object/from16 v33, v7

    move/from16 v35, v9

    move/from16 v36, v10

    move/from16 v37, v11

    invoke-direct/range {v30 .. v37}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->addFolder(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 184
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #pane:I
    .end local v10           #x:I
    .end local v11           #y:I
    .end local v32           #id:Ljava/lang/String;
    .end local v34           #category:Ljava/lang/String;
    .restart local p1
    :cond_14
    const-string v5, "remove-folders"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 185
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 186
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 187
    .restart local v32       #id:Ljava/lang/String;
    if-nez v32, :cond_15

    .line 188
    move-object/from16 v32, v7

    .line 190
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopCustomization;->removeFolder(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    .end local v7           #name:Ljava/lang/String;
    .end local v32           #id:Ljava/lang/String;
    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_1
.end method
