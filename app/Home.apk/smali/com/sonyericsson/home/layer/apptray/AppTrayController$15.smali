.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;
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
    .line 890
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$4100(Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 890
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->handlePackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 890
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->handlePackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method private handlePackageAdded(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 909
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2400(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/LayerController$Syncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getAllInfo()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/home/layer/LayerController;->syncPackageAdded(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 911
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$4000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    .line 912
    return-void
.end method

.method private handlePackageChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 931
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2400(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/LayerController$Syncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getAllInfo()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/sonyericsson/home/layer/LayerController;->syncPackageChanged(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$4000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    .line 934
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 893
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$4200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->waitForResourcesLoaded(Ljava/util/Collection;Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;)V

    .line 906
    :goto_0
    return-void

    .line 903
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->handlePackageAdded(Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$4200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/ResourceLoaderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$2;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$2;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/home/layer/ResourceLoaderUtil;->waitForResourcesLoaded(Ljava/util/Collection;Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;)V

    .line 928
    :goto_0
    return-void

    .line 925
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->handlePackageChanged(Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 937
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2400(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/LayerController$Syncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getAllInfo()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/home/layer/LayerController;->syncPackageRemoved(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->sort(Ljava/util/Comparator;)V

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$4000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    .line 943
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 944
    return-void
.end method
