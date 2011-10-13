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

.field private static sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mId:Ljava/util/UUID;

.field private mType:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/Stub;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mType:I

    .line 103
    return-void
.end method

.method private findConfig(Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    .locals 4
    .parameter "id"

    .prologue
    .line 410
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, sid:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v3}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 412
    sget-object v3, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->getChild(I)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v0

    .line 413
    .local v0, child:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    const-string v3, "uuid"

    invoke-virtual {v0, v3}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 417
    .end local v0           #child:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    :goto_1
    return-object v3

    .line 411
    .restart local v0       #child:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v0           #child:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static reset_test(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "diskAsWell"

    .prologue
    .line 517
    const/4 v2, 0x0

    sput-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    .line 518
    if-eqz p1, :cond_0

    .line 519
    const-string v2, "files"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 520
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 521
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 525
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private restoreConfig()V
    .locals 5

    .prologue
    .line 385
    sget-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    if-nez v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mContext:Landroid/content/Context;

    const-string v3, "files"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 388
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 389
    .local v1, f:Ljava/io/File;
    invoke-static {v1}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->readDocument(Ljava/io/File;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v2

    sput-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    .line 390
    sget-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    if-nez v2, :cond_0

    .line 392
    new-instance v2, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    const-string v3, "widgetconfig"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;-><init>(Ljava/lang/String;Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V

    sput-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    .line 398
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->findConfig(Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v2

    if-nez v2, :cond_1

    .line 399
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getConfig(Z)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    .line 400
    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->saveConfig()V

    .line 402
    :cond_1
    return-void
.end method

.method private saveConfig()V
    .locals 5

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "files"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 425
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 426
    .local v1, f:Ljava/io/File;
    sget-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->writeDocumentTo(Ljava/io/File;)Z

    .line 427
    return-void
.end method


# virtual methods
.method protected call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "funcName"
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 436
    const-string v3, "init"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 438
    .local v1, comm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;

    invoke-direct {v2, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;-><init>(Ljava/util/Map;)V

    .line 439
    .local v2, hostProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;
    iget-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;->setId(Ljava/util/UUID;)V

    .line 440
    invoke-virtual {p0, v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->init(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;)V

    move-object v3, v6

    .line 504
    .end local v1           #comm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #hostProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;
    .end local p2
    :goto_0
    return-object v3

    .line 442
    .restart local p2
    :cond_0
    const-string v3, "remove"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 443
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->remove()V

    .line 444
    sget-object v3, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    iget-object v4, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v4}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->findConfig(Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->removeChild(Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V

    .line 445
    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->saveConfig()V

    move-object v3, v6

    .line 446
    goto :goto_0

    .line 447
    :cond_1
    const-string v3, "onCreate"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 449
    check-cast p2, Landroid/content/Context;

    .end local p2
    iput-object p2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mContext:Landroid/content/Context;

    .line 451
    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->restoreConfig()V

    .line 453
    iget-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onCreate(Landroid/content/Context;)V

    move-object v3, v6

    .line 454
    goto :goto_0

    .line 455
    .restart local p2
    :cond_2
    const-string v3, "onDestroy"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 456
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onDestroy()V

    move-object v3, v6

    .line 457
    goto :goto_0

    .line 458
    :cond_3
    const-string v3, "onFocus"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 459
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onFocus()V

    move-object v3, v6

    .line 460
    goto :goto_0

    .line 461
    :cond_4
    const-string v3, "onDefocus"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 462
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onDefocus()V

    move-object v3, v6

    .line 463
    goto :goto_0

    .line 464
    :cond_5
    const-string v3, "onResume"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 465
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onResume()V

    move-object v3, v6

    .line 466
    goto :goto_0

    .line 467
    :cond_6
    const-string v3, "onPause"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 468
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onPause()V

    move-object v3, v6

    .line 469
    goto :goto_0

    .line 470
    :cond_7
    const-string v3, "onStart"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 471
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onStart()V

    move-object v3, v6

    .line 472
    goto :goto_0

    .line 473
    :cond_8
    const-string v3, "onStop"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 474
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onStop()V

    move-object v3, v6

    .line 475
    goto/16 :goto_0

    .line 476
    :cond_9
    const-string v3, "onMoved"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 477
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onMoved()V

    move-object v3, v6

    .line 478
    goto/16 :goto_0

    .line 479
    :cond_a
    const-string v3, "getContentView"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 480
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getContentView()Landroid/view/View;

    move-result-object v3

    goto/16 :goto_0

    .line 481
    :cond_b
    const-string v3, "getSpanXY"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 482
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getSpanXY()[I

    move-result-object v3

    goto/16 :goto_0

    .line 483
    :cond_c
    const-string v3, "configure"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 484
    check-cast p2, Landroid/content/Context;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->configure(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 485
    .restart local p2
    :cond_d
    const-string v3, "customize"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 486
    check-cast p2, Landroid/os/Bundle;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->customize(Landroid/os/Bundle;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0

    .line 487
    .restart local p2
    :cond_e
    const-string v3, "onConfigured"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 488
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->onConfigured(I)V

    move-object v3, v6

    .line 489
    goto/16 :goto_0

    .line 490
    .restart local p2
    :cond_f
    const-string v3, "setId"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 491
    check-cast p2, Ljava/util/UUID;

    .end local p2
    iput-object p2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    move-object v3, v6

    .line 492
    goto/16 :goto_0

    .line 493
    .restart local p2
    :cond_10
    const-string v3, "getSnapshot"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 494
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getSnapshot()Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_0

    .line 495
    :cond_11
    const-string v3, "getType"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 496
    iget v3, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 497
    :cond_12
    const-string v3, "setActivity"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 498
    new-instance v3, Ljava/lang/ref/WeakReference;

    check-cast p2, Landroid/app/Activity;

    .end local p2
    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mActivity:Ljava/lang/ref/WeakReference;

    move-object v3, v6

    .line 499
    goto/16 :goto_0

    .line 500
    .restart local p2
    :cond_13
    const-string v3, "getFrameworkVersion"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 501
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getFrameworkVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 503
    :cond_14
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

    .line 504
    goto/16 :goto_0
.end method

.method public configure(Landroid/content/Context;)I
    .locals 1
    .parameter "hostContext"

    .prologue
    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public customize(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "settings"

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method protected getConfig(Z)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    .locals 3
    .parameter "create"

    .prologue
    .line 336
    iget-object v1, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->findConfig(Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v0

    .line 337
    .local v0, ret:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 338
    new-instance v0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    .end local v0           #ret:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    const-string v1, "widget"

    sget-object v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;-><init>(Ljava/lang/String;Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V

    .line 340
    .restart local v0       #ret:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    return-object v0
.end method

.method public abstract getContentView()Landroid/view/View;
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getFrameworkVersion()I
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x120

    return v0
.end method

.method public final getId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method protected getInstanceCount()I
    .locals 1

    .prologue
    .line 371
    sget-object v0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x1

    .line 375
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
    .line 313
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 314
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 315
    const/4 v2, 0x0

    .line 319
    :goto_0
    return-object v2

    .line 317
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 318
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    move-object v2, v0

    .line 319
    goto :goto_0
.end method

.method public abstract getSpanXY()[I
.end method

.method public init(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHostProxy;)V
    .locals 0
    .parameter "hostProxy"

    .prologue
    .line 134
    return-void
.end method

.method public onConfigured(I)V
    .locals 0
    .parameter "response"

    .prologue
    .line 275
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
    .line 252
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

.method public remove()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method protected saveConfig(Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 355
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->findConfig(Ljava/util/UUID;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v0

    .line 357
    .local v0, oldData:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    if-eqz v0, :cond_0

    .line 358
    sget-object v1, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->removeChild(Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V

    .line 360
    :cond_0
    sget-object v1, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->sConfig:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->addChild(Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V

    .line 361
    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->saveConfig()V

    .line 362
    return-void
.end method

.method protected setType(I)V
    .locals 0
    .parameter "newType"

    .prologue
    .line 124
    iput p1, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidget;->mType:I

    .line 125
    return-void
.end method
