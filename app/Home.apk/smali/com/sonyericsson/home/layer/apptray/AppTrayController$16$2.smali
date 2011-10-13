.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$16$2;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;->onPackageChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16$2;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourcesLoaded()V
    .locals 4

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16$2;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1600(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16$2;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16$2;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16$2;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/home/data/SyncHelper;->syncPackageChanged(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V

    .line 1075
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16$2;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$16;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    .line 1076
    return-void
.end method
