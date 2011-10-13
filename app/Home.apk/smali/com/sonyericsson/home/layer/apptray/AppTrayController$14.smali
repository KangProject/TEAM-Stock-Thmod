.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createOnReadCompletedCallback()Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;
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
    .line 801
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadCompleted(Lcom/sonyericsson/storage/Root;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2200(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$14$1;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController$14;Lcom/sonyericsson/storage/Root;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnLoadCompletedCallback(Ljava/lang/Runnable;)V

    .line 885
    return-void
.end method
