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
    .line 236
    iput-object p1, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/statistics/Statistics;->access$502(Lcom/sonyericsson/home/statistics/Statistics;Z)Z

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v0}, Lcom/sonyericsson/home/statistics/Statistics;->access$100(Lcom/sonyericsson/home/statistics/Statistics;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v1}, Lcom/sonyericsson/home/statistics/Statistics;->access$200(Lcom/sonyericsson/home/statistics/Statistics;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v2}, Lcom/sonyericsson/home/statistics/Statistics;->access$300(Lcom/sonyericsson/home/statistics/Statistics;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/home/data/SyncHelper;->syncPackageAdded(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/statistics/Statistics;->access$502(Lcom/sonyericsson/home/statistics/Statistics;Z)Z

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v0}, Lcom/sonyericsson/home/statistics/Statistics;->access$400(Lcom/sonyericsson/home/statistics/Statistics;)V

    .line 244
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/statistics/Statistics;->access$502(Lcom/sonyericsson/home/statistics/Statistics;Z)Z

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v0}, Lcom/sonyericsson/home/statistics/Statistics;->access$100(Lcom/sonyericsson/home/statistics/Statistics;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v1}, Lcom/sonyericsson/home/statistics/Statistics;->access$200(Lcom/sonyericsson/home/statistics/Statistics;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v2}, Lcom/sonyericsson/home/statistics/Statistics;->access$300(Lcom/sonyericsson/home/statistics/Statistics;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/sonyericsson/home/data/SyncHelper;->syncPackageChanged(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/statistics/Statistics;->access$502(Lcom/sonyericsson/home/statistics/Statistics;Z)Z

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v0}, Lcom/sonyericsson/home/statistics/Statistics;->access$400(Lcom/sonyericsson/home/statistics/Statistics;)V

    .line 252
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v0}, Lcom/sonyericsson/home/statistics/Statistics;->access$100(Lcom/sonyericsson/home/statistics/Statistics;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v1}, Lcom/sonyericsson/home/statistics/Statistics;->access$200(Lcom/sonyericsson/home/statistics/Statistics;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/home/data/SyncHelper;->syncPackageRemoved(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$3;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v0}, Lcom/sonyericsson/home/statistics/Statistics;->access$400(Lcom/sonyericsson/home/statistics/Statistics;)V

    .line 257
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 261
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 265
    return-void
.end method
