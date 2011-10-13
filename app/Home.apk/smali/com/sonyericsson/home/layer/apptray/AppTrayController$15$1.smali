.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/ResourceLoaderUtil$ResourceLoaderUtilListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->onPackageAdded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 895
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourcesLoaded()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->access$4100(Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->sort(Ljava/util/Comparator;)V

    .line 899
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$15;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 900
    return-void
.end method
