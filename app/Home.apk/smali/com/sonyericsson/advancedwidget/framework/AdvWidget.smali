.class public abstract Lcom/sonyericsson/advancedwidget/framework/AdvWidget;
.super Lcom/sonyericsson/advancedwidget/framework/Stub;
.source "AdvWidget.java"


# static fields
.field public static final CONFIG_FAILED:I = -0x1

.field public static final CONFIG_PENDING:I = 0x0

.field public static final CONFIG_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AdvWidget"

.field public static final TYPE_GL:I = 0x1

.field public static final TYPE_UI:I = 0x0

.field public static final TYPE_WEB:I = 0x2

.field private static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/sonyericsson/advancedwidget/framework/AdvWidget;",
            ">;"
        }
    .end annotation
.end field

.field private static sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mId:Ljava/util/UUID;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/Stub;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mType:I

    .line 107
    return-void
.end method

.method private findConfig(Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    .locals 4
    .parameter "id"

    .prologue
    .line 418
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, sid:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v3}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 420
    sget-object v3, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->getChild(I)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v0

    .line 421
    .local v0, child:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    const-string v3, "uuid"

    invoke-virtual {v0, v3}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 425
    .end local v0           #child:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    :goto_1
    return-object v3

    .line 419
    .restart local v0       #child:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .end local v0           #child:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static final getWidget(Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/AdvWidget;
    .locals 1
    .parameter "id"

    .prologue
    .line 328
    sget-object v0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;

    return-object p0
.end method

.method public static final getWidgetIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    sget-object v0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static reset_test(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "diskAsWell"

    .prologue
    .line 524
    sget-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 525
    const/4 v2, 0x0

    sput-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    .line 526
    if-eqz p1, :cond_0

    .line 527
    const-string v2, "files"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 528
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 529
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 531
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private restoreConfig()V
    .locals 5

    .prologue
    .line 393
    sget-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    if-nez v2, :cond_0

    .line 395
    iget-object v2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mContext:Landroid/content/Context;

    const-string v3, "files"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 396
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 397
    .local v1, f:Ljava/io/File;
    invoke-static {v1}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->readDocument(Ljava/io/File;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v2

    sput-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    .line 398
    sget-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    if-nez v2, :cond_0

    .line 400
    new-instance v2, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    const-string v3, "widgetconfig"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;-><init>(Ljava/lang/String;Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V

    sput-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    .line 406
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->findConfig(Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v2

    if-nez v2, :cond_1

    .line 407
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getConfig(Z)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    .line 408
    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->saveConfig()V

    .line 410
    :cond_1
    return-void
.end method

.method private saveConfig()V
    .locals 5

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "files"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 433
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 434
    .local v1, f:Ljava/io/File;
    sget-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->writeDocumentTo(Ljava/io/File;)Z

    .line 435
    return-void
.end method


# virtual methods
.method protected call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "funcName"
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 444
    const-string v3, "init"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 446
    .local v1, comm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;

    invoke-direct {v2, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;-><init>(Ljava/util/Map;)V

    .line 447
    .local v2, host:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;
    iget-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;->setId(Ljava/util/UUID;)V

    .line 448
    invoke-virtual {p0, v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->init(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;)V

    move-object v3, v6

    .line 511
    .end local v1           #comm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #host:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;
    .end local p2
    :goto_0
    return-object v3

    .line 450
    .restart local p2
    :cond_0
    const-string v3, "onCreate"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 452
    check-cast p2, Landroid/content/Context;

    .end local p2
    iput-object p2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mContext:Landroid/content/Context;

    .line 454
    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->restoreConfig()V

    .line 456
    iget-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onCreate(Landroid/content/Context;)V

    move-object v3, v6

    .line 457
    goto :goto_0

    .line 458
    .restart local p2
    :cond_1
    const-string v3, "onDestroy"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onDestroy()V

    .line 460
    sget-object v3, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v3, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    iget-object v4, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v4}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->findConfig(Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->removeChild(Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V

    .line 462
    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->saveConfig()V

    move-object v3, v6

    .line 463
    goto :goto_0

    .line 464
    :cond_2
    const-string v3, "onFocus"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 465
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onFocus()V

    move-object v3, v6

    .line 466
    goto :goto_0

    .line 467
    :cond_3
    const-string v3, "onDefocus"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 468
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onDefocus()V

    move-object v3, v6

    .line 469
    goto :goto_0

    .line 470
    :cond_4
    const-string v3, "onResume"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 471
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onResume()V

    move-object v3, v6

    .line 472
    goto :goto_0

    .line 473
    :cond_5
    const-string v3, "onPause"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 474
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onPause()V

    move-object v3, v6

    .line 475
    goto :goto_0

    .line 476
    :cond_6
    const-string v3, "onStart"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 477
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onStart()V

    move-object v3, v6

    .line 478
    goto :goto_0

    .line 479
    :cond_7
    const-string v3, "onStop"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 480
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onStop()V

    move-object v3, v6

    .line 481
    goto/16 :goto_0

    .line 482
    :cond_8
    const-string v3, "onMoved"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 483
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onMoved()V

    move-object v3, v6

    .line 484
    goto/16 :goto_0

    .line 485
    :cond_9
    const-string v3, "getContentView"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 486
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getContentView()Landroid/view/View;

    move-result-object v3

    goto/16 :goto_0

    .line 487
    :cond_a
    const-string v3, "getSpanXY"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 488
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getSpanXY()[I

    move-result-object v3

    goto/16 :goto_0

    .line 489
    :cond_b
    const-string v3, "configure"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 490
    check-cast p2, Landroid/content/Context;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->configure(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 491
    .restart local p2
    :cond_c
    const-string v3, "customize"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 492
    check-cast p2, Landroid/os/Bundle;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->customize(Landroid/os/Bundle;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0

    .line 493
    .restart local p2
    :cond_d
    const-string v3, "onConfigured"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 494
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onConfigured(I)V

    move-object v3, v6

    .line 495
    goto/16 :goto_0

    .line 496
    .restart local p2
    :cond_e
    const-string v3, "setId"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 497
    check-cast p2, Ljava/util/UUID;

    .end local p2
    iput-object p2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    .line 498
    sget-object v3, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v6

    .line 499
    goto/16 :goto_0

    .line 500
    .restart local p2
    :cond_f
    const-string v3, "getSnapshot"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 501
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getSnapshot()Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_0

    .line 502
    :cond_10
    const-string v3, "getType"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 503
    iget v3, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 504
    :cond_11
    const-string v3, "setActivity"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 505
    check-cast p2, Landroid/app/Activity;

    .end local p2
    iput-object p2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mActivity:Landroid/app/Activity;

    move-object v3, v6

    .line 506
    goto/16 :goto_0

    .line 507
    .restart local p2
    :cond_12
    const-string v3, "getFrameworkVersion"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 508
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getFrameworkVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 510
    :cond_13
    const-string v3, "AdvWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown function: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 511
    goto/16 :goto_0
.end method

.method public configure(Landroid/content/Context;)I
    .locals 1
    .parameter "hostContext"

    .prologue
    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public customize(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "settings"

    .prologue
    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected getConfig(Z)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    .locals 3
    .parameter "create"

    .prologue
    .line 345
    iget-object v1, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->findConfig(Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v0

    .line 346
    .local v0, ret:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 347
    new-instance v0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    .end local v0           #ret:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    const-string v1, "widget"

    sget-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;-><init>(Ljava/lang/String;Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V

    .line 348
    .restart local v0       #ret:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_0
    return-object v0
.end method

.method public abstract getContentView()Landroid/view/View;
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getFrameworkVersion()I
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0x110

    return v0
.end method

.method public final getId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method protected getInstanceCount()I
    .locals 1

    .prologue
    .line 379
    sget-object v0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->getChildCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSnapshot()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 305
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 306
    const/4 v2, 0x0

    .line 310
    :goto_0
    return-object v2

    .line 308
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 309
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    move-object v2, v0

    .line 310
    goto :goto_0
.end method

.method public abstract getSpanXY()[I
.end method

.method public abstract init(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;)V
.end method

.method public onConfigured(I)V
    .locals 0
    .parameter "response"

    .prologue
    .line 266
    return-void
.end method

.method public abstract onCreate(Landroid/content/Context;)V
.end method

.method public abstract onDefocus()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onFocus()V
.end method

.method public onMoved()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method protected saveConfig(Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 363
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->findConfig(Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v0

    .line 365
    .local v0, oldData:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    if-eqz v0, :cond_0

    .line 366
    sget-object v1, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->removeChild(Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V

    .line 368
    :cond_0
    sget-object v1, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->addChild(Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V

    .line 369
    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->saveConfig()V

    .line 370
    return-void
.end method

.method protected setType(I)V
    .locals 0
    .parameter "newType"

    .prologue
    .line 128
    iput p1, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mType:I

    .line 129
    return-void
.end method
