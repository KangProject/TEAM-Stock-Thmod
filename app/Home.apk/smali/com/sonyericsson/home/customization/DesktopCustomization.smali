.class public Lcom/sonyericsson/home/customization/DesktopCustomization;
.super Lcom/sonyericsson/home/customization/GenericCustomization;
.source "DesktopCustomization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/customization/DesktopCustomization$AdvWidgetCustomization;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "desktop"


# instance fields
.field private mAdvWidgetCust:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/customization/DesktopCustomization$AdvWidgetCustomization;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mCategories:[Ljava/lang/String;

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
    .line 67
    .local p2, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    const-string v0, "desktop"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/home/customization/GenericCustomization;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    iput-object p3, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 69
    iput-object p2, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mCategories:[Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 74
    iput-object p5, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 75
    iput-object p6, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 76
    return-void
.end method

.method private addActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter "name"
    .parameter "packageName"
    .parameter "pane"
    .parameter "x"
    .parameter "y"
    .parameter "folder"
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
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    const/4 v5, 0x1

    .line 183
    new-instance v2, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v2, p3, p2}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v2, info:Lcom/sonyericsson/home/data/ActivityInfo;
    if-eqz p7, :cond_1

    .line 186
    invoke-direct {p0, p1, p7}, Lcom/sonyericsson/home/customization/DesktopCustomization;->findFolder(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v1

    .line 187
    .local v1, folderItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    .line 189
    .local v0, folderInfo:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v5, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v5, v0, v2}, Lcom/sonyericsson/home/layer/InfoGroupManager;->addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V

    .line 203
    .end local v0           #folderInfo:Lcom/sonyericsson/home/data/InfoGroup;
    .end local v1           #folderItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    new-instance v4, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 193
    .local v4, location:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    iput p5, v4, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 194
    iput p6, v4, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 195
    iput v5, v4, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 196
    iput v5, v4, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 197
    iput p4, v4, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 199
    new-instance v3, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v3, v2, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 200
    .local v3, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addAdvWidget(Ljava/util/ArrayList;Ljava/lang/String;IIIIILandroid/os/Bundle;)V
    .locals 5
    .parameter
    .parameter "packageName"
    .parameter "pane"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "cust"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/layer/desktop/DesktopItem;",
            ">;",
            "Ljava/lang/String;",
            "IIIII",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 258
    .local v2, location:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    iput p4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 259
    iput p5, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 260
    iput p6, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 261
    iput p7, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 262
    iput p3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 264
    new-instance v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v0, p2, v3}, Lcom/sonyericsson/home/data/AdvWidgetInfo;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    .line 265
    .local v0, info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 266
    .local v1, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    if-eqz p8, :cond_1

    .line 268
    iget-object v3, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mAdvWidgetCust:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 269
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mAdvWidgetCust:Ljava/util/ArrayList;

    .line 271
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mAdvWidgetCust:Ljava/util/ArrayList;

    new-instance v4, Lcom/sonyericsson/home/customization/DesktopCustomization$AdvWidgetCustomization;

    invoke-direct {v4, v0, p8}, Lcom/sonyericsson/home/customization/DesktopCustomization$AdvWidgetCustomization;-><init>(Lcom/sonyericsson/home/data/AdvWidgetInfo;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_1
    return-void
.end method

.method private addFolder(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 4
    .parameter
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
            "III)V"
        }
    .end annotation

    .prologue
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    const/4 v3, 0x1

    .line 417
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 418
    .local v2, location:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    iput p5, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 419
    iput p6, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 420
    iput v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 421
    iput v3, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 422
    iput p4, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 424
    new-instance v0, Lcom/sonyericsson/home/data/InfoGroup;

    iget-object v3, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mCategories:[Ljava/lang/String;

    invoke-static {v3, p3}, Lcom/sonyericsson/home/customization/CustomizationUtils;->getFolderIcon([Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, p2, v3}, Lcom/sonyericsson/home/data/InfoGroup;-><init>(Ljava/lang/String;I)V

    .line 425
    .local v0, info:Lcom/sonyericsson/home/data/InfoGroup;
    new-instance v1, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 426
    .local v1, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    return-void
.end method

.method private addShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 12
    .parameter
    .parameter "name"
    .parameter "uri"
    .parameter "iconPackageName"
    .parameter "iconResourceName"
    .parameter "pane"
    .parameter "x"
    .parameter "y"
    .parameter "folder"
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
            "III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    const/4 v6, 0x0

    .line 360
    .local v6, icon:Landroid/content/Intent$ShortcutIconResource;
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 361
    new-instance v6, Landroid/content/Intent$ShortcutIconResource;

    .end local v6           #icon:Landroid/content/Intent$ShortcutIconResource;
    invoke-direct {v6}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 362
    .restart local v6       #icon:Landroid/content/Intent$ShortcutIconResource;
    move-object/from16 v0, p4

    move-object v1, v6

    iput-object v0, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 363
    move-object/from16 v0, p5

    move-object v1, v6

    iput-object v0, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 367
    :cond_0
    :try_start_0
    new-instance v7, Lcom/sonyericsson/home/data/ShortcutInfo;

    const/4 v10, 0x0

    invoke-static {p3, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v7, p2, v10, v6, v11}, Lcom/sonyericsson/home/data/ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V

    .line 369
    .local v7, info:Lcom/sonyericsson/home/data/ShortcutInfo;
    if-eqz p9, :cond_2

    .line 370
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/customization/DesktopCustomization;->findFolder(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v5

    .line 371
    .local v5, folderItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-eqz v5, :cond_1

    .line 372
    invoke-virtual {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/data/InfoGroup;

    .line 373
    .local v4, folderInfo:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v10, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v10, v4, v7}, Lcom/sonyericsson/home/layer/InfoGroupManager;->addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V

    .line 388
    .end local v4           #folderInfo:Lcom/sonyericsson/home/data/InfoGroup;
    .end local v5           #folderItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v7           #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    :cond_1
    :goto_0
    return-void

    .line 376
    .restart local v7       #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    :cond_2
    new-instance v9, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v9}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 377
    .local v9, location:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    move/from16 v0, p7

    move-object v1, v9

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 378
    move/from16 v0, p8

    move-object v1, v9

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 379
    const/4 v10, 0x1

    iput v10, v9, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 380
    const/4 v10, 0x1

    iput v10, v9, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 381
    move/from16 v0, p6

    move-object v1, v9

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 382
    new-instance v8, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v8, v7, v9}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 383
    .local v8, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    .end local v7           #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    .end local v8           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v9           #location:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 386
    .local v3, e:Ljava/net/URISyntaxException;
    const-string v10, "desktop"

    const-string v11, "Shorcut URI parsing failed"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    .line 306
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    new-instance v7, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v7}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    .line 307
    .local v7, location:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    move/from16 v0, p5

    move-object v1, v7

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    .line 308
    move/from16 v0, p6

    move-object v1, v7

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    .line 309
    move/from16 v0, p7

    move-object v1, v7

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->colSpan:I

    .line 310
    move/from16 v0, p8

    move-object v1, v7

    iput v0, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->rowSpan:I

    .line 311
    iput p4, v7, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 312
    const/4 v5, 0x0

    .line 316
    .local v5, isWidgetFound:Z
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/home/customization/DesktopCustomization;->registerAppWidget(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 317
    .local v3, id:I
    const/4 v5, 0x1

    .line 323
    :goto_0
    if-nez v5, :cond_0

    iget-boolean v8, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mIsMissingPackageAllowed:Z

    if-eqz v8, :cond_1

    .line 324
    :cond_0
    new-instance v4, Lcom/sonyericsson/home/data/WidgetInfo;

    invoke-direct {v4, v3, p2, p3}, Lcom/sonyericsson/home/data/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 325
    .local v4, info:Lcom/sonyericsson/home/data/WidgetInfo;
    new-instance v6, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v6, v4, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    .line 326
    .local v6, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-boolean v8, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mIsMissingPackageAllowed:Z

    if-eqz v8, :cond_1

    .line 329
    invoke-static {}, Lcom/sonyericsson/home/customization/PendingPackageList;->getInstance()Lcom/sonyericsson/home/customization/PendingPackageList;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Lcom/sonyericsson/home/customization/PendingPackageList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .end local v4           #info:Lcom/sonyericsson/home/data/WidgetInfo;
    .end local v6           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :cond_1
    return-void

    .line 318
    .end local v3           #id:I
    :catch_0
    move-exception v2

    .line 319
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v8, "desktop"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Problem adding widget: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    const/4 v3, 0x0

    .restart local v3       #id:I
    goto :goto_0
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
    .line 234
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

    .line 235
    .local v2, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    instance-of v3, v3, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v3, :cond_0

    .line 236
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 237
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

    .line 242
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
    .line 293
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

    .line 294
    .local v2, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    instance-of v3, v3, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v3, :cond_0

    .line 295
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .line 296
    .local v1, info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 301
    .end local v1           #info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    .end local v2           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private findFolder(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 4
    .parameter
    .parameter "name"
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
    .line 439
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

    .line 440
    .local v2, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    instance-of v3, v3, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v3, :cond_0

    .line 441
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/InfoGroup;

    .line 442
    .local v1, info:Lcom/sonyericsson/home/data/InfoGroup;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/InfoGroup;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 447
    .end local v1           #info:Lcom/sonyericsson/home/data/InfoGroup;
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
    .line 401
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p3, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 402
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

    .line 403
    .local v4, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v5

    instance-of v5, v5, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v5, :cond_0

    .line 404
    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/data/ShortcutInfo;

    .line 405
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

    .line 413
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    :goto_0
    return-object v5

    .line 410
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 411
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v5, "desktop"

    const-string v6, "Shorcut URI parsing failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
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
    .line 346
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

    .line 347
    .local v2, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    instance-of v3, v3, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v3, :cond_0

    .line 348
    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/WidgetInfo;

    .line 349
    .local v1, info:Lcom/sonyericsson/home/data/WidgetInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/WidgetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 354
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
    .line 451
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .local v0, cmp:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 453
    .local v1, id:I
    iget-object v2, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 454
    return v1
.end method

.method private removeActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter "name"
    .parameter "packageName"
    .parameter "folder"
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
    .line 207
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    if-eqz p4, :cond_2

    .line 208
    invoke-direct {p0, p1, p4}, Lcom/sonyericsson/home/customization/DesktopCustomization;->findFolder(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v3

    .line 209
    .local v3, folderItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-eqz v3, :cond_0

    .line 210
    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/home/data/InfoGroup;

    .line 211
    .local v5, info:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v8, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v8, v5}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getInfoCount(Lcom/sonyericsson/home/data/InfoGroup;)I

    move-result v2

    .line 212
    .local v2, cnt:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 213
    iget-object v8, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v8, v5, v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getInfo(Lcom/sonyericsson/home/data/InfoGroup;I)Lcom/sonyericsson/home/data/Info;

    move-result-object v7

    .line 214
    .local v7, tmp:Lcom/sonyericsson/home/data/Info;
    instance-of v8, v7, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v8, :cond_1

    .line 215
    move-object v0, v7

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    move-object v1, v0

    .line 216
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

    .line 217
    iget-object v8, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v8, v5, v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->remove(Lcom/sonyericsson/home/data/InfoGroup;I)Lcom/sonyericsson/home/data/Info;

    .line 231
    .end local v1           #activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    .end local v2           #cnt:I
    .end local v3           #folderItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v4           #i:I
    .end local v5           #info:Lcom/sonyericsson/home/data/InfoGroup;
    .end local v7           #tmp:Lcom/sonyericsson/home/data/Info;
    :cond_0
    :goto_1
    return-void

    .line 212
    .restart local v2       #cnt:I
    .restart local v3       #folderItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .restart local v4       #i:I
    .restart local v5       #info:Lcom/sonyericsson/home/data/InfoGroup;
    .restart local v7       #tmp:Lcom/sonyericsson/home/data/Info;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 224
    .end local v2           #cnt:I
    .end local v3           #folderItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .end local v4           #i:I
    .end local v5           #info:Lcom/sonyericsson/home/data/InfoGroup;
    .end local v7           #tmp:Lcom/sonyericsson/home/data/Info;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/home/customization/DesktopCustomization;->findActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v6

    .line 225
    .local v6, item:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-nez v6, :cond_3

    .line 226
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

    .line 228
    :cond_3
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private removeAdvWidget(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
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
    .line 276
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/customization/DesktopCustomization;->findAdvWidget(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v2

    .line 277
    .local v2, info:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-nez v2, :cond_1

    .line 278
    const-string v3, "desktop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring removal of missing AdvWidget item : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 283
    iget-object v3, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mAdvWidgetCust:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/customization/DesktopCustomization$AdvWidgetCustomization;

    .line 284
    .local v0, cust:Lcom/sonyericsson/home/customization/DesktopCustomization$AdvWidgetCustomization;
    iget-object v3, v0, Lcom/sonyericsson/home/customization/DesktopCustomization$AdvWidgetCustomization;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 285
    iget-object v3, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mAdvWidgetCust:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeFolder(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "name"
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
    .line 430
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/customization/DesktopCustomization;->findFolder(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    .line 431
    .local v0, info:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-nez v0, :cond_0

    .line 432
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

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
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
    .line 391
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/home/customization/DesktopCustomization;->findShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    .line 392
    .local v0, info:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-nez v0, :cond_0

    .line 393
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

    .line 397
    :goto_0
    return-void

    .line 395
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
    .line 337
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/layer/desktop/DesktopItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/customization/DesktopCustomization;->findWidget(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    .line 338
    .local v0, info:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    if-nez v0, :cond_0

    .line 339
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

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public finish(Lcom/sonyericsson/home/widget/AdvWidgetManager;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 4
    .parameter "advWidgetMgr"
    .parameter "resourceLoader"

    .prologue
    .line 458
    iget-object v2, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mAdvWidgetCust:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mAdvWidgetCust:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/customization/DesktopCustomization$AdvWidgetCustomization;

    .line 460
    .local v1, widgetCust:Lcom/sonyericsson/home/customization/DesktopCustomization$AdvWidgetCustomization;
    iget-object v2, v1, Lcom/sonyericsson/home/customization/DesktopCustomization$AdvWidgetCustomization;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    iget-object v3, v1, Lcom/sonyericsson/home/customization/DesktopCustomization$AdvWidgetCustomization;->settings:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->customize(Lcom/sonyericsson/home/data/AdvWidgetInfo;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 464
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #widgetCust:Lcom/sonyericsson/home/customization/DesktopCustomization$AdvWidgetCustomization;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/home/layer/InfoGroupManager;->cacheShortcuts(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 465
    return-void
.end method

.method protected handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 37
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
    .line 81
    .local p3, settings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "activities"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 83
    .local v7, name:Ljava/lang/String;
    const-string v5, "package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 84
    .local v8, packageName:Ljava/lang/String;
    const-string v5, "folder"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 85
    .local v12, folder:Ljava/lang/String;
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

    .line 86
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

    .line 87
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

    .line 88
    .local v11, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-object v5, v0

    invoke-virtual {v5, v7, v8}, Lcom/sonyericsson/home/resourceload/PackageLoader;->isActivityInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/sonyericsson/home/customization/DesktopCustomization;->addActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 178
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #pane:I
    .end local v10           #x:I
    .end local v11           #y:I
    .end local v12           #folder:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v5, 0x1

    :goto_1
    return v5

    .line 90
    .restart local v7       #name:Ljava/lang/String;
    .restart local v8       #packageName:Ljava/lang/String;
    .restart local v9       #pane:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    .restart local v12       #folder:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mIsMissingPackageAllowed:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 92
    invoke-static {}, Lcom/sonyericsson/home/customization/PendingPackageList;->getInstance()Lcom/sonyericsson/home/customization/PendingPackageList;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Lcom/sonyericsson/home/customization/PendingPackageList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/sonyericsson/home/customization/DesktopCustomization;->addActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #pane:I
    .end local v10           #x:I
    .end local v11           #y:I
    .end local v12           #folder:Ljava/lang/String;
    .restart local p1
    :cond_2
    const-string v5, "remove-activities"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 96
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 97
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 98
    .restart local v8       #packageName:Ljava/lang/String;
    const-string v5, "folder"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 99
    .restart local v12       #folder:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object v3, v8

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/home/customization/DesktopCustomization;->removeActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v12           #folder:Ljava/lang/String;
    :cond_3
    const-string v5, "widgets"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 101
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 102
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 103
    .restart local v8       #packageName:Ljava/lang/String;
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

    .line 104
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

    .line 105
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

    .line 106
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

    .line 107
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

    .line 108
    .local v21, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v14, v0

    move-object/from16 v13, p0

    move-object v15, v7

    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-direct/range {v13 .. v21}, Lcom/sonyericsson/home/customization/DesktopCustomization;->addWidget(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIIII)V

    goto/16 :goto_0

    .line 109
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

    .line 110
    const-string v5, "package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 111
    .restart local v8       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/customization/DesktopCustomization;->removeWidget(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    .end local v8           #packageName:Ljava/lang/String;
    :cond_5
    const-string v5, "advanced-widgets"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 113
    const/4 v8, 0x0

    .line 114
    .restart local v8       #packageName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 115
    .restart local v9       #pane:I
    const/4 v10, 0x0

    .line 116
    .restart local v10       #x:I
    const/4 v11, 0x0

    .line 117
    .restart local v11       #y:I
    const/16 v20, 0x0

    .line 118
    .restart local v20       #width:I
    const/16 v21, 0x0

    .line 119
    .restart local v21       #height:I
    const/16 v22, 0x0

    .line 121
    .local v22, cust:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/Map$Entry;

    .line 122
    .local v35, setting:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v35 .. v35}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 123
    .local v34, key:Ljava/lang/String;
    invoke-interface/range {v35 .. v35}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 125
    .local v36, value:Ljava/lang/String;
    const-string v5, "package-name"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 126
    move-object/from16 v8, v36

    goto :goto_2

    .line 127
    :cond_6
    const-string v5, "pane"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 128
    const/4 v5, 0x0

    move-object/from16 v0, v36

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v9

    goto :goto_2

    .line 129
    :cond_7
    const-string v5, "x"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 130
    const/4 v5, 0x0

    move-object/from16 v0, v36

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v10

    goto :goto_2

    .line 131
    :cond_8
    const-string v5, "y"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 132
    const/4 v5, 0x0

    move-object/from16 v0, v36

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v11

    goto :goto_2

    .line 133
    :cond_9
    const-string v5, "width"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 134
    const/4 v5, 0x0

    move-object/from16 v0, v36

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v20

    goto :goto_2

    .line 135
    :cond_a
    const-string v5, "height"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 136
    const/4 v5, 0x0

    move-object/from16 v0, v36

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v21

    goto/16 :goto_2

    .line 140
    :cond_b
    if-nez v22, :cond_c

    .line 141
    new-instance v22, Landroid/os/Bundle;

    .end local v22           #cust:Landroid/os/Bundle;
    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 143
    .restart local v22       #cust:Landroid/os/Bundle;
    :cond_c
    move-object/from16 v0, v22

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 147
    .end local v34           #key:Ljava/lang/String;
    .end local v35           #setting:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v36           #value:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v15, v0

    move-object/from16 v14, p0

    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-direct/range {v14 .. v22}, Lcom/sonyericsson/home/customization/DesktopCustomization;->addAdvWidget(Ljava/util/ArrayList;Ljava/lang/String;IIIIILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 148
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #pane:I
    .end local v10           #x:I
    .end local v11           #y:I
    .end local v20           #width:I
    .end local v21           #height:I
    .end local v22           #cust:Landroid/os/Bundle;
    .end local v33           #i$:Ljava/util/Iterator;
    :cond_e
    const-string v5, "remove-advanced-widgets"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 149
    const-string v5, "package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 150
    .restart local v8       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/customization/DesktopCustomization;->removeAdvWidget(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    .end local v8           #packageName:Ljava/lang/String;
    :cond_f
    const-string v5, "shortcuts"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 152
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 153
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "uri"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 154
    .local v26, uri:Ljava/lang/String;
    const-string v5, "icon-package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 155
    .local v27, iconPackageName:Ljava/lang/String;
    const-string v5, "icon-resource-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 156
    .local v28, iconResourceName:Ljava/lang/String;
    const-string v5, "folder"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 157
    .restart local v12       #folder:Ljava/lang/String;
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

    .line 158
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

    .line 159
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

    .line 160
    .restart local v11       #y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v23, p0

    move-object/from16 v25, v7

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move-object/from16 v32, v12

    invoke-direct/range {v23 .. v32}, Lcom/sonyericsson/home/customization/DesktopCustomization;->addShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto/16 :goto_0

    .line 161
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #pane:I
    .end local v10           #x:I
    .end local v11           #y:I
    .end local v12           #folder:Ljava/lang/String;
    .end local v26           #uri:Ljava/lang/String;
    .end local v27           #iconPackageName:Ljava/lang/String;
    .end local v28           #iconResourceName:Ljava/lang/String;
    .restart local p1
    :cond_10
    const-string v5, "remove-shortcuts"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 162
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 163
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "uri"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 164
    .restart local v26       #uri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/home/customization/DesktopCustomization;->removeShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    .end local v7           #name:Ljava/lang/String;
    .end local v26           #uri:Ljava/lang/String;
    :cond_11
    const-string v5, "folders"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 166
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 167
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "category"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 168
    .local v16, category:Ljava/lang/String;
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

    .line 169
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

    .line 170
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

    .line 171
    .restart local v11       #y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v14, v0

    move-object/from16 v13, p0

    move-object v15, v7

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-direct/range {v13 .. v19}, Lcom/sonyericsson/home/customization/DesktopCustomization;->addFolder(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 172
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #pane:I
    .end local v10           #x:I
    .end local v11           #y:I
    .end local v16           #category:Ljava/lang/String;
    .restart local p1
    :cond_12
    const-string v5, "remove-folders"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 173
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 174
    .restart local v7       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/DesktopCustomization;->mModel:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/customization/DesktopCustomization;->removeFolder(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    .end local v7           #name:Ljava/lang/String;
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_1
.end method
