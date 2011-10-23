.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createOnPackageUpdateListener()Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    .line 1053
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1900(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16$1;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16$1;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->waitForResourcesLoaded(Ljava/util/Collection;Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;)V

    .line 1063
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    .line 1067
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1900(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16$2;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16$2;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->waitForResourcesLoaded(Ljava/util/Collection;Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;)V

    .line 1077
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    .line 1081
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1900(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16$3;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16$3;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->waitForResourcesLoaded(Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;)V

    .line 1088
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 1092
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 1096
    return-void
.end method
