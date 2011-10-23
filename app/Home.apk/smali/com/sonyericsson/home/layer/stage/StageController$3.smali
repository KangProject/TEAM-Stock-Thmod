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
    .line 270
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadCompleted(Lcom/sonyericsson/storage/Root;)V
    .locals 8
    .parameter "root"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-class v5, Ljava/util/ArrayList;

    .line 274
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sonyericsson/home/layer/stage/StageController;->access$402(Lcom/sonyericsson/home/layer/stage/StageController;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    if-eqz p1, :cond_0

    const-string v3, "version"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Lcom/sonyericsson/storage/Root;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 277
    const-class v3, Ljava/util/ArrayList;

    const-class v3, Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Lcom/sonyericsson/storage/Root;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 281
    .restart local v1       #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    :cond_0
    const/4 v2, 0x0

    .line 282
    .local v2, modelChanged:Z
    if-nez v1, :cond_2

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    const/4 v3, 0x4

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 290
    .restart local v1       #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    new-instance v0, Lcom/sonyericsson/home/layer/stage/StageCustomization;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$500(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/stage/StageController;->access$600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$700(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v5

    invoke-direct {v0, v3, v1, v4, v5}, Lcom/sonyericsson/home/layer/stage/StageCustomization;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    .line 293
    .local v0, cust:Lcom/sonyericsson/home/layer/stage/StageCustomization;
    const-string v3, "/etc/customization/settings/com/sonyericsson/home/default_settings_stage.xml"

    invoke-virtual {v0, v3, v6}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->applyCustomization(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 296
    const v3, 0x7f050005

    invoke-virtual {v0, v3, v6}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->applyCustomization(IZ)Z

    .line 299
    :cond_1
    invoke-static {}, Lcom/sonyericsson/home/layer/stage/StageController;->access$800()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->applyCustomization(Landroid/net/Uri;Z)Z

    .line 301
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/stage/StageController;->access$900(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->cacheShortcuts(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 302
    const/4 v2, 0x1

    .line 305
    .end local v0           #cust:Lcom/sonyericsson/home/layer/stage/StageCustomization;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$3;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3, v1, v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1000(Lcom/sonyericsson/home/layer/stage/StageController;Ljava/util/ArrayList;Z)V

    .line 306
    return-void
.end method
