.class Lcom/sonyericsson/home/layer/appshare/DropZoneController$3;
.super Ljava/lang/Object;
.source "DropZoneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/appshare/DropZoneController;->checkCustomization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

.field final synthetic val$gcm:Lcom/sonyericsson/home/GlobalCustomizationManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/appshare/DropZoneController;Lcom/sonyericsson/home/GlobalCustomizationManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$3;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$3;->val$gcm:Lcom/sonyericsson/home/GlobalCustomizationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$3;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$3;->val$gcm:Lcom/sonyericsson/home/GlobalCustomizationManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/GlobalCustomizationManager;->isAppShareEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$500(Lcom/sonyericsson/home/layer/appshare/DropZoneController;Z)V

    .line 264
    return-void
.end method
