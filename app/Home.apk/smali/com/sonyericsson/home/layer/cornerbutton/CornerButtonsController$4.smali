.class Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;
.super Ljava/lang/Object;
.source "CornerButtonsController.java"

# interfaces
.implements Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->readStorageAndSync(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

.field final synthetic val$resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;->val$resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadCompleted(Lcom/sonyericsson/storage/Root;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$902(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$100(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4$1;-><init>(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;Lcom/sonyericsson/storage/Root;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnLoadCompletedCallback(Ljava/lang/Runnable;)V

    .line 523
    return-void
.end method
