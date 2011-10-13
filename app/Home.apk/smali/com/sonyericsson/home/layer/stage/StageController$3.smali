.class Lcom/sonyericsson/home/layer/stage/StageController$3;
.super Ljava/lang/Object;
.source "StageController.java"

# interfaces
.implements Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/stage/StageController;->createOnReadCompletedCallback()Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/stage/StageController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/stage/StageController;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadCompleted(Lcom/sonyericsson/storage/Root;)V
    .locals 12
    .parameter "root"

    .prologue
    const-wide/16 v10, 0x96

    const/high16 v9, 0x4020

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-class v5, Ljava/util/ArrayList;

    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    if-eqz p1, :cond_0

    const-string v3, "version"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Lcom/sonyericsson/storage/Root;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 257
    const-class v3, Ljava/util/ArrayList;

    const-class v3, Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Lcom/sonyericsson/storage/Root;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 261
    .restart local v1       #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    :cond_0
    if-nez v1, :cond_1

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    const/4 v3, 0x4

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    .restart local v1       #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    new-instance v0, Lcom/sonyericsson/home/customization/StageCustomization;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$400(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/stage/StageController;->access$500(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v5

    invoke-direct {v0, v3, v1, v4, v5}, Lcom/sonyericsson/home/customization/StageCustomization;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    .line 272
    .local v0, cust:Lcom/sonyericsson/home/customization/StageCustomization;
    const v3, 0x7f050002

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/home/customization/StageCustomization;->applyCustomization(IZ)V

    .line 273
    invoke-static {}, Lcom/sonyericsson/home/layer/stage/StageController;->access$700()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Lcom/sonyericsson/home/customization/StageCustomization;->applyCustomization(Landroid/net/Uri;Z)V

    .line 275
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$500(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/stage/StageController;->access$800(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->cacheShortcuts(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 277
    .end local v0           #cust:Lcom/sonyericsson/home/customization/StageCustomization;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->setModel(Ljava/util/ArrayList;)V

    .line 279
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$900(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$902(Lcom/sonyericsson/home/layer/stage/StageController;Landroid/view/View;)Landroid/view/View;

    .line 282
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$900(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0c002f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v4, v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1002(Lcom/sonyericsson/home/layer/stage/StageController;Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView;

    .line 283
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1100(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 284
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1200(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 290
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    sget v4, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v6}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1300(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/transfer/TransferTarget;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 292
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1400(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 293
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/stage/StageController;->access$400(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/sonyericsson/paneview/PaneView;->setRejectPaddingTouch(Z)V

    .line 296
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/home/layer/stage/StageController$3$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/home/layer/stage/StageController$3$1;-><init>(Lcom/sonyericsson/home/layer/stage/StageController$3;)V

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V

    .line 315
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$900(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0c002e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/layer/stage/StageGlowView;

    invoke-static {v4, v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1502(Lcom/sonyericsson/home/layer/stage/StageController;Lcom/sonyericsson/home/layer/stage/StageGlowView;)Lcom/sonyericsson/home/layer/stage/StageGlowView;

    .line 316
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1500(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageGlowView;

    move-result-object v3

    const v4, 0x7f02004e

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/layer/stage/StageGlowView;->setGlowMask(I)V

    .line 318
    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$900(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0c0030

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/layer/HintView;

    invoke-static {v4, v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1602(Lcom/sonyericsson/home/layer/stage/StageController;Lcom/sonyericsson/home/layer/HintView;)Lcom/sonyericsson/home/layer/HintView;

    .line 319
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/HintView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 321
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$400(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 323
    .local v2, stageHeight:I
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v2

    invoke-direct {v4, v7, v7, v7, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-static {v3, v4}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1702(Lcom/sonyericsson/home/layer/stage/StageController;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 324
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1700(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/view/animation/Animation;

    move-result-object v3

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4, v9}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 325
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1700(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 326
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v2

    invoke-direct {v4, v7, v7, v5, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-static {v3, v4}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1802(Lcom/sonyericsson/home/layer/stage/StageController;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 327
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1800(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/view/animation/Animation;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 328
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1800(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/view/animation/Animation;

    move-result-object v3

    const-wide/16 v4, 0x4b

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 329
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1800(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 330
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1800(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/view/animation/Animation;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/home/layer/stage/StageController$3$2;

    invoke-direct {v4, p0}, Lcom/sonyericsson/home/layer/stage/StageController$3$2;-><init>(Lcom/sonyericsson/home/layer/stage/StageController$3;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 354
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$800(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->preCacheShortcuts(Ljava/util/Collection;)V

    .line 356
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    new-instance v4, Lcom/sonyericsson/home/layer/stage/StageAdapter;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v6}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/AdapterHelper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sonyericsson/home/layer/stage/StageAdapter;-><init>(Lcom/sonyericsson/home/layer/stage/StageModelManager;Lcom/sonyericsson/home/layer/AdapterHelper;)V

    invoke-static {v3, v4}, Lcom/sonyericsson/home/layer/stage/StageController;->access$202(Lcom/sonyericsson/home/layer/stage/StageController;Lcom/sonyericsson/home/layer/stage/StageAdapter;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    .line 357
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/stage/StageController;->access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V

    .line 359
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3, v8}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2102(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z

    .line 360
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$300(Lcom/sonyericsson/home/layer/stage/StageController;)V

    .line 362
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 363
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;->onLoadCompleted()V

    .line 365
    :cond_2
    return-void
.end method
