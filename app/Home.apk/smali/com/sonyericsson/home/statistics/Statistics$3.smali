.class Lcom/sonyericsson/home/statistics/Statistics$3;
.super Ljava/lang/Object;
.source "Statistics.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/statistics/Statistics;->createOnPackageUpdateListener()Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/statistics/Statistics;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/statistics/Statistics;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/statistics/Statistics;->access$402(Lcom/sonyericsson/home/statistics/Statistics;Z)Z

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v0}, Lcom/sonyericsson/home/statistics/Statistics;->access$100(Lcom/sonyericsson/home/statistics/Statistics;)Lcom/sonyericsson/home/layer/LayerController$Syncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v1}, Lcom/sonyericsson/home/statistics/Statistics;->access$200(Lcom/sonyericsson/home/statistics/Statistics;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v2}, Lcom/sonyericsson/home/statistics/Statistics;->access$000(Lcom/sonyericsson/home/statistics/Statistics;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/home/layer/LayerController;->syncPackageAdded(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/statistics/Statistics;->access$402(Lcom/sonyericsson/home/statistics/Statistics;Z)Z

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v0}, Lcom/sonyericsson/home/statistics/Statistics;->access$300(Lcom/sonyericsson/home/statistics/Statistics;)V

    .line 240
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/statistics/Statistics;->access$402(Lcom/sonyericsson/home/statistics/Statistics;Z)Z

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v0}, Lcom/sonyericsson/home/statistics/Statistics;->access$100(Lcom/sonyericsson/home/statistics/Statistics;)Lcom/sonyericsson/home/layer/LayerController$Syncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v1}, Lcom/sonyericsson/home/statistics/Statistics;->access$200(Lcom/sonyericsson/home/statistics/Statistics;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v2}, Lcom/sonyericsson/home/statistics/Statistics;->access$000(Lcom/sonyericsson/home/statistics/Statistics;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/sonyericsson/home/layer/LayerController;->syncPackageChanged(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/statistics/Statistics;->access$402(Lcom/sonyericsson/home/statistics/Statistics;Z)Z

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v0}, Lcom/sonyericsson/home/statistics/Statistics;->access$300(Lcom/sonyericsson/home/statistics/Statistics;)V

    .line 248
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v0}, Lcom/sonyericsson/home/statistics/Statistics;->access$100(Lcom/sonyericsson/home/statistics/Statistics;)Lcom/sonyericsson/home/layer/LayerController$Syncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v1}, Lcom/sonyericsson/home/statistics/Statistics;->access$200(Lcom/sonyericsson/home/statistics/Statistics;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/home/layer/LayerController;->syncPackageRemoved(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v0}, Lcom/sonyericsson/home/statistics/Statistics;->access$300(Lcom/sonyericsson/home/statistics/Statistics;)V

    .line 253
    return-void
.end method
