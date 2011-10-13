.class Lcom/sonyericsson/home/layer/folder/FolderController$2;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/folder/FolderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Landroid/view/ViewStub;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/InfoGroupManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

.field final synthetic val$adapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/content/Context;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->val$resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iput-object p4, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->val$adapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 215
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$400(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 218
    .local v5, res:Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$600(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewStub;

    invoke-virtual {v7}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$602(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/view/View;)Landroid/view/View;

    .line 221
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    const v8, 0x7f090008

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$702(Lcom/sonyericsson/home/layer/folder/FolderController;I)I

    .line 222
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    const v8, 0x7f090002

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$802(Lcom/sonyericsson/home/layer/folder/FolderController;I)I

    .line 223
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    const v8, 0x7f020022

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$902(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 224
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    const v8, 0x7f020027

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1002(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 225
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    const v8, 0x7f090009

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1102(Lcom/sonyericsson/home/layer/folder/FolderController;I)I

    .line 226
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    const/high16 v8, 0x7f09

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1202(Lcom/sonyericsson/home/layer/folder/FolderController;I)I

    .line 227
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    iget-object v8, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$400(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v9}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$400(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1302(Lcom/sonyericsson/home/layer/folder/FolderController;I)I

    .line 233
    new-instance v2, Lcom/sonyericsson/grid/GridSize;

    invoke-direct {v2}, Lcom/sonyericsson/grid/GridSize;-><init>()V

    .line 234
    .local v2, gridSize:Lcom/sonyericsson/grid/GridSize;
    const v7, 0x7f0a0003

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v2, Lcom/sonyericsson/grid/GridSize;->cols:I

    .line 235
    const v7, 0x7fffffff

    iput v7, v2, Lcom/sonyericsson/grid/GridSize;->rows:I

    .line 236
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    new-instance v8, Lcom/sonyericsson/grid/Grid;

    const v9, 0x7f09000d

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x7f09000e

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-direct {v8, v9, v10, v2}, Lcom/sonyericsson/grid/Grid;-><init>(IILcom/sonyericsson/grid/GridSize;)V

    invoke-static {v7, v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1402(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/grid/Grid;)Lcom/sonyericsson/grid/Grid;

    .line 239
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    new-instance v8, Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v9}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1400(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/grid/Grid;

    move-result-object v9

    iget-object v10, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v10}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1600(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;-><init>(Lcom/sonyericsson/grid/Grid;Lcom/sonyericsson/home/layer/InfoGroupManager;)V

    invoke-static {v7, v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1502(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/layer/folder/FolderModelManager;)Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    .line 242
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    iget-object v8, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$400(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/home/bidi/Utils;->isRtlAlphabet(Landroid/content/Context;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1702(Lcom/sonyericsson/home/layer/folder/FolderController;Z)Z

    .line 243
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1700(Lcom/sonyericsson/home/layer/folder/FolderController;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->setDoMirror(Z)V

    .line 245
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    new-instance v8, Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    iget-object v9, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->val$context:Landroid/content/Context;

    iget-object v10, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->val$resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v11, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->val$adapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v12, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v12}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    move-result-object v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/sonyericsson/home/layer/folder/FolderAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/folder/FolderModelManager;)V

    invoke-static {v7, v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$102(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/layer/folder/FolderAdapter;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    .line 247
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    new-instance v8, Lcom/sonyericsson/home/layer/LayerRendererFactory;

    invoke-direct {v8}, Lcom/sonyericsson/home/layer/LayerRendererFactory;-><init>()V

    invoke-static {v7, v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1802(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/layer/LayerRendererFactory;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    .line 250
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 251
    .local v6, stiffness:Landroid/util/TypedValue;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 252
    .local v0, damping:Landroid/util/TypedValue;
    const v7, 0x7f0b0002

    invoke-virtual {v5, v7, v6, v13}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 253
    const v7, 0x7f0b0003

    invoke-virtual {v5, v7, v0, v13}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 254
    new-instance v1, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v1}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    .line 255
    .local v1, dynamics:Lcom/sonyericsson/util/SpringDynamics;
    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v7

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v8

    invoke-virtual {v1, v7, v8}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 256
    const/high16 v7, 0x4000

    invoke-virtual {v1, v7}, Lcom/sonyericsson/util/SpringDynamics;->setFriction(F)V

    .line 258
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$600(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/sonyericsson/home/layer/folder/FolderController$2$1;

    invoke-direct {v8, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$2$1;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController$2;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v8, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$600(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f0c001a

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-static {v8, v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$502(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 266
    iget-object v8, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$600(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f0c001b

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    invoke-static {v8, v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1902(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 267
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    iget-object v8, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1900(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/RelativeLayout;

    move-result-object v8

    const v9, 0x7f0c001f

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2002(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/view/View;)Landroid/view/View;

    .line 268
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    iget-object v8, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1900(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/RelativeLayout;

    move-result-object v8

    const v9, 0x7f0c0020

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2102(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/view/View;)Landroid/view/View;

    .line 269
    iget-object v8, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$600(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f0c001c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v8, v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2202(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView;

    .line 270
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/sonyericsson/paneview/PaneView;->setScrollDynamics(Lcom/sonyericsson/util/Dynamics;)V

    .line 271
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1800(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/paneview/PaneView;->setRendererFactory(Lcom/sonyericsson/paneview/RendererFactory;)V

    .line 272
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2300(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 273
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2400(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 274
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/paneview/PaneView;->setPaneViewTouchListener(Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;)V

    .line 280
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v7

    sget v8, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    new-instance v9, Ljava/lang/ref/WeakReference;

    iget-object v10, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v10}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2600(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/transfer/TransferTarget;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 282
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v7

    const v8, 0x7f020042

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/paneview/PaneView;->setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object v8, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$600(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f0c001e

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v8, v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$202(Lcom/sonyericsson/home/layer/folder/FolderController;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 289
    new-instance v4, Lcom/sonyericsson/home/layer/folder/FolderController$2$2;

    invoke-direct {v4, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$2$2;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController$2;)V

    .line 303
    .local v4, labelLongClickListener:Landroid/view/View$OnLongClickListener;
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$200(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 304
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$200(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 305
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$600(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0c001d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 307
    .local v3, labelClickView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sonyericsson/home/bidi/Utils;->setDirectionalityLeftToRight(Landroid/view/ViewGroup;)V

    .line 308
    invoke-virtual {v3, v14}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    .line 309
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 310
    return-void
.end method
